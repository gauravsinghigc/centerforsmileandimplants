<?php
//require files inludes
$PageName = "Contact Us";
$DirLevel = "../../";
require $DirLevel . 'require/modules.php';
?>
<!DOCTYPE html>
<html lang="en">
<meta http-equiv="content-type" content="text/html;charset=utf-8" />

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title><?php echo APP_NAME; ?> : <?php echo $PageName; ?></title>
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="<?php echo MAIN_LOGO; ?>">
    <meta name="theme-color" content="#ffffff">
    <?php include '../head.php'; ?>
    <?php include $DirLevel . 'include/web/header_files.php'; ?>
</head>

<body>
    <div class="page-wrapper">
        <?php
        include $DirLevel . 'include/web/header.php';
        ?>
        <section class="inner-banner">
            <div class="container">
                <h2 class="inner-banner__title"><?php echo $PageName; ?></h2><!-- /.inner-banner__title -->
                <ul class="thm-breadcrumb">
                    <li class="thm-breadcrumb__item"><a class="thm-breadcrumb__link" href="../">Home</a></li>
                    <li class="thm-breadcrumb__item current"><a class="thm-breadcrumb__link" href="<?php echo DOMAIN; ?>/web/contact-us/"><?php echo $PageName; ?></a></li>
                </ul><!-- /.thm-breadcrumb -->
            </div><!-- /.container -->
        </section><!-- /.inner-banner -->
        <section class="contact-one contact-one__contact-page">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7">
                        <div class="block-title">
                            <h2 class="block-title__title">Contact Us</h2><!-- /.block-title__title -->
                            <p class="block-title__text">To make an appointment at <?php echo APP_NAME; ?> go to <a href='<?php echo DOMAIN; ?>/web/booking/'>Book An Appointment</a> Otherwise, we welcome you to contact us. please fill the below details, we get in touch for you as soon as you fill the details.</p><!-- /.block-title__text -->
                        </div><!-- /.block-title -->
                        <form action="<?php echo DOMAIN; ?>/web/contact_send.php" class="contact-one__form contact-form-validated" method="POST">
                            <div class="row">
                                <div class="col-lg-12">
                                    <input type="text" name="full_name" placeholder="Full Name">
                                </div><!-- /.col-lg-12 -->
                                <div class="col-lg-12">
                                    <input type="text" name="email_id" placeholder="Email Address">
                                </div><!-- /.col-lg-12 -->
                                <div class="col-lg-12">
                                    <input type="text" name="phone_number" placeholder="Phone number">
                                </div><!-- /.col-lg-12 -->
                                <div class="col-lg-12">
                                    <input type="text" name="subject" placeholder="Subject">
                                </div><!-- /.col-lg-12 -->
                                <div class="col-lg-12">
                                    <textarea placeholder="Message" name="message"></textarea>
                                </div><!-- /.col-lg-12 -->
                                <div class="col-lg-5">
                                    <button type="submit" class="thm-btn">Submit Now</button>
                                </div><!-- /.col-lg-12 -->
                                <div class="col-lg-2 padding_8">
                                    <span>OR</span>
                                </div><!-- /.col-lg-12 -->
                        </form>
                        <div class="col-lg-5 padding_8">
                            <a href="<?php echo DOMAIN; ?>/web/booking" class="topbar-one__btn">
                                Book Appointment
                            </a>
                        </div><!-- /.col-lg-12 -->
                    </div><!-- /.row -->

                </div><!-- /.col-lg-7 -->
                <div class="col-lg-5 ">
                    <div class="contact-one__page-content">
                        <h2 class="contact-one__page-title">Our Address</h2><!-- /.contact-one__page-title -->
                        <div class="contact-one__page-widget">
                            <i class="contact-one__page-widget__icon icon icon-Pointer"></i>
                            <h3 class="contact-one__page-widget__title">Address :</h3><!-- /.contact-one__page-widget__title -->
                            <p class="contact-one__page-widget__text"><?php echo SECURE(PRIMARY_ADDRESS, "d"); ?></p>
                            <?php
                            $Sql_app_contact_details = FetchConvertIntoArray("SELECT * FROM app_contact_details where AppContcatDetailType='" . SECURE("Address", "e") . "' ORDER BY AppContactDetailsId ASC", true);
                            if ($Sql_app_contact_details == null) {
                                NoData("No Datials Found!");
                            } else {
                                foreach ($Sql_app_contact_details as $Request) { ?>
                                    <p class="contact-one__page-widget__text"><?php echo SECURE($Request->AppContactDetailsValue, "d"); ?></p>
                            <?php }
                            } ?>
                            <!-- /.contact-one__page-widget__text -->
                        </div><!-- /.contact-one__page-widget -->
                        <div class="contact-one__page-widget">
                            <i class="contact-one__page-widget__icon icon icon-Phone2"></i>
                            <h3 class="contact-one__page-widget__title">Phone :</h3><!-- /.contact-one__page-widget__title -->
                            <p class="contact-one__page-widget__text"><a href="tel:<?php echo PRIMARY_PHONE; ?>"><?php echo PRIMARY_PHONE; ?></a> </p><!-- /.contact-one__page-widget__text -->
                            <?php
                            $Sql_app_contact_details = FetchConvertIntoArray("SELECT * FROM app_contact_details where AppContcatDetailType='" . SECURE("Phone", "e") . "' ORDER BY AppContactDetailsId ASC", true);
                            if ($Sql_app_contact_details == null) {
                                NoData("No Datials Found!");
                            } else {
                                foreach ($Sql_app_contact_details as $Request) { ?>
                                    <p class="contact-one__page-widget__text"><a href="tel:<?php echo SECURE($Request->AppContactDetailsValue, "d"); ?>"><?php echo SECURE($Request->AppContactDetailsValue, "d"); ?></a></p>
                            <?php }
                            } ?>
                        </div><!-- /.contact-one__page-widget -->
                        <div class=" contact-one__page-widget">
                            <i class="contact-one__page-widget__icon icon icon-Plaine"></i>
                            <h3 class="contact-one__page-widget__title">Email : </h3><!-- /.contact-one__page-widget__title -->
                            <p class="contact-one__page-widget__text"><a href="mailto:<?php echo PRIMARY_EMAIL; ?>"><?php echo PRIMARY_EMAIL; ?></a></p>
                            <?php
                            $Sql_app_contact_details = FetchConvertIntoArray("SELECT * FROM app_contact_details where AppContcatDetailType='" . SECURE("Email", "e") . "' ORDER BY AppContactDetailsId ASC", true);
                            if ($Sql_app_contact_details == null) {
                                NoData("No Datials Found!");
                            } else {
                                foreach ($Sql_app_contact_details as $Request) { ?>
                                    <p class="contact-one__page-widget__text"><a href="mailto:<?php echo SECURE($Request->AppContactDetailsValue, "d"); ?>"><?php echo SECURE($Request->AppContactDetailsValue, "d"); ?></a></p>
                            <?php }
                            } ?>
                            <!-- /.contact-one__page-widget__text -->
                        </div><!-- /.contact-one__page-widget -->
                        <div class="contact-one__page-widget">
                            <i class="contact-one__page-widget__icon icon icon-Timer"></i>
                            <h3 class="contact-one__page-widget__title"><?php echo APP_NAME; ?> - Timing</h3><!-- /.contact-one__page-widget__title -->
                            <p class="contact-one__page-widget__text">
                                <?php
                                $FetchTimes = FetchConvertIntoArray("SELECT * FROM clinictimeschedule ORDER BY ClinicTimeId ASC", true);
                                if ($FetchTimes != null) {
                                    foreach ($FetchTimes as $Times) {
                                        $TimeStatus = $Times->ClinicTimeOpenStatus;
                                        if ($TimeStatus == 1) {
                                            $ClinicTime =  $Times->ClinicMorningTimeFrom . " - " . $Times->ClinicMorningTimeTo . " | " . $Times->ClinicEveningTimeFrom . "-" . $Times->ClinicEveningTimeTo;
                                        } else {
                                            $ClinicTime = "Closed (" . $Times->ClinicTimeNotes . ")";
                                        } ?>
                                        <?php echo $Times->ClinicTimeDay; ?> : <?php echo $ClinicTime; ?> <br><!-- /.footer-widget__time-list-item -->
                                <?php
                                    }
                                } ?>
                            </p><!-- /.contact-one__page-widget__text -->
                        </div><!-- /.contact-one__page-widget -->
                    </div><!-- /.contact-one__page-content -->
                </div><!-- /.col-lg-5 -->
            </div><!-- /.row -->
    </div><!-- /.container -->
    </section><!-- /.contact-one -->
    <section class="contact-map">
        <div class="container">
            <iframe src="<?php echo SECURE(PRIMARY_MAP_LOCATION_LINK, "d"); ?>" class="google-map__home" allowfullscreen></iframe>
        </div><!-- /.container -->
    </section><!-- /.contact-map -->
    <?php include '../../include/web/booking.php'; ?>

    <?php include $DirLevel . 'include/web/footer.php'; ?>

    <?php include $DirLevel . 'include/web/footer_files.php'; ?>
</body>

</html>