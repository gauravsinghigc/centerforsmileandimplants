<?php
include 'config.php';
$domain = "192.168.1.9/projects/centerforsmileandimplants";
$url = "http://$domain";
$name = "Centre For Smile and Implants";
$title = $name;
$phone = "+91-9999103668";
$phones = $phone;
$email_id = "rohitsaini1903@gmail.com";
$app_mail = $email_id;
$address  = "<a href='https://goo.gl/maps/xcDvUELQq9wgGU3j7' target='blank' style='color:white;'>U-1/141, DLF, PHASE 3, GURGAON Haryana</a>";
$logo_src = $url . "/images/resources/crown-dental-logo.jpg";
$dr = "Dr. Ruby Shah Garg";
$dr_2 = "Dr. Jaspreet Kaur";
$location_share_link = "https://bit.ly/3fgNWsG";
?>
<style type="text/css">
	.float {
		position: fixed;
		width: 60px;
		height: 60px;
		bottom: 40px;
		right: 40px;
		background-color: #25d366;
		color: #FFF;
		border-radius: 50px;
		text-align: center;
		font-size: 30px;
		box-shadow: 2px 2px 3px #999;
		z-index: 100;
	}

	.my-float {
		margin-top: 16px;
	}
</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<a href="https://api.whatsapp.com/send?phone=+91-9999103668&text=Hey, I want to Book an Appointment at <?php echo $name; ?>, Please share prefer time for appointment..." class="float" target="_blank">
	<i class="fa fa-whatsapp my-float"></i>
</a>