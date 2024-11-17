<footer class="site-footer">
  <div class="container-fluid">
    <div class="footer-col">
      <div class="footer-widget footer-widget__about">
        <a class="footer-widget__logo" href="<?php echo DOMAIN; ?>"><img src="<?php echo MAIN_LOGO; ?>" alt="<?php echo APP_NAME; ?>" title="<?php echo APP_NAME; ?>" /></a>
        <p class=" footer-widget__text"><?php echo APP_NAME; ?> provides high-level dental services,
          offers comprehensive solutions for the treatment of any dental disease.</p>
        <a href="<?php echo DOMAIN; ?>/web/about-us" class="footer-widget__link">Know more...</a>
      </div><!-- /.footer-widget -->
      <div class="footer-widget">
        <h3 class="footer-widget__title">
          Useful Links
        </h3>
        <ul class="footer-widget__links-list">
          <li class="footer-widget__links-list-item"> <a href="<?php echo DOMAIN; ?>/index.php">Home</a> </li><!-- /.footer-widget__links-list-item -->
          <li class="footer-widget__links-list-item"> <a href="<?php echo DOMAIN; ?>/web/about-us/">About Us</a> </li><!-- /.footer-widget__links-list-item -->
          <li class="footer-widget__links-list-item"> <a href="<?php echo DOMAIN; ?>/web/speciality">Specialities</a> </li>
          <li class="footer-widget__links-list-item"> <a href="<?php echo DOMAIN; ?>/web/booking">Book an Appointment</a> </li><!-- /.footer-widget__links-list-item -->
          <li class="footer-widget__links-list-item"> <a href="<?php echo DOMAIN; ?>/web/gallery">Photo Gallery</a> </li><!-- /.footer-widget__links-list-item -->
          <li class="footer-widget__links-list-item"> <a href="<?php echo DOMAIN; ?>/web/contact-us/">Contact Us</a> </li>
        </ul><!-- /.footer-widget__links-list -->
      </div><!-- /.footer-widget -->
      <div class="footer-widget">
        <h3 class="footer-widget__title">
          Time Schedule
        </h3>
        <ul class="footer-widget__time-list">
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
              <li class="footer-widget__time-list-item"><?php echo $Times->ClinicTimeDay; ?> : <?php echo $ClinicTime; ?> </li><!-- /.footer-widget__time-list-item -->
          <?php
            }
          } ?>
        </ul><!-- /.footer-widget__time-list -->
      </div><!-- /.footer-widget -->
      <div class="footer-widget">
        <h3 class="footer-widget__title">
          Get In Touch
        </h3>
        <ul class="footer-widget__time-list no-margin">
          <li class="footer-widget__time-list-item"><?php echo SECURE(PRIMARY_ADDRESS, "d"); ?> Haryana - 121006 India.</li><!-- /.footer-widget__time-list-item -->
          <!-- /.footer-widget__time-list-item -->
          <li class="footer-widget__time-list-item">Phone : <a href="tel:<?php echo PRIMARY_PHONE; ?>"><?php echo PRIMARY_PHONE; ?></a>
            <?php
            $Sql_app_contact_details = FetchConvertIntoArray("SELECT * FROM app_contact_details where AppContcatDetailType='" . SECURE("Phone", "e") . "' ORDER BY AppContactDetailsId ASC", true);
            if ($Sql_app_contact_details == null) {
              NoData("No Datials Found!");
            } else {
              foreach ($Sql_app_contact_details as $Request) { ?>
                , <a href="tel:<?php echo SECURE($Request->AppContactDetailsValue, "d"); ?>"><?php echo SECURE($Request->AppContactDetailsValue, "d"); ?></a>
            <?php }
            } ?>
          </li><!-- /.footer-widget__time-list-item -->
          <li class="footer-widget__time-list-item">Email : <a href="mailto:<?php echo PRIMARY_EMAIL; ?>"><?php echo PRIMARY_EMAIL; ?></a>
            <?php
            $Sql_app_contact_details = FetchConvertIntoArray("SELECT * FROM app_contact_details where AppContcatDetailType='" . SECURE("Email", "e") . "' ORDER BY AppContactDetailsId ASC", true);
            if ($Sql_app_contact_details == null) {
              NoData("No Datials Found!");
            } else {
              foreach ($Sql_app_contact_details as $Request) { ?>
                , <a href="tel:<?php echo SECURE($Request->AppContactDetailsValue, "d"); ?>"><?php echo SECURE($Request->AppContactDetailsValue, "d"); ?></a>
            <?php }
            } ?></li><!-- /.footer-widget__time-list-item -->
        </ul><!-- /.footer-widget__time-list -->
        <div class="footer-widget__social">
          <?php $FetchAccounts = FetchConvertIntoArray("SELECT * FROM socialaccounts where SocialAccountStatus='" . SECURE(1, 'e') . "'", true);
          if ($FetchAccounts != null) {
            foreach ($FetchAccounts as $Request) { ?>
              <a href="<?php echo SECURE($Request->SocialAccountUrl, "d"); ?>" target="<?php echo SECURE($Request->SocialAccountOpenIn, "d"); ?>"><i class="fa <?php echo SECURE($Request->SocialAccountIcon, "d"); ?>"></i></a>
          <?php }
          } ?>
        </div><!-- /.footer-widget__social -->
      </div><!-- /.footer-widget -->
    </div><!-- /.footer-col -->
  </div><!-- /.container -->
  <div class="bottom-footer">
    <div class="container">
      <hr class="bottom-footer__line">
      <div class="bottom-footer__wrap">
        <p class="bottom-footer__text">&copy; Copyright <?php echo APP_NAME; ?> - <?php echo date("Y"); ?> . All right reserved.</p><!-- /.bottom-footer__text -->
        <p class="bottom-footer__text">Managed By <a href="<?php echo DEVELOPER_URL; ?>" target="_blank"><?php echo DEVELOPED_BY; ?></a></p><!-- /.bottom-footer__text -->
      </div><!-- /.bottom-footer__wrap -->
    </div><!-- /.container -->
  </div><!-- /.bottom-footer -->
</footer><!-- /.site-footer -->


</div><!-- /.page-wrapper -->
<a href="#" data-target="html" class="scroll-to-target scroll-to-top"><i class="fa fa-angle-up"></i></a>
<!-- /.scroll-to-top -->