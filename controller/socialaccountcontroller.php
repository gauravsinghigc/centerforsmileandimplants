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

//create new icons
if (isset($_POST['CreateNewSocialAccount'])) {
 include 'req/REQ_social-accounts.php';
 $SocialAccountCreatedAt = date("d M, Y");
 $Save = SAVE("socialaccounts", ["SocialAccountName", "SocialAccountIcon", "SocialAccountUrl", "SocialAccountOpenIn", "SocialAccountStatus", "SocialAccountCreatedAt"]);
 RESPONSE($Save, "New Social Account Link is Created Successfully", "Unable to create new social accounts!");

 //update social accounts
} else if (isset($_POST['UpdateSocialAccounts'])) {
 $SocialAccountid = SECURE($_POST['UpdateSocialAccounts'], "d");
 $SocialAccountUpdatedAt = date("d M, Y");
 $Update = UPDATE_TABLE("socialaccounts", ["SocialAccountName", "SocialAccountIcon", "SocialAccountUrl", "SocialAccountOpenIn", "SocialAccountStatus"], "SocialAccountid='$SocialAccountid'");
 RESPONSE($Update, "Social Account Updated Successfully!", "Unable to update social accounts!");

 //delete social accounts
} else if (isset($_GET['del_accounts'])) {
 $SocialAccountid = SECURE($_GET['del_accounts'], "d");
 $access_url = SECURE($_GET['access_url'], "d");
 $Delete = DELETE("DELETE from socialaccounts where SocialAccountid='$SocialAccountid'");
 RESPONSE($Delete, "Social Account Deleted Successfully!", "Unable to delete social account at the moment!");
}
