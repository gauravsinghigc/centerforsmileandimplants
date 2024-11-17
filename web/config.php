<?php

//Display Errors
ini_set("display_errors", 0);

//App Configurations
$APP_NAME = "Center for Smile and Implants";
$DOMAIN = "http://192.168.1.9/projects/centerforsmileandimplants/";
$APP_DOMAIN = $DOMAIN . "/app";
$ADMIN_DOMAIN = $DOMAIN . "/admin";
$DIR_IMG = $DOMAIN . "/img";
$APP_PHONE = "";
$store_mail_id = "";
$SENDER_MAIL = "";
$RECEIVER_MAIL = "";
$SMS_KEY = "6Ul0SAiTKpMxXh5ZCoWtBQcgmEkr1HaLRvDIFqbwnsY8j2fdNPvkUBD0wA4ueVdYs6qW5c2JoC3jLgK9";
$STORE_ADDRESS = "";
$DOWNLOAD_LINK = "";

//Stylesheet / Bootstrap / Fontawesome  and all header files
//Default Bootstrap stylesheet
$STYLESHEETS = array(
  "https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css",
  "https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/css/bootstrap.min.css"
);

//Js scripts / footer links and all footer files
//Default bootstrap scripts
$SCRIPTS = array(
  "https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/js/bootstrap.min.js",
  "https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/js/bootstrap.bundle.min.js",
  "https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/js/bootstrap.esm.min.js"
);

//Include Header Files function
//All Files of dir are included automatically just create any file in /assets/css/ folder and start coding... file will be automatically imported to all page where HEADER_FILE() are mentioned.
function HEADER_FILES()
{
  global $STYLESHEETS;
  global $DOMAIN;

  foreach ($STYLESHEETS as $style) {
    echo "
<link rel='stylesheet' href='$style' />";
  }
  if ($handle = opendir('assets/css')) {
    while (false !== ($entry = readdir($handle))) {
      if ($entry != "." && $entry != "..") {
        echo "
<link rel='stylesheet' type='text/css' href='$DOMAIN/assets/css/$entry' />";
      }
    }
    closedir($handle);
  }
}

//Include Footer Files Function
//All Files of dir are included automatically just create any file in /assets/js/ folder and start coding... file will be automatically imported to all page where FOOTER_FILES() are mentioned.
function FOOTER_FILES()
{
  global $SCRIPTS;
  global $DOMAIN;

  foreach ($SCRIPTS as $script) {
    echo "
<script src='$script'></script>";
  }
  if ($handle = opendir('assets/js')) {
    while (false !== ($entry = readdir($handle))) {
      if ($entry != "." && $entry != "..") {
        echo "
<script src='$DOMAIN/assets/js/$entry' ></script>";
      }
    }
    closedir($handle);
  }
}


//DATABASE CONFIGURATION
$Host = "";
$User = "";
$Pass = "";
$DataBase = "";
$ALLOWDB = "false";
if ($ALLOWDB == "true") {
  $con = mysqli_connect($Host, $User, $Pass, $DataBase);
  $DBConnection = $con;
  if ($DBConnection == true) {
    $DBStatus = "<i class='fa fa-check-circle text-success'></i> Online";
  } else {
    $DBStatus = "<i class='fa fa-warning text-danger'></i> Offline";
  }
} else {
  $DBStatus = "<i class='fa fa-times text-warning'></i> DB Not Used!";
}



