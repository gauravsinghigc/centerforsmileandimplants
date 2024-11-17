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
        <h2 class="inner-banner__title"><?php echo $PageName; ?></h2><!-- /.inner-banner__title -->
        <ul class="thm-breadcrumb">
          <li class="thm-breadcrumb__item"><a class="thm-breadcrumb__link" href="../">Home</a></li>
          <li class="thm-breadcrumb__item current"><a class="thm-breadcrumb__link" href="<?php echo DOMAIN; ?>/web/about-us/"><?php echo $PageName; ?></a></li>
        </ul><!-- /.thm-breadcrumb -->
      </div><!-- /.container -->
    </section><!-- /.inner-banner -->

    <section class="container">
      <div class="row gallery-view m-t-10">
        <?php
        if (isset($_GET['view'])) {
          $PhotoGalleryName = SECURE($_GET['view'], "d");
          $FetchPhotoGallery = FetchConvertIntoArray("SELECT * FROM photogallery where PhotoGalleryName='$PhotoGalleryName' GROUP BY PhotoGalleryName", true);
        } else {
          $FetchPhotoGallery = FetchConvertIntoArray("SELECT * FROM photogallery GROUP BY PhotoGalleryName", true);
        }
        if ($FetchPhotoGallery ==  null) {
          NoData("No Image Found!");
        } else {
          foreach ($FetchPhotoGallery as $Request) {
        ?>
            <div class="col-md-12 mt-5">
              <h3 class="bg-primary p-2 text-white"><?php echo SECURE($Request->PhotoGalleryName, "d"); ?></h3>
            </div>
            <div class="p-4">
              <div class="row">
                <?php
                $FetchPhotoGallery = FetchConvertIntoArray("SELECT * FROM photogallery where PhotoGalleryName='" . $Request->PhotoGalleryName . "' ORDER by PhotoGalleryId ASC", true);
                if ($FetchPhotoGallery ==  null) {
                  NoData("No Image Found!");
                } else {
                  foreach ($FetchPhotoGallery as $Request) {
                ?>
                    <div class="col-lg-4 col-md-4 col-sm-6 col-6">
                      <a href="<?php echo STORAGE_URL; ?>/gallery/<?php echo $Request->PhotoGalleryFile; ?>" target="_blank">
                        <img src="<?php echo STORAGE_URL; ?>/gallery/<?php echo $Request->PhotoGalleryFile; ?>" title="<?php echo $Request->PhotoGalleryFile; ?>" alt="<?php echo $Request->PhotoGalleryFile; ?>" class="img-fluid br10">
                      </a>
                    </div>
                    <div class="details">
                      <h5><?php echo SECURE($Request->PhotoGalleryCaption, "d"); ?></h5>
                      <php><?php echo SECURE($Request->PhotoGalleryDetails, "d"); ?></p>
                    </div>
                <?php
                  }
                } ?>
              </div>
            </div>
        <?php  }
        } ?>
      </div>
    </section>


    <?php include $DirLevel . 'include/web/footer.php'; ?>

    <?php include $DirLevel . 'include/web/footer_files.php'; ?>
</body>

</html>