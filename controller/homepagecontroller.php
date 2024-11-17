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

//update homepage details
if (isset($_POST['UpdateHomePage'])) {
 $HomePageId = SECURE($_POST['UpdateHomePage'], "d");
 $Update = UPDATE_TABLE("homepage", ["HomePageTitle", "HomePageDesc"], "HomePageId='$HomePageId'");
 RESPONSE($Update, "Home Page details are updated successfully!", "unable to update home page details!");

 //update home page images
} else if (isset($_POST['UpdateHomePageImage'])) {
 $HomePageName = SECURE($_POST['UpdateHomePageImage'], "d");
 $HomePageId = SECURE($_POST['access_validation'], "d");
 $CurrentFile = SECURE($_POST['CurrentFile'], "d");
 $HomePageImage = UPLOAD_FILES("../storage/home", $CurrentFile, "$HomePageName", "$HomePageId", "HomePageImage");
 $Update = UPDATE("UPDATE homepage SET HomePageImage='$HomePageImage' where HomePageId='$HomePageId'");
 RESPONSE($Update, "Home Page Featured Image is changed successfully!", "Unable to update home page featured image!");
}
