<?php
//page variables
$PageName = "Sliders";
$DirLevel = "../../../";


//required files
require $DirLevel . 'require/modules.php';
require $DirLevel . 'require/admin/access-control.php';
require $DirLevel . 'require/admin/sessionvariables.php';

if (isset($_GET['pageview'])) {
  $PageViewId = SECURE($_GET['pageview'], "d");
  $_SESSION['SLIDER_VIEW_ID'] = $PageViewId;
} elseif (isset($_SESSION['SLIDER_VIEW_ID'])) {
  $PageViewId = $_SESSION['SLIDER_VIEW_ID'];
} else {
  $PageViewId = 0;
}

if ($PageViewId != 0) {
  $SliderId = $_SESSION['SLIDER_VIEW_ID'];
  $SliderTagline = FETCH("SELECT * FROM sliders where SliderId='$SliderId'", "SliderTagline");
  $SliderName = FETCH("SELECT * FROM sliders where SliderId='$SliderId'", "SliderName");
  $SliderDescription = FETCH("SELECT * FROM sliders where SliderId='$SliderId'", "SliderDescription");
  $SliderImage = FETCH("SELECT * FROM sliders where SliderId='$SliderId'", "SliderImage");
  $SliderOpenUrl = FETCH("SELECT * FROM sliders where SliderId='$SliderId'", "SliderOpenUrl");
  $SliderCreatedAt = FETCH("SELECT * FROM sliders where SliderId='$SliderId'", "SliderCreatedAt");
  $SliderTextUrl = FETCH("SELECT * FROM sliders where SliderId='$SliderId'", "SliderTextUrl");
} else {
  if ($SliderId = CHECK("SELECT * FROM sliders ORDER BY SliderId ASC LIMIT 0, 1") == null) {
    $SliderId = null;
    $SliderName = "";
    $SliderDescription = "";
    $SliderImage = "";
    $SliderOpenUrl = "";
    $SliderCreatedAt = "";
    $SliderTextUrl = "";
  } else {
    $SliderId = FETCH("SELECT * FROM sliders ORDER BY SliderId ASC LIMIT 0, 1", "SliderId");
    $SliderTagline = FETCH("SELECT * FROM sliders ORDER BY SliderId='$SliderId'", "SliderTagline");
    $SliderName = FETCH("SELECT * FROM sliders where SliderId='$SliderId'", "SliderName");
    $SliderDescription = FETCH("SELECT * FROM sliders where SliderId='$SliderId'", "SliderDescription");
    $SliderImage = FETCH("SELECT * FROM sliders where SliderId='$SliderId'", "SliderImage");
    $SliderOpenUrl = FETCH("SELECT * FROM sliders where SliderId='$SliderId'", "SliderOpenUrl");
    $SliderCreatedAt = FETCH("SELECT * FROM sliders where SliderId='$SliderId'", "SliderCreatedAt");
    $SliderTextUrl = FETCH("SELECT * FROM sliders where SliderId='$SliderId'", "SliderTextUrl");
  }
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title><?php echo SECURE($SliderName, "d"); ?> | <?php echo APP_NAME; ?></title>
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
                    <h3 class="m-b-0">All Sliders</h3>
                    <a href="add-page.php" class="btn btn-sm btn-danger"><i class="fa fa-plus"></i> Add Page</a>
                  </div>
                </div>
              </div>
              <br>
              <?php
              if ($SliderId == null) {
                NoData("No Page Found!");
              } else { ?>
                <div class="row">
                  <div class="col-md-4 col-lg-4 col-sm-5 col-12">
                    <div class="shadow-lg p-1r br10">
                      <h3>Available Sliders</h3>
                      <?php include 'common.php'; ?>
                    </div>
                  </div>
                  <div class="col-md-8 col-lg-8 col-sm-7 col-12">
                    <div class="shadow-lg br10 p-1r">
                      <h3><b>Update Slider :</b></h3>
                      <hr>
                      <h4 class="fs-20"><?php echo SECURE($SliderName, "d"); ?></h4>
                      <div class="row m-b-20">
                        <div class="col-md-4">
                          <div class="br10 p-1r">
                            <h4>Slider Image</h4>
                            <img src="<?php echo STORAGE_URL; ?>/sliders/<?php echo $SliderImage; ?>" class="w-100 br10">
                          </div>
                        </div>
                        <div class="col-md-8">
                          <h3>Update Slider Image</h3>
                          <br>
                          <form class="form m-t-3" action="../../../controller/slidercontroller.php" method="POST" enctype="multipart/form-data">
                            <input type="text" name="updatesliderimage" value="<?php echo SECURE($SliderName, "e"); ?>" hidden="">
                            <input type="text" name="access_validation" value="<?php echo SECURE($SliderId, "e"); ?>" hidden="">
                            <?php CurrentFile($SliderImage); ?>
                            <?php FormPrimaryInputs(true); ?>
                            <label for="UploadProfileimg">
                              <img src="<?php echo STORAGE_URL_D; ?>/tool-img/img-upload.png" class="w-pr-10 upload-icon">
                            </label>
                            <input type="file" class="hidden" onchange="form.submit()" hidden="" name="SliderImage" id="UploadProfileimg" value="<?php echo $PageFeatureImage; ?>" accept="images/*">
                          </form>
                        </div>
                      </div>
                      <form action="<?php echo DOMAIN; ?>/controller/slidercontroller.php" method="POST" enctype="multipart/form-data">
                        <?php FormPrimaryInputs(true); ?>
                        <div class="row">
                          <div class="form-group col-md-6">
                            <label>Slider Tagline</label>
                            <input type="text" name="SliderTagline" value="<?php echo SECURE($SliderTagline, 'd'); ?>" class="form-control-2" required="">
                          </div>
                          <div class="form-group col-md-6">
                            <label>Slider Name</label>
                            <input type="text" name="SliderName" value="<?php echo SECURE($SliderName, "d"); ?>" class="form-control-2" required="">
                          </div>
                          <div class="form-group col-md-6">
                            <label>Slider Button Url</label>
                            <input type="url" name="SliderOpenUrl" value="<?php echo SECURE($SliderOpenUrl, "d"); ?>" class="form-control-2" required="">
                          </div>
                          <div class="form-group col-md-6">
                            <label>Slider Button Text</label>
                            <input type="text" name="SliderTextUrl" value="<?php echo SECURE($SliderTextUrl, "d"); ?>" class="form-control-2" required="">
                          </div>
                          <div class="form-group col-md-12">
                            <label>Slider Descriptions</label>
                            <textarea class="form-control-2" name="SliderDescription" rows="5" id="editor" style="height:auto !important;"><?php echo SECURE($SliderDescription, "d"); ?></textarea>
                          </div>
                          <div class="col-md-12 m-t-15">
                            <button type="submit" name="UpdateSliders" value="<?php echo SECURE($SliderId, "e"); ?>" class="btn btn-md app-bg">Update Slider</button>
                            <a href="<?php echo DOMAIN; ?>/controller/slidercontroller.php?del_primary_slider=<?php echo SECURE($PagedId, "e"); ?>&access_url=<?php echo SECURE(DOMAIN . "/admin/website/sliders", "e"); ?>" class="btn btn-lg btn-danger float-end"><i class="fa fa-trash"></i></a>
                          </div>
                        </div>
                      </form>
                    <?php } ?>
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