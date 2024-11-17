<?php
//page variables
$PageName = "Photo Gallery";
$DirLevel = "../../../";


//required files
require $DirLevel . 'require/modules.php';
require $DirLevel . 'require/admin/access-control.php';
require $DirLevel . 'require/admin/sessionvariables.php';

?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title><?php echo $PageName; ?> | <?php echo APP_NAME; ?></title>
  <?php include $DirLevel . 'include/admin/header_files.php'; ?>

</head>

<body>
  <div id="container" class="effect mainnav-lg navbar-fixed mainnav-fixed">
    <?php include $DirLevel . 'include/admin/header.php'; ?>

    <div class="boxed">
      <!--CONTENT CONTAINER-->
      <!--===================================================-->
      <div id="content-container">
        <div id="page-content">
          <!--====start content===============================================-->

          <div class="panel">
            <div class="panel-body">
              <div class="row">
                <div class="col-md-12">
                  <div class="flex-s-b">
                    <h3 class="m-b-0"><?php echo $PageName; ?></h3>
                    <a href="add-page.php" class="btn btn-sm btn-primary"><i class="fa fa-upload"></i> Upload Image</a>
                    <form action="<?php echo DOMAIN; ?>/controller/gallerycontroller.php" method="POST">
                      <?php FormPrimaryInputs(true); ?>
                      <button type="submit" name="DeleteImages" class="btn btn-sm btn-danger"><i class="fa fa-trash"></i> Delete Selected</button>
                  </div>
                </div>
              </div>
              <div class="row gallery-view m-t-10">
                <?php
                $FetchPhotoGallery = FetchConvertIntoArray("SELECT * FROM photogallery GROUP BY PhotoGalleryName", true);
                if ($FetchPhotoGallery ==  null) {
                  NoData("No Image Found!");
                } else {
                  foreach ($FetchPhotoGallery as $Request) {
                ?>
                    <div class="col-md-12">
                      <h4 class="app-bg p-t-10 p-b-10 p-l-5"><?php echo SECURE($Request->PhotoGalleryName, "d"); ?></h4>
                    </div>
                    <div class="p-1r">
                      <?php
                      $FetchPhotoGallery = FetchConvertIntoArray("SELECT * FROM photogallery where PhotoGalleryName='" . $Request->PhotoGalleryName . "' ORDER by PhotoGalleryId ASC", true);
                      if ($FetchPhotoGallery ==  null) {
                        NoData("No Image Found!");
                      } else {
                        foreach ($FetchPhotoGallery as $Request) {
                      ?>
                          <div class="col-lg-3 col-md-3 col-sm-4 col-4">
                            <div class="shadow-lg">
                              <input type="checkbox" name="PhotoGalleryId[]" value="<?php echo SECURE($Request->PhotoGalleryId, "e"); ?>" class="sel-box">
                              <img src="<?php echo STORAGE_URL; ?>/gallery/<?php echo $Request->PhotoGalleryFile; ?>" title="<?php echo $Request->PhotoGalleryFile; ?>" alt="<?php echo $Request->PhotoGalleryFile; ?>" class="img-fluid br10">
                              <a href="<?php echo DOMAIN; ?>/controller/gallerycontroller.php?del_gallery=<?php echo SECURE($Request->PhotoGalleryId, "e"); ?>&access_url=<?php echo SECURE(GET_URL(), "e"); ?>" class="btn btn-sm btn-danger fs-11 g-del-btn"><i class="fa fa-times fs-11"></i></a>
                            </div>
                            <div class="gallery-desc"></div>
                          </div>
                      <?php
                        }
                      } ?>
                    </div>
                <?php  }
                } ?>
              </div>
              </form>
            </div>
          </div>

          <!--End page content-->
        </div>

        <?php include $DirLevel . 'include/admin/sidebar.php'; ?>
      </div>
      <?php include $DirLevel . 'include/admin/footer.php'; ?>
    </div>

    <?php include $DirLevel . 'include/admin/footer_files.php'; ?>
</body>

</html>