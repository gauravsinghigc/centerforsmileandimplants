<?php
//require files inludes
$PageName = "Speciality";
$DirLevel = "../../../";
require $DirLevel . 'require/modules.php';

//page data
$Requested_id = Req_Data("view", "GET", true, "dec");
$PageSqls = "SELECT * FROM specialities where Specialitiesid='$Requested_id'";
?>
<!DOCTYPE html>
<html lang="en">
<meta http-equiv="content-type" content="text/html;charset=utf-8" />

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title><?php echo APP_NAME; ?> : <?php echo SECURE(GET_DATA("SpecialityName"), "d"); ?></title>
  <meta name="msapplication-TileColor" content="#ffffff">
  <meta name="msapplication-TileImage" content="<?php echo MAIN_LOGO; ?>">
  <meta name="theme-color" content="#ffffff">
  <?php include '../../head.php'; ?>
  <?php include $DirLevel . 'include/web/header_files.php'; ?>
</head>

<body>
  <div class="page-wrapper">
    <?php
    include $DirLevel . 'include/web/header.php';
    ?>
    <section class="inner-banner">
      <div class="container">
        <h1 class="inner-banner__title"><?php echo SECURE(GET_DATA("SpecialityName"), "d"); ?></h1><!-- /.inner-banner__title -->
        <ul class="thm-breadcrumb">
          <li class="thm-breadcrumb__item"><a class="thm-breadcrumb__link" href="../../">Home</a></li>
          <li class="thm-breadcrumb__item current"><a class="thm-breadcrumb__link" href="<?php echo DOMAIN; ?>/web/specialities/">Our Specialities</a></li>
          <li class="thm-breadcrumb__item current"><a class="thm-breadcrumb__link" href="<?php echo DOMAIN; ?>/web/speciality/details/?view=<?php echo SECURE($Request->Specialitiesid); ?>"><?php echo SECURE(GET_DATA("SpecialityName"), "d"); ?></a></li>
        </ul><!-- /.thm-breadcrumb -->
      </div><!-- /.container -->
    </section><!-- /.inner-banner -->

    <section class="service-details">
      <div class="container">
        <div class="row">
          <div class="col-lg-4">
            <div class="service-sidebar">
              <div class="service-sidebar__single">
                <ul class="service-sidebar__list">
                  <?php
                  $FetchLists = FetchConvertIntoArray("SELECT * FROM specialities ORDER BY Specialitiesid ASC", true);
                  if ($FetchLists != null) {
                    foreach ($FetchLists as $Request) {
                      if (isset($_GET['view'])) {
                        if (SECURE($_GET['view'], "d") == $Request->Specialitiesid) {
                          $current = "current";
                        } else {
                          $current = "";
                        }
                      } else {
                        $current = "";
                      } ?>
                      <li class="service-sidebar__list-item <?php echo $current; ?>">
                        <a href="<?php echo DOMAIN; ?>/web/speciality/details/?view=<?php echo SECURE($Request->Specialitiesid); ?>" class="service-sidebar__list-link"><?php echo SECURE($Request->SpecialityName, "d"); ?></a>
                      </li><!-- /.service-sidebar__list-item -->

                  <?php }
                  } ?>
                </ul><!-- /.service-sidebar__list -->
              </div><!-- /.service-sidebar__single -->
              <div class="service-sidebar__single">
                <div class="service-sidebar__contact">
                  <p class="service-sidebar__contact-text"><i class="fa fa-phone"></i><a href="teL:<?php echo PRIMARY_PHONE; ?>" class="service-sidebar__contact-highlight"><?php echo PRIMARY_PHONE; ?></a></p><!-- /.service-sidebar__contact-text -->
                  <p class="service-sidebar__contact-text"><i class="fa fa-paper-plane"></i><a href="mailto:<?php echo PRIMARY_EMAIL; ?>"><?php echo PRIMARY_EMAIL; ?></a></p><!-- /.service-sidebar__contact-text -->
                  <p class="service-sidebar__contact-text"><i class="fa fa-map-marker"></i><a href="https://www.google.com/search?q=<?php echo APP_NAME; ?>/" target="_blank"><?php echo SECURE(PRIMARY_ADDRESS, "d"); ?></a></p><!-- /.service-sidebar__contact-text -->
                </div><!-- /.service-sidebar__contact -->
              </div><!-- /.service-sidebar__single -->
            </div><!-- /.service-sidebar -->
          </div><!-- /.col-lg-3 -->
          <div class="col-lg-8">
            <div class="service-details__content">
              <div class="service-details__image">
                <img src="<?php echo STORAGE_URL; ?>/speciality/<?php echo GET_DATA('SpecialityImage'); ?>" alt="<?php echo SECURE(GET_DATA("SpecialityName"), "d"); ?>" title="<?php echo SECURE(GET_DATA("SpecialityName"), "d"); ?>" style="width:100%;" />
              </div><!-- /.service-details__image -->
              <h1 class="service-details__title"><?php echo SECURE(GET_DATA("SpecialityName"), "d"); ?></h1>
              <hr><!-- /.service-details__title -->
              <p class="service-details__text">
                <?php echo html_entity_decode(SECURE(GET_DATA("SpecialityDescriptions"), "d")); ?>
              </p><!-- /.service-details__text -->
              <br><br>
              <a href="<?php echo DOMAIN; ?>/web/booking/" class="topbar-one__btn">Book an Appointment</a>
            </div><!-- /.service-details__content -->
          </div><!-- /.col-lg-9 -->
        </div><!-- /.row -->
      </div><!-- /.container -->
    </section><!-- /.service-details -->

    <?php include '../../../include/web/booking.php'; ?>

    <?php include $DirLevel . 'include/web/footer.php'; ?>

    <?php include $DirLevel . 'include/web/footer_files.php'; ?>
</body>

</html>