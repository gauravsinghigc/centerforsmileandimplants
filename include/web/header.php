 <section class="topbar-one">
   <div class="container">
     <div class="topbar-one__left-text"><i class="fa fa-map-marker"></i> <?php echo SECURE(PRIMARY_ADDRESS, "d"); ?></div>
     <div class="topbar-one__right-content">
       <div class="topbar-one__social">
         <?php $FetchAccounts = FetchConvertIntoArray("SELECT * FROM socialaccounts where SocialAccountStatus='" . SECURE(1, 'e') . "'", true);
          if ($FetchAccounts != null) {
            foreach ($FetchAccounts as $Request) { ?>
             <a href="<?php echo SECURE($Request->SocialAccountUrl, "d"); ?>" target="<?php echo SECURE($Request->SocialAccountOpenIn, "d"); ?>"><i class="fa <?php echo SECURE($Request->SocialAccountIcon, "d"); ?>"></i></a>
         <?php }
          } ?>

       </div><!-- /.topbar-one__social -->
       <a href="<?php echo DOMAIN; ?>/web/booking/" class="topbar-one__btn">Book an Appointment</a>
     </div><!-- /.right-content -->
   </div><!-- /.container -->
 </section><!-- /.topbar-one -->
 <header class="site-header header-one">
   <nav class="navbar navbar-expand-lg navbar-light header-navigation stricky">
     <div class="container clearfix">
       <!-- Brand and toggle get grouped for better mobile display -->
       <div class="logo-box clearfix">
         <a class="navbar-brand" href="<?php echo DOMAIN; ?>">
           <img src="<?php echo MAIN_LOGO; ?>" class="main-logo" alt="<?php echo MAIN_LOGO; ?>" title="<?php echo APP_NAME; ?>" />
           <img src="<?php echo MAIN_LOGO; ?>" class="stick-logo" alt="<?php echo MAIN_LOGO; ?>" title="<?php echo APP_NAME; ?>" />
         </a>
         <button class="menu-toggler" data-target=".main-navigation">
           <span class="fa fa-bars"></span>
         </button>
       </div><!-- /.logo-box -->
       <!-- Collect the nav links, forms, and other content for toggling -->
       <div class="main-navigation">
         <ul class=" navigation-box">
           <li>
             <a href="<?php echo DOMAIN; ?>">Home</a>
           </li>
           <li>
             <a href="<?php echo DOMAIN; ?>/web/about-us">About Us</a>
             <ul class="submenu">
               <?php $FetchAccounts = FetchConvertIntoArray("SELECT * FROM aboutus where AboutUsPageStatus='1' ORDER BY AboutUsPageId ASC", true);
                if ($FetchAccounts != null) {
                  foreach ($FetchAccounts as $Request) { ?>
                   <li><a href="<?php echo DOMAIN; ?>/web/about-us/?view=<?php echo SECURE($Request->AboutUsPageId, "e"); ?>"><?php echo SECURE($Request->AboutUsPageName, "d"); ?></a></li>
               <?php }
                } ?>
             </ul><!-- /.submenu -->
           </li>
           <li>
             <a href="<?php echo DOMAIN; ?>/web/speciality">Our Specialities</a>
             <ul class="submenu">
               <?php $FetchAccounts = FetchConvertIntoArray("SELECT * FROM specialities where SpecialitiesStatus='1' ORDER BY Specialitiesid ASC", true);
                if ($FetchAccounts != null) {
                  foreach ($FetchAccounts as $Request) { ?>
                   <li><a href="<?php echo DOMAIN; ?>/web/speciality/details/?view=<?php echo SECURE($Request->Specialitiesid, "e"); ?>"><?php echo SECURE($Request->SpecialityName, "d"); ?></a></li>
               <?php }
                } ?>
             </ul><!-- /.submenu -->
           </li>
           <li>
             <a href="<?php echo DOMAIN; ?>/web/gallery">Photo Gallery</a>
             <ul class="submenu">
               <?php $FetchAccounts = FetchConvertIntoArray("SELECT * FROM photogallery GROUP BY PhotoGalleryName ORDER BY PhotoGalleryId ASC", true);
                if ($FetchAccounts != null) {
                  foreach ($FetchAccounts as $Request) { ?>
                   <li><a href="<?php echo DOMAIN; ?>/web/gallery/?view=<?php echo SECURE($Request->PhotoGalleryName, "e"); ?>"><?php echo SECURE($Request->PhotoGalleryName, "d"); ?></a></li>
               <?php }
                } ?>
             </ul><!-- /.submenu -->
           </li>
           <li><a href="<?php echo DOMAIN; ?>/web/contact-us">Contact Us</a></li>
         </ul>
       </div><!-- /.navbar-collapse -->
       <div class="right-side-box">
         <a href="tel:<?php echo PRIMARY_PHONE; ?>" class="header-one__cta">
           <span class="header-one__cta-icon">
             <i class="dentallox-icon-call-answer"></i>
           </span>
           <span class="header-one__cta-content">
             <span class="header-one__cta-text">Call Us for query</span>
             <span class="header-one__cta-number"><?php echo PRIMARY_PHONE; ?></span>
           </span>
         </a>
       </div><!-- /.right-side-box -->
     </div>
     <!-- /.container -->
   </nav>
 </header><!-- /.header-one -->