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

//update primary details
if (isset($_POST['UpdatePrimaryConfigurations'])) {
 $APP_NAME = $_POST['APP_NAME'];
 $TAGLINE = $_POST['TAGLINE'];
 $PRIMARY_PHONE = $_POST['PRIMARY_PHONE'];
 $PRIMARY_EMAIL = $_POST['PRIMARY_EMAIL'];
 $SHORT_DESCRIPTION = SECURE($_POST['SHORT_DESCRIPTION'], "e");
 $PRIMARY_ADDRESS = SECURE($_POST['PRIMARY_ADDRESS'], "e");
 $PRIMARY_MAP_LOCATION_LINK = SECURE($_POST['PRIMARY_MAP_LOCATION_LINK'], "e");
 $DOWNLOAD_ANDROID_APP_LINK = $_POST['DOWNLOAD_ANDROID_APP_LINK'];
 $DOWNLOAD_IOS_APP_LINK = $_POST['DOWNLOAD_IOS_APP_LINK'];
 $DOWNLOAD_BROCHER_LINK = $_POST['DOWNLOAD_BROCHER_LINK'];
 $PRIMARY_GST = $_POST['PRIMARY_GST'];

 $Update = UPDATE("UPDATE configurations SET configurationvalue='$APP_NAME' where configurationname='APP_NAME'");
 $Update = UPDATE("UPDATE configurations SET configurationvalue='$TAGLINE' where configurationname='TAGLINE'");
 $Update = UPDATE("UPDATE configurations SET configurationvalue='$PRIMARY_GST' where configurationname='PRIMARY_GST'");
 $Update = UPDATE("UPDATE configurations SET configurationvalue='$PRIMARY_PHONE' where configurationname='PRIMARY_PHONE'");
 $Update = UPDATE("UPDATE configurations SET configurationvalue='$PRIMARY_EMAIL' where configurationname='PRIMARY_EMAIL'");
 $Update = UPDATE("UPDATE configurations SET configurationvalue='$SHORT_DESCRIPTION' where configurationname='SHORT_DESCRIPTION'");
 $Update = UPDATE("UPDATE configurations SET configurationvalue='$PRIMARY_ADDRESS' where configurationname='PRIMARY_ADDRESS'");
 $Update = UPDATE("UPDATE configurations SET configurationvalue='$PRIMARY_MAP_LOCATION_LINK' where configurationname='PRIMARY_MAP_LOCATION_LINK'");

 APP_LOGS("C_PROFILE_UPDATED", "Company Profile Updated", "UPDATE");
 RESPONSE($Update, "Company Profile Updated!", "Unable to Update Company profile!");

 //update api & key
} elseif (isset($_POST['UpdateApi&Keys'])) {
 $SMS_SENDER_ID = $_POST['SMS_SENDER_ID'];
 $SMS_API_KEY = $_POST['SMS_API_KEY'];
 $SMS_OTP_TEMP_ID_VALUE = $_POST['SMS_OTP_TEMP_ID_VALUE'];
 $SMS_OTP_TEMP_ID_SUPPORTIVE_TEXT = $_POST['SMS_OTP_TEMP_ID_SUPPORTIVE_TEXT'];
 $PASS_RESET_OTP_TEMP_VALUE = $_POST['PASS_RESET_OTP_TEMP_VALUE'];
 $PASS_RESET_OTP_TEMP_SUPPORTIVE_TEXT = $_POST['PASS_RESET_OTP_TEMP_SUPPORTIVE_TEXT'];
 $CONTROL_SMS = $_POST['CONTROL_SMS'];

 $Update = UPDATE("UPDATE configurations SET configurationvalue='$CONTROL_SMS' where configurationname='CONTROL_SMS'");
 $Update = UPDATE("UPDATE configurations SET configurationvalue='$SMS_SENDER_ID' where configurationname='SMS_SENDER_ID'");
 $Update = UPDATE("UPDATE configurations SET configurationvalue='$SMS_API_KEY' where configurationname='SMS_API_KEY'");
 $Update = UPDATE("UPDATE configurations SET configurationvalue='$SMS_OTP_TEMP_ID_VALUE', configurationsupportivetext='$SMS_OTP_TEMP_ID_SUPPORTIVE_TEXT' where configurationname='SMS_OTP_TEMP_ID'");
 $Update = UPDATE("UPDATE configurations SET configurationvalue='$PASS_RESET_OTP_TEMP_VALUE', configurationsupportivetext='$PASS_RESET_OTP_TEMP_SUPPORTIVE_TEXT' where configurationname='PASS_RESET_OTP_TEMP'");

 APP_LOGS("SMS_API_KEY", "SMS api & key are $CONTROL_SMS", "API_KEY");
 RESPONSE($Update, "SMS & API are Updated Successfully!", "Unable to Update SMS & API Keys Details");

 //update mail configs
} elseif (isset($_POST['UpdateMailConfigs'])) {
 $CONTROL_MAILS = $_POST['CONTROL_MAILS'];
 $SENDER_MAIL_ID = $_POST['SENDER_MAIL_ID'];
 $RECEIVER_MAIL = $_POST['RECEIVER_MAIL'];
 $SUPPORT_MAIL = $_POST['SUPPORT_MAIL'];
 $ENQUIRY_MAIL = $_POST['ENQUIRY_MAIL'];
 $ADMIN_MAIL = $_POST['ADMIN_MAIL'];

 $Update = UPDATE("UPDATE configurations SET configurationvalue='$CONTROL_MAILS' where configurationname='CONTROL_MAILS'");
 $Update = UPDATE("UPDATE configurations SET configurationvalue='$SENDER_MAIL_ID' where configurationname='SENDER_MAIL_ID'");
 $Update = UPDATE("UPDATE configurations SET configurationvalue='$RECEIVER_MAIL' where configurationname='RECEIVER_MAIL'");
 $Update = UPDATE("UPDATE configurations SET configurationvalue='$SUPPORT_MAIL' where configurationname='SUPPORT_MAIL'");
 $Update = UPDATE("UPDATE configurations SET configurationvalue='$ENQUIRY_MAIL' where configurationname='ENQUIRY_MAIL'");
 $Update = UPDATE("UPDATE configurations SET configurationvalue='$ADMIN_MAIL' where configurationname='ADMIN_MAIL'");

 APP_LOGS("MAIL_CONFIGS", "Mail Configurations Updated & Status: $CONTROL_MAILS", "MAIL_SETTINGS");
 RESPONSE($Update, "Mailing Configurations are Updated Successfully!", "Unable to update Mailing configurations");

 //update pg details
} elseif (isset($_POST['UpdatePgDetails'])) {
 $ONLINE_PAYMENT_OPTION = $_POST['ONLINE_PAYMENT_OPTION'];
 $PG_PROVIDER = $_POST['PG_PROVIDER'];
 $PG_MODE = $_POST['PG_MODE'];
 $MERCHENT_ID = $_POST['MERCHENT_ID'];
 $MERCHANT_KEY = $_POST['MERCHANT_KEY'];

 $Update = UPDATE("UPDATE configurations SET configurationvalue='$ONLINE_PAYMENT_OPTION' where configurationname='ONLINE_PAYMENT_OPTION'");
 $Update = UPDATE("UPDATE configurations SET configurationvalue='$PG_PROVIDER' where configurationname='PG_PROVIDER'");
 $Update = UPDATE("UPDATE configurations SET configurationvalue='$PG_MODE' where configurationname='PG_MODE'");
 $Update = UPDATE("UPDATE configurations SET configurationvalue='$MERCHENT_ID' where configurationname='MERCHENT_ID'");
 $Update = UPDATE("UPDATE configurations SET configurationvalue='$MERCHANT_KEY' where configurationname='MERCHANT_KEY'");

 APP_LOGS("PAYMENT_GATEWAY_UPDATED", "Payment Gateway Updated & Status : $ONLINE_PAYMENT_OPTION & Provider : $PG_PROVIDER", "PG_SETTINGS");
 RESPONSE($Update, "Payment Gateway Details are updated successfully!", "Unable to Update Payment Gateway Details!");

 //enable features
} elseif (isset($_POST['UpdateFeatures'])) {
 $CONTROL_WORK_ENV = $_POST['CONTROL_WORK_ENV'];
 $CONTROL_NOTIFICATION = $_POST['CONTROL_NOTIFICATION'];
 $CONTROL_MSG_DISPLAY_TIME = $_POST['CONTROL_MSG_DISPLAY_TIME'];
 $CONTROL_APP_LOGS = $_POST['CONTROL_APP_LOGS'];
 $CONTROL_NOTIFICATION_SOUND = $_POST['CONTROL_NOTIFICATION_SOUND'];
 $WEBSITE = $_POST['WEBSITE'];
 $APP = $_POST['APP'];

 $Update = UPDATE("UPDATE configurations SET configurationvalue='$CONTROL_WORK_ENV' where configurationname='CONTROL_WORK_ENV'");
 $Update = UPDATE("UPDATE configurations SET configurationvalue='$CONTROL_NOTIFICATION' where configurationname='CONTROL_NOTIFICATION'");
 $Update = UPDATE("UPDATE configurations SET configurationvalue='$CONTROL_MSG_DISPLAY_TIME' where configurationname='CONTROL_MSG_DISPLAY_TIME'");
 $Update = UPDATE("UPDATE configurations SET configurationvalue='$CONTROL_APP_LOGS' where configurationname='CONTROL_APP_LOGS'");
 $Update = UPDATE("UPDATE configurations SET configurationvalue='$CONTROL_NOTIFICATION_SOUND' where configurationname='CONTROL_NOTIFICATION_SOUND'");
 $Update = UPDATE("UPDATE configurations SET configurationvalue='$WEBSITE' where configurationname='WEBSITE'");
 $Update = UPDATE("UPDATE configurations SET configurationvalue='$APP' where configurationname='APP'");

 APP_LOGS("FEATURE_UPDATED", "WORK_ENV: $CONTROL_WORK_ENV, ALERT: $CONTROL_NOTIFICATION, ALERT_TIME: $CONTROL_MSG_DISPLAY_TIME, LOGS: $CONTROL_APP_LOGS", "FEATURE_UPDATED");
 RESPONSE($Update, "Selected features are Updated successfully!", "Unable to Update selected features!");

 //update logo 
} elseif (isset($_POST['updatelogo'])) {
 $CurrentFile = SECURE($_POST['CurrentFile'], "d");
 $APP_LOGO = UPLOAD_FILES("../storage/company/img/logo", "$CurrentFile", APP_NAME . "", "Logo", "APP_LOGO");
 $Update = UPDATE("UPDATE configurations SET configurationvalue='$APP_LOGO' where configurationname='APP_LOGO'");
 APP_LOGS("LOGO_CHANGED", "$APP_LOGO", "IMG_UPDATED");
 RESPONSE($Update, "Logo Updated Successfully!", "Unable to Update Logo!");

 //update login bg
} elseif (isset($_POST['Update_LOGIN_BG_IMAGE'])) {
 $CurrentFile = SECURE($_POST['CurrentFile'], "d");
 $LOGIN_BG_IMAGE = UPLOAD_FILES("../storage/default/bg", "$CurrentFile", APP_NAME . "", "Logo", "LOGIN_BG_IMAGE");
 $Update = UPDATE("UPDATE configurations SET configurationvalue='$LOGIN_BG_IMAGE' where configurationname='LOGIN_BG_IMAGE'");
 APP_LOGS("LOGIN_BG_CHANGED", "$LOGIN_BG_IMAGE", "IMG_UPDATED");
 RESPONSE($Update, "Log in Bg Updated Successfully! Updated Successfully!", "Unable to Update Login Background Image!");

 //update delivery charges
} elseif (isset($_POST['UpdateDeliveryCharges'])) {
 $deliverychargesid = SECURE($_POST['UpdateDeliveryCharges'], "d");
 $dccartamount = $_POST['dccartamount'];
 $Dcchargename = $_POST['Dcchargename'];
 $dcchargeamount = $_POST['dcchargeamount'];
 $dchargestatus = $_POST['dchargestatus'];

 $UpdateCharges = UPDATE("UPDATE deliverycharges SET dccartamount='$dccartamount', Dcchargename='$Dcchargename', dcchargeamount='$dcchargeamount', dchargestatus='$dchargestatus', deliverychargesid='$deliverychargesid'");
 RESPONSE($UpdateCharges, "Deliver charges updated!", "Unable to delivery charges!");

 //update max order qty
} else if (isset($_POST['UpdateMaxOrderQTY'])) {
 $MAX_ORDER_QTY = $_POST['MAX_ORDER_QTY'];
 $MIN_ORDER_QTY = $_POST['MIN_ORDER_QTY'];
 $Update = UPDATE("UPDATE configurations SET configurationvalue='$MAX_ORDER_QTY' where configurationname='MAX_ORDER_QTY'");
 $Update = UPDATE("UPDATE configurations SET configurationvalue='$MIN_ORDER_QTY' where configurationname='MIN_ORDER_QTY'");
 RESPONSE($Update, "Maximum Order Qty Updated Successfully!", "Unable to update maximum qty!");

 //create new contact details for the app
} elseif (isset($_POST['CreateNewContactDetails'])) {
 include 'req/REQ_contact-details.php';
 $Save = SAVE("app_contact_details", ["AppContactDetailsName", "AppContcatDetailType", "AppContactDetailsValue"]);
 RESPONSE($Save, "New Contact Details Saved Successfully!", "Unable to save new contact details!");

 //update contact details
} elseif (isset($_POST['UpdateContactDetails'])) {
 $AppContactDetailsId = SECURE($_POST['UpdateContactDetails'], "d");
 include 'req/REQ_contact-details.php';

 $Update = UPDATE("UPDATE app_contact_details SET AppContactDetailsName='$AppContactDetailsName', AppContcatDetailType='$AppContcatDetailType', AppContactDetailsValue='$AppContactDetailsValue' where AppContactDetailsId='$AppContactDetailsId'");
 RESPONSE($Update, "Contact Details Updated Successfully!", "Unable to Update Contact Details!");

 //update time
} elseif (isset($_POST['UpdateTime'])) {
 $ClinicTimeId = SECURE($_POST['UpdateTime'], "d");
 $ClinicTimeDay = $_POST['ClinicTimeDay'];
 $ClinicMorningTimeFrom = $_POST['ClinicMorningTimeFrom'];
 $ClinicEveningTimeFrom = $_POST['ClinicEveningTimeFrom'];
 $ClinicMorningTimeTo = $_POST['ClinicMorningTimeTo'];
 $ClinicEveningTimeTo = $_POST['ClinicEveningTimeTo'];
 $ClinicTimeOpenStatus = $_POST['ClinicTimeOpenStatus'];
 $ClinicTimeNotes = $_POST['ClinicTimeNotes'];

 $Update = UPDATE("UPDATE clinictimeschedule SET ClinicTimeDay='$ClinicTimeDay', ClinicMorningTimeFrom='$ClinicMorningTimeFrom', ClinicEveningTimeFrom='$ClinicEveningTimeFrom', ClinicMorningTimeTo='$ClinicMorningTimeTo', ClinicEveningTimeTo='$ClinicEveningTimeTo', ClinicTimeOpenStatus='$ClinicTimeOpenStatus', ClinicTimeNotes='$ClinicTimeNotes' where ClinicTimeId='$ClinicTimeId'");
 RESPONSE($Update, "Timing is updated Successfully!", "Unable to Update Timing");
}
