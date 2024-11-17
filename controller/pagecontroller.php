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

//update pages
if (isset($_POST['UpdatePage'])) {
  $AboutUsPageId = SECURE($_POST['UpdatePage'], "d");
  $AboutUsPageUpdatedAt = date("d M, Y");
  include 'req/REQ_about-us-page.php';
  $Update = UPDATE("UPDATE aboutus SET AboutUsPageName='$AboutUsPageName', AboutUsPageStatus='$AboutUsPageStatus', AboutUsPageDescriptions='$AboutUsPageDescriptions' where AboutUsPageId='$AboutUsPageId'");
  RESPONSE($Update, "Page Details are updated successfully!", "Unable to update page details");

  //create new page
} elseif (isset($_POST['CreateNewSubPageforAboutUs'])) {
  include 'req/REQ_about-us-page.php';
  $AboutUsPageImage = UPLOAD_FILES("../storage/aboutus", false, "$AboutUsPageName", "Sub-Page", "AboutUsPageImage");
  $AboutUsPageCreatedAt = date("d M, Y");

  $Save = SAVE("aboutus", ["AboutUsPageName", "AboutUsPageDescriptions", "AboutUsPageImage", "AboutUsPageStatus", "AboutUsPageCreatedAt"]);
  RESPONSE($Save, "New Page Created Successfully!", "Unable to created new page at the moment please try again after some time.");

  //update feature image for page
} else if (isset($_POST['updateaboutuspageimage'])) {
  $CurrentFile = SECURE($_POST['CurrentFile'], "d");
  $AboutUsPageName = $_POST['AboutUsPageName'];
  $AboutUsPageId = SECURE($_POST['access_validation'], "d");
  $AboutUsPageImage = UPLOAD_FILES("../storage/aboutus", "$CurrentFile", $AboutUsPageName, "sub-page", "AboutUsPageImage");

  $Update = UPDATE("UPDATE aboutus SET AboutUsPageImage='$AboutUsPageImage' where AboutUsPageId='$AboutUsPageId'");
  RESPONSE($Update, "Page Fetaure Image is updated successfully!", "Unable to update feature image");

  //primary page creations
} else if (isset($_POST['CreateNewPages'])) {
  include 'req/REQ_primary-pages.php';
  $PageFeatureImage = UPLOAD_FILES("../storage/pages", false, $PageName, "p", "PageFeatureImage");

  $Save = SAVE("pages", ["PageName", "PageContent", "PageFeatureImage", "PageDisplayName"]);
  RESPONSE($Save, "New Page is created successfully!", "Unable to create page");

  //page updates
} else if (isset($_POST['UpdatePrimaryPage'])) {
  $PagedId = SECURE($_POST['UpdatePrimaryPage'], "d");
  include 'req/REQ_primary-pages.php';

  $Update = UPDATE("UPDATE pages SET PageName='$PageName', PageContent='$PageContent', PageDisplayName='$PageDisplayName' where PagedId='$PagedId'");
  RESPONSE($PagedId, "Page Details are Updated Successfully!", "Unable to update page details!");

  //page feature image
} else if (isset($_POST['updatepageimage'])) {
  $PagedId = SECURE($_POST['access_validation'], "d");
  $CurrentFile = SECURE($_POST['CurrentFile'], "d");
  $PageName = $_POST['PageName'];
  $PageFeatureImage = UPLOAD_FILES("../storage/pages", "$CurrentFile", "$PageName", "p", "PageFeatureImage");

  $Update = UPDATE("UPDATE pages SET PageFeatureImage='$PageFeatureImage' where PagedId='$PagedId'");
  RESPONSE($Update, "Page Feature image is changed successfully!", "Unable to update primary page feature image");

  //page delete 
} else if (isset($_GET['del_ab_page'])) {
  $AboutUsPageId = SECURE($_GET['del_ab_page'], "d");
  $access_url = SECURE($_GET['access_url'], "d");
  $Delete = DELETE("DELETE from aboutus where AboutUsPageId='$AboutUsPageId'");
  unset($_SESSION['PAGE_VIEW_ID']);
  RESPONSE($Delete, "About Us is deleted successfully", "Unable to delete About Us Sub Pages!");

  //delete primary pages
} else if (isset($_GET['del_primary_page'])) {
  $PagedId = SECURE($_GET['del_primary_page'], "d");
  $access_url = SECURE($_GET['access_url'], "d");
  $Delete = DELETE("DELETE from pages where PagedId='$PagedId'");
  unset($_SESSION['PAGE_VIEW_ID_2']);
  RESPONSE($Delete, "About Us is deleted successfully", "Unable to delete About Us Sub Pages!");
}
