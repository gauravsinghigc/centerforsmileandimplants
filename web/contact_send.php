<?php
require '../require/modules.php';
$full_name = $_REQUEST['full_name'];
$phone_number = $_REQUEST['phone_number'];
$email_id = $_REQUEST['email_id'];
$message = $_REQUEST['message'];
$subject = $_REQUEST['subject'];
$booking_date = date("d M, Y");
$receive = PRIMARY_EMAIL;

$chatApiToken = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE2MTc1OTgyMjgsInVzZXIiOiI5MTg0NDc1NzI1NjUifQ.pOW0AQ7nTI3CfQ8uF7jJiecQMutKV-2FVzpng96BFAw"; // Get it from https://www.phphive.info/255/get-whatsapp-password/

$number = PRIMARY_PHONE;
$messages = "Query Received : $subject

$full_name send us a query from our website. their contact details are :

Send Time : $booking_date
$subject
$full_name
$phone_number
$email_id
$message
";

SENDMAILS("Query Received!", "Dear," . APP_NAME, $receive, $messages);

LOCATION("success", "Query Received!", DOMAIN . "/web");
