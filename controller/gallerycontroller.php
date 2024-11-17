<?php

//require files
require '../require/modules.php';

//access_url 
if (isset($_REQUEST['access_url']) == null) {
 echo "<h1>ERROR</h1>
 <p>Invalid OUTPUT request is received!</p>
 <a href='../index.php'>Back to Root</a>";
 die();
} else {
 $access_url = $_REQUEST['access_url'];
}

//upload images
if (isset($_POST['UploadImages'])) {

 $PhotoGalleryCreatedAt = date("d M, Y");
 $PhotoGalleryName = POST("PhotoGalleryName");
 $PhotoGalleryCaption = POST("PhotoGalleryCaption");
 $PhotoGalleryDetails = POST("PhotoGalleryDetails");

 $pre = "Gallery" . rand(0, 99999999999999);
 $ref = "$i";
 $path = "../storage/gallery/";
 $temp = explode(".", $_FILES['PhotoGalleryFile']['name']);
 $PhotoGalleryFile = "$pre" . "_" . $ref . "_" . date("d_M_Y_h_m_s") . '.' . end($temp);

 $allowedfiles = array('jpg', 'jpeg', 'png', 'gif', 'pdf', 'doc', 'docx', 'xls', 'xlsx', 'ppt', 'pptx', 'txt', 'zip', 'rar', 'gz', 'tar', '7z');
 $UploadFileType = pathinfo($PhotoGalleryFile, PATHINFO_EXTENSION);
 if (!in_array($UploadFileType, $allowedfiles)) {
  $PhotoGalleryFile = $PhotoGalleryFile;
 } else {
  $PhotoGalleryFile = "$pre" . "_" . $ref . "_" . date("d_M_Y_h_m_s") . '.' . end($temp);
  move_uploaded_file($_FILES['PhotoGalleryFile']['tmp_name'], $path . $PhotoGalleryFile);
 }

 $Save = SAVE("photogallery", ["PhotoGalleryFile", "PhotoGalleryCreatedAt", "PhotoGalleryName", "PhotoGalleryCaption", "PhotoGalleryDetails"]);

 RESPONSE($Save, "Gallery Images are uploaded Successfully!", "Unable to Upload the files at the moment");

 //delete images 
} else if (isset($_GET['del_gallery'])) {
 $PhotoGalleryId = SECURE($_GET['del_gallery'], "d");
 $access_url = SECURE($_GET['access_url'], "d");
 $delete = DELETE("DELETE from photogallery where PhotoGalleryId='$PhotoGalleryId'");
 RESPONSE($delete, "Photo Deleted Successfully!", "Unable to delete photo from the gallery!");

 //delete bulk images
} else if (isset($_POST['DeleteImages'])) {
 foreach ($_POST['PhotoGalleryId'] as $key => $value) {
  $PhotoGalleryId = SECURE($_POST["PhotoGalleryId"]["$key"], "d");
  $delete = DELETE("DELETE from photogallery where PhotoGalleryId='$PhotoGalleryId'");
 }
 RESPONSE($delete, "Selected Photos are Deleted Successfully!", "Unable to delete selected photo from the gallery!");
}
