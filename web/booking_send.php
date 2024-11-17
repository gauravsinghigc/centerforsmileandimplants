<?php
require '../require/modules.php';

$full_name = $_REQUEST['full_name'];
$phone_number = $_REQUEST['phone_number'];
$email_id = $_REQUEST['email_id'];
$date = $_REQUEST['date'];
$date = date("D d M, Y", strtotime($date));
$time = $_REQUEST['time'];
$time = date("h:m A", strtotime($time));
$message = $_REQUEST['message'];
$gender = $_REQUEST['gender'];
$age = $_REQUEST['age'];
$booking_date = date("d M, Y");
$receive = SECURE(PRIMARY_EMAIL, "d");
$name = SECURE(APP_NAME, "d");
$address = SECURE(PRIMARY_ADDRESS, "d");
$number = SECURE(PRIMARY_PHONE, "d"); // Number
$message = "
$full_name Scheduled his Appointment with us. Please check their details mention below. \r\n\r\n<br><br>

◘ Appointment Details : \r\n<br>
Booking Date : $booking_date \r\n<br>
Appointment Date/Time : $date $time. \r\n<br>
Appointment Notes : $message \r\n<br>

<br>
◘ Patient Details: \r\n<br>
Name : $full_name \r\n<br>
Phone : $phone_number \r\n<br>
Email-ID : $email_id \r\n<br>
Gender : $gender \r\n<br>
Patient Age : $age Years";

SENDMAILS("Appointment Received!", "Dear, " . APP_NAME, $receive, $message);

LOCATION("success", "Appointment Booked", DOMAIN . "/web");