//SMS GATEWAYS FOR sending sms or msg
function SMS($MSG, $PHONE)
{
  global $SMS_KEY;

  $curl = curl_init();
  curl_setopt_array($curl, array(
    CURLOPT_URL => "https://www.fast2sms.com/dev/bulk?authorization=$SMS_KEY&sender_id=1102524310000011354&message=" . urlencode("
-
$MSG") . "&language=english&route=p&numbers=" . urlencode("$PHONE"),
    CURLOPT_RETURNTRANSFER => true,
    CURLOPT_ENCODING => "",
    CURLOPT_MAXREDIRS => 10,
    CURLOPT_TIMEOUT => 30,
    CURLOPT_SSL_VERIFYHOST => 0,
    CURLOPT_SSL_VERIFYPEER => 0,
    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
    CURLOPT_CUSTOMREQUEST => "GET",
    CURLOPT_HTTPHEADER => array(
      "cache-control: no-cache"
    ),
  ));
  $response = curl_exec($curl);
  $err = curl_error($curl);
  curl_close($curl);
}

//IP_ADDRESS
function IP_ADDRESS()
{
  $ipaddress = '';
  if (getenv('HTTP_CLIENT_IP'))
    $ipaddress = getenv('HTTP_CLIENT_IP');
  else if (getenv('HTTP_X_FORWARDED_FOR'))
    $ipaddress = getenv('HTTP_X_FORWARDED_FOR');
  else if (getenv('HTTP_X_FORWARDED'))
    $ipaddress = getenv('HTTP_X_FORWARDED');
  else if (getenv('HTTP_FORWARDED_FOR'))
    $ipaddress = getenv('HTTP_FORWARDED_FOR');
  else if (getenv('HTTP_FORWARDED'))
    $ipaddress = getenv('HTTP_FORWARDED');
  else if (getenv('REMOTE_ADDR'))
    $ipaddress = getenv('REMOTE_ADDR');
  else
    $ipaddress = 'UNKNOWN';
  return $ipaddress;
}


//Get running url
function get_url()
{
  if (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on')
    $url = "https://";
  else
    $url = "http://";
  // Append the host(domain name, ip) to the URL.
  $url .= $_SERVER['HTTP_HOST'];

  // Append the requested resource location to the URL
  $url .= $_SERVER['REQUEST_URI'];

  return $url;
}

// Device Type
function DeviceType()
{
  $deviceName = "";
  $userAgent = $_SERVER["HTTP_USER_AGENT"];
  $devicesTypes = array(
    "Computer" => array("msie 10", "msie 9", "msie 8", "windows.*firefox", "windows.*chrome", "x11.*chrome", "x11.*firefox", "macintosh.*chrome", "macintosh.*firefox", "opera"),
    "Tablet"   => array("tablet", "android", "ipad", "tablet.*firefox"),
    "Mobile"   => array("mobile ", "android.*mobile", "iphone", "ipod", "opera mobi", "opera mini"),
    "Bot"      => array("googlebot", "mediapartners-google", "adsbot-google", "duckduckbot", "msnbot", "bingbot", "ask", "facebook", "yahoo", "addthis")
  );
  foreach ($devicesTypes as $deviceType => $devices) {
    foreach ($devices as $device) {
      if (preg_match("/" . $device . "/i", $userAgent)) {
        $deviceName = $deviceType;
      }
    }
  }
  return ucfirst($deviceName);
}

//Send Mails
function SendMail($Valid, $Subject, $Title, $Sendto, $MAIL_MSG)
{
  global $con;
  global $SENDING_OTP;
  global $store_mail_id;
  global $SENDER_MAIL;
  global $RECEIVER_MAIL;

  //Mail Variables
  $EnableMail = $Valid;
  $Subject = $Subject;
  $Title = $Title;
  $SendByMail = $SENDER_MAIL;
  $ReplyToMail = $RECEIVER_MAIL;
  $Sendto = $Sendto;
  $MailingContent = $MAIL_MSG;


  //Device Details
  $ip_address = IP_ADDRESS();
  $device_type = DeviceType();
  date_default_timezone_set("Asia/Calcutta");
  $date_time_c = date("D d M, Y h:m:s a");
  $ipv6_n = php_uname('n');
  $ipv6_p = php_uname('p');
  $os = php_uname('s');
  $OS_release = php_uname('r');
  $OS_Version = php_uname('v');
  $System_Info = php_uname('m');
  $System_more_Info = $_SERVER['HTTP_USER_AGENT'];
  $device_Details = "<b>Date Time:</b> $date_time_c<br><b>Ip-Address :</b> $ip_address<br><b>Device Type :</b> $device_type<br><b>Host Name :</b> $ipv6_n<br><b> System Information :</b> $System_more_Info";

  if ($EnableMail == "true") {

    // Subject
    $subject = "$Subject";

    // Set Message
    $message = "
<style>
@import url('https://fonts.googleapis.com/css2?family=Commissioner&display=swap');
  html,
body, table, tr, th, td, h1, h2, h3, h4, h5, h6, p, span, div, section, b {
    font-family: 'Commissioner', sans-serif !important;
    font-size: 13px !important;
    text-align: justify !important;
    background-color: #d6fcd673 !important;
}
</style>
<div style='text-shadow: 0px 0px 0.2px grey;background-color: #d6fcd673 !important; max-width:900px !important;margin: auto;'>
$Title<BR>
$MailingContent

<hr>
<span style='font-size:11px;text-align:center;'>This is auto generated mail from $SendByMail. If you have any issue or find something incorrect in it than please contact us at $ReplyToMail</span>
</div>
";

    // Set From: header
    $from =  "notifications" . "<" . $SendByMail . ">";

    // Email Headers
    $headers = "From: " . $from . "\r\n";
    $headers .= "Reply-To: " . $ReplyToMail . "\r\n";
    $headers .= "MIME-Version: 1.0\r\n";
    $headers .= "Content-Type: text/html; charset=ISO-8859-1\r\n";

    ini_set("sendmail_from", $store_mail_id); // for windows server
    mail($Sendto, $subject, $message, $headers);
  }
}

//Save Data
function Save_DATA($tablename, $checkrows, array $tablerows, $auth)
{
  global $con;
  $Datatables = "";
  $TableValues = "";
  $data = $tablerows[0];
  $tablerows = $tablerows;
  $arraycount = count($tablerows);
  $mainarray = $arraycount - 1;
  $FocusedData = $_REQUEST["$data"];
  $cr_url = $_REQUEST['cr_url'];

  foreach ($tablerows as $key => $value) {
    if ($key == $mainarray) {
      $TableValues .= "'" . $_REQUEST["$value"] . "'";
    } else {
      $TableValues .= "'" . $_REQUEST["$value"] . "', ";
    }
  }

  foreach ($tablerows as $key => $value) {
    if ($key == $mainarray) {
      $Datatables .= "$value";
    } else {
      $Datatables .= "$value, ";
    }
  }

  if ($checkrows != 0) {
    $CheckData = "SELECT * FROM $tablename where $checkrows";
    $CheckDataQuery = mysqli_query($con, $CheckData);
    $CountData = mysqli_num_rows($CheckDataQuery);
  } else {
    $CountData = 0;
  }

  if ($CountData == 0) {
    $InsertNewData = "INSERT INTO $tablename ($Datatables) VALUES ($TableValues)";
    if ($auth == "0") {
    } elseif ($auth == "1") {
      die($InsertNewData);
    }
    $InsertNewDataQuery = mysqli_query($con, $InsertNewData);
    if ($InsertNewDataQuery == true) {
      header("location: $cr_url&msg=$FocusedData is Saved Successfully!");
    } else {
      header("location: $cr_url&err=Unable to save $FocusedData!");
    }
  } else {
    header("location: $cr_url&msg=$FocusedData is Already Exits!");
  }
}


//More Requirements
$ip_address = IP_ADDRESS();
$device_type = DeviceType();
date_default_timezone_set("Asia/Calcutta");
$date_time_c = date("D d M, Y h:m:s a");
$ipv6_n = php_uname('n');
$ipv6_p = php_uname('p');
$os = php_uname('s');
$OS_release = php_uname('r');
$OS_Version = php_uname('v');
$System_Info = php_uname('m');
$System_more_Info = $_SERVER['HTTP_USER_AGENT'];
$device_Details = "<p>
<b>Date Time:</b> $date_time_c<br>
<b>Ip-Address :</b> $ip_address<br>
<b>Device Type :</b> $device_type<br>
<b>Ipv6_N :</b> $ipv6_n<br>
<b>Tpv6_P :</b> $ipv6_p<br>
<b>OS :</b> $os<br>
<b>OS_RELEASE :</b> $OS_release<br>
<b>OS_VERSION :</b> $$OS_Version<br>
<b>System :</b> $System_Info<br>
<br>Host Name :</br> $ipv6_n<br>
<b>System Information :</b> $System_more_Info</p>";
