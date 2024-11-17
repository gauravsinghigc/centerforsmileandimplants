<?php
//require files inludes
$PageName = "Speciality";
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
     <li class="thm-breadcrumb__item"><a class="thm-breadcrumb__link" href="<?php echo DOMAIN; ?>">Home</a></li>
     <li class="thm-breadcrumb__item current"><a class="thm-breadcrumb__link" href="<?php echo DOMAIN; ?>/web/speciality/"><?php echo $PageName; ?></a></li>
    </ul><!-- /.thm-breadcrumb -->
   </div><!-- /.container -->
  </section><!-- /.inner-banner -->

  <section class="service-two">
   <div class="container">
    <div class="block-title text-left">
     <h2 class="block-title__title"><?php echo APP_NAME; ?> offers various Dental Services</h2><!-- /.block-title__title -->
     <!-- /.block-title__text -->
    </div><!-- /.block-title -->
    <div class="row">
     <?php
     $FetchLists = FetchConvertIntoArray("SELECT * FROM specialities ORDER BY Specialitiesid ASC", true);
     if ($FetchLists != null) {
      foreach ($FetchLists as $Request) { ?>
       <div class="col-lg-4">
        <div class="service-two__single">
         <div class="service-two__image">
          <img src="<?php echo STORAGE_URL; ?>/speciality/<?php echo $Request->SpecialityImage; ?>" alt="<?php echo SECURE($Request->SpecialityName, "d"); ?>" title="<?php echo SECURE($Request->SpecialityName, "d"); ?>" />
          <div class="service-two__image-hover">
           <a href="<?php echo DOMAIN; ?>/web/speciality/details/?view=<?php echo SECURE($Request->Specialitiesid); ?>"><i class="fa fa-link"></i></a>
          </div><!-- /.service-two__image-hover -->
         </div><!-- /.service-two__image -->
         <div class="service-two__content">
          <h3 class="service-two__title"><a href="<?php echo DOMAIN; ?>/web/speciality/details/?view=<?php echo SECURE($Request->Specialitiesid); ?>"><?php echo SECURE($Request->SpecialityName, "d"); ?></a></h3><!-- /.service-two__title -->
          <p class="service-two__text">
           <?php echo html_entity_decode(SECURE($Request->SpecialityDescriptions, "d")); ?>
          </p><!-- /.service-two__text -->
          <a href="<?php echo DOMAIN; ?>/web/speciality/details/?view=<?php echo SECURE($Request->Specialitiesid); ?>" class="service-two__link">Read More</a>
         </div><!-- /.service-two__content -->
        </div><!-- /.service-two__single -->
       </div><!-- /.col-lg-3 -->
     <?php }
     } ?>
    </div><!-- /.row -->
   </div><!-- /.container -->
  </section><!-- /.service-two -->

  <?php include '../../include/web/booking.php'; ?>

  <?php include $DirLevel . 'include/web/footer.php'; ?>

  <?php include $DirLevel . 'include/web/footer_files.php'; ?>
</body>

</html>