<?php
//require files inludes
$PageName = "Photo Gallery";
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
                <h2 class="inner-banner__title">Book Appointment</h2><!-- /.inner-banner__title -->
                <ul class="thm-breadcrumb">
                    <li class="thm-breadcrumb__item"><a class="thm-breadcrumb__link" href="../">Home</a></li>
                    <li class="thm-breadcrumb__item current"><a class="thm-breadcrumb__link" href="../booking/">Book Appointment</a></li>
                </ul><!-- /.thm-breadcrumb -->
            </div><!-- /.container -->
        </section><!-- /.inner-banner -->
        <section class="service-details">
            <div class="container">

                <div class="row">

                    <div class="col-lg-12">
                        <div class="patient-content">
                            <br><br>
                            <form action="<?php echo DOMAIN; ?>/web/booking_send.php" method="POST" class="patient__form contact-form-validated">
                                <div class="patient__form-field">
                                    <p class="patient__label">Your Name*</p><!-- /.patient__label -->
                                    <input type="text" name="full_name" required="">
                                </div><!-- /.patient__form-field -->
                                <div class="patient__form-field">
                                    <p class="patient__label">Your E-mail Address*</p><!-- /.patient__label -->
                                    <input type="email" name="email_id" required="">
                                </div><!-- /.patient__form-field -->
                                <div class="patient__form-field">
                                    <p class="patient__label">Your Phone Number</p><!-- /.patient__label -->
                                    <input type="text" name="phone_number">
                                </div><!-- /.patient__form-field -->
                                <div class="patient__form-field">
                                    <p class="patient__label">Date for Appointment</p><!-- /.patient__label -->
                                    <input type="text" name="date" class="datepicker" placeholder="DD/Month/YYYY" required>
                                </div><!-- /.patient__form-field -->
                                <div class="patient__form-field">
                                    <p class="patient__label">Prefer Time</p><!-- /.patient__label -->
                                    <input type="time" name="time" placeholder="HH:MM AM/PM" required="">
                                </div><!-- /.patient__form-field -->
                                <div class="patient__form-field">
                                    <p class="patient__label">Age (in years)</p><!-- /.patient__label -->
                                    <input type="number" min="1" max="100" name="age" placeholder="ex: 1 year" required="">
                                </div><!-- /.patient__form-field -->
                                <div class="patient__form-field">
                                    <p class="patient__label">Gender</p><!-- /.patient__label -->
                                    <select name="gender" class="form-control" required>
                                        <option value="Male">Male</option>
                                        <option value="Female">Female</option>
                                    </select>
                                </div><!-- /.patient__form-field -->
                                <div class="patient__form-field">
                                    <p class="patient__label">Booking Notes</p><!-- /.patient__label -->
                                    <textarea name="message" rows="15"></textarea>
                                </div><!-- /.patient__form-field -->
                                <button type="submit" class="thm-btn" name="book_appointment">Book Now</button>
                            </form>
                        </div><!-- /.patient-content -->
                    </div><!-- /.col-lg-9 -->
                </div><!-- /.row -->
            </div><!-- /.container -->
        </section><!-- /.service-details -->
        <?php include $DirLevel . 'include/web/footer.php'; ?>

        <?php include $DirLevel . 'include/web/footer_files.php'; ?>
</body>

</html>