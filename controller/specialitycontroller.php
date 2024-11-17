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

//create new specialitycontroller
if (isset($_POST['CreateNewSpeciality'])) {
 include 'req/REQ_specialities.php';
 $SpecialityImage = UPLOAD_FILES("../storage/speciality", false, "$SpecialityName", "$SpecialitiesStatus", "SpecialityImage");
 $SpecialitiesCreatedAt = date("d M, Y");
 $Save = SAVE("specialities", ["SpecialityName", "SpecialityImage", "SpecialityDescriptions", "SpecialitiesStatus", "SpecialitiesCreatedAt"]);
 RESPONSE($Save, "New Speciality is created successfully!", "Unable to create new speciality at the moment!");

 //update specialities
} elseif (isset($_POST['UpdateSpecialities'])) {
 include 'req/REQ_specialities.php';
 $Specialitiesid = SECURE($_POST['UpdateSpecialities'], "d");
 $SpecialitiesUpdatedAt = date("d M, Y");

 $Update = UPDATE("UPDATE specialities SET SpecialityName='$SpecialityName', SpecialityDescriptions='$SpecialityDescriptions', SpecialitiesStatus='$SpecialitiesStatus', SpecialitiesUpdatedAt='$SpecialitiesUpdatedAt' where Specialitiesid='$Specialitiesid'");
 RESPONSE($Update, "Specialities are updated successfully!", "Unable to update specialities at the moment!");

 //update specialties feature image
} elseif (isset($_POST['UpdateSpeciality'])) {
 $UpdateSpeciality = $_POST['UpdateSpeciality'];
 $access_validation = SECURE($_POST['access_validation'], "d");
 $SpecialityImage = UPLOAD_FILES("../storage/speciality", $CurrentFile, $UpdateSpeciality, $access_validation, "SpecialityImage");

 $Update = UPDATE("UPDATE specialities SET SpecialityImage='$SpecialityImage' where Specialitiesid='$access_validation'");
 RESPONSE($Update, "Speciality Image is update successfully!", "Unable to update speciality image!");

 //delete speciality
} elseif (isset($_GET['del_speciality'])) {
 $Specialitiesid = SECURE($_GET['del_speciality'], "d");
 $access_url = SECURE($_GET['access_url'], "d");
 $Delete = DELETE("DELETE from specialities where Specialitiesid='$Specialitiesid'");
 unset($_SESSION['SPSL_VIEW_ID']);
 RESPONSE($Delete, "Speciality Deleted Successfully!", "Unable to delete speciality at the moment!");

 //unknown request is received
} else {
 LOCATION("warning", "Unknown Request is received!", $access_url);
}
