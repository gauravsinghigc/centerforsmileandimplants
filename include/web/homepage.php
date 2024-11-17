<section class="doctor-one">
 <div class="container">
  <?php
  $fetchHomePages = FetchConvertIntoArray("SELECT * FROM homepage where HomePageName='HomePage'", true);
  if ($fetchHomePages != null) {
   foreach ($fetchHomePages as $Request) { ?>
    <img src="<?php echo STORAGE_URL; ?>/home/<?php echo $Request->HomePageImage; ?>" class="doctor-one__person" alt="<?php echo APP_NAME; ?>" style="width: 42.76%;" />
    <div class="row no-gutters justify-content-end">
     <div class="col-lg-7">
      <div class="doctor-one__content">
       <h1 class="doctor-one__title"><?php echo SECURE($Request->HomePageTitle, "d"); ?></h1><!-- /.doctor-one__title -->
       <p class="doctor-one__text">
        <?php echo SECURE($Request->HomePageDesc, "d"); ?>
       </p>
      </div><!-- /.doctor-one__content -->
     </div><!-- /.col-lg-7 -->
    </div><!-- /.row -->
  <?php }
  } ?>
 </div><!-- /.container -->
</section><!-- /.doctor-one -->