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

//create new slider
if (isset($_POST['CreateNewSlider'])) {
 include 'req/REQ_sliders.php';
 $SliderImage = UPLOAD_FILES("../storage/sliders", false, "$SliderName", "$SliderTagline", "SliderImage");

 $Save = SAVE("sliders", ["SliderTagline", "SliderName", "SliderDescription", "SliderImage", "SliderOpenUrl", "SliderTextUrl", "SliderCreatedAt"]);
 RESPONSE($Save, "New Slider is created successfully!", "Unable to create new sliders");

 //update sliders
} else if (isset($_POST['UpdateSliders'])) {
 include 'req/REQ_sliders.php';
 $SliderUpdatedAt = date("d M, Y");
 $SliderId = SECURE($_POST['UpdateSliders'], "d");

 $Update = UPDATE("UPDATE sliders SET SliderTagline='$SliderTagline', SliderName='$SliderName', SliderDescription='$SliderDescription', SliderOpenUrl='$SliderOpenUrl', SliderTextUrl='$SliderTextUrl', SliderUpdatedAt='$SliderUpdatedAt' where SliderId='$SliderId'");
 RESPONSE($Update, "Slider Details are update successfully!", "Unable to update sliders");

 //update slider image
} else if (isset($_POST['updatesliderimage'])) {
 $SliderName = $_POST['updatesliderimage'];
 $CurrentFile = SECURE($_POST['CurrentFile'], "d");
 $SliderId = SECURE($_POST['access_validation'], "d");
 $SliderImage = UPLOAD_FILES("../storage/sliders", "$CurrentFile", "$SliderName", "$SliderId", "SliderImage");
 $Update = UPDATE("UPDATE sliders SET SliderImage='$SliderImage' where SliderId='$SliderId'");
 RESPONSE($Update, "Slider Image Updated Successfully", "Unable to Update Sliders Image at the moment");

 //delete sliders
} else if (isset($_GET['del_primary_slider'])) {
 $SliderId = SECURE($_GET['del_primary_slider'], "d");
 $access_url = SECURE($_GET['access_url'], "d");
 $Delete = DELETE("DELETE FROM sliders where SliderId='$SliderId'");
 unset($_SESSION['SLIDER_VIEW_ID']);
 RESPONSE($Delete, "Slider Deleted Successfully!", "Unable to delete slider at the moment!");
}
