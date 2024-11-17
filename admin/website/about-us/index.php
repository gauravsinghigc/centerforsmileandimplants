<?php
//page variables
$PageName = "About Us";
$DirLevel = "../../../";


//required files
require $DirLevel . 'require/modules.php';
require $DirLevel . 'require/admin/access-control.php';
require $DirLevel . 'require/admin/sessionvariables.php';

if (isset($_GET['pageview'])) {
  $PageViewId = SECURE($_GET['pageview'], "d");
  $_SESSION['PAGE_VIEW_ID'] = $PageViewId;
} elseif (isset($_SESSION['PAGE_VIEW_ID'])) {
  $PageViewId = $_SESSION['PAGE_VIEW_ID'];
} else {
  $PageViewId = 0;
}

if ($PageViewId != 0) {
  $AboutUsPageId = $_SESSION['PAGE_VIEW_ID'];
  $AboutUsPageName = FETCH("SELECT * FROM aboutus where AboutUsPageId='$PageViewId'", "AboutUsPageName");
  $AboutUsPageImage = FETCH("SELECT * FROM aboutus where AboutUsPageId='$AboutUsPageId'", "AboutUsPageImage");
  $AboutUsPageDescriptions = FETCH("SELECT * FROM aboutus where AboutUsPageId='$AboutUsPageId'", "AboutUsPageDescriptions");
  $AboutUsPageStatus = FETCH("SELECT * FROM aboutus where AboutUsPageId='$AboutUsPageId'", "AboutUsPageStatus");
  $AboutUsPageUpdatedAt = ReturnValue(FETCH("SELECT * FROM aboutus where AboutUsPageId='$AboutUsPageId'", "AboutUsPageUpdatedAt"));
} else {
  if ($AboutUsPageId = CHECK("SELECT * FROM aboutus ORDER BY AboutUsPageId ASC LIMIT 0, 1") == null) {
    $AboutUsPageId = null;
    $AboutUsPageName = "";
    $AboutUsPageImage = "";
    $AboutUsPageDescriptions = "";
    $AboutUsPageUpdatedAt = "";
  } else {
    $AboutUsPageId = FETCH("SELECT * FROM aboutus ORDER BY AboutUsPageId ASC LIMIT 0, 1", "AboutUsPageId");
    $AboutUsPageName = FETCH("SELECT * FROM aboutus where AboutUsPageId='$AboutUsPageId'", "AboutUsPageName");
    $AboutUsPageImage = FETCH("SELECT * FROM aboutus where AboutUsPageId='$AboutUsPageId'", "AboutUsPageImage");
    $AboutUsPageDescriptions = FETCH("SELECT * FROM aboutus where AboutUsPageId='$AboutUsPageId'", "AboutUsPageDescriptions");
    $AboutUsPageStatus = FETCH("SELECT * FROM aboutus where AboutUsPageId='$AboutUsPageId'", "AboutUsPageStatus");
    $AboutUsPageUpdatedAt = ReturnValue(FETCH("SELECT * FROM aboutus where AboutUsPageId='$AboutUsPageId'", "AboutUsPageUpdatedAt"));
  }
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title><?php echo SECURE($AboutUsPageName, "d"); ?> | <?php echo APP_NAME; ?></title>
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
                    <h3 class="m-b-0">About Us Sub Pages</h3>
                    <a href="add-page.php" class="btn btn-sm btn-danger"><i class="fa fa-plus"></i> Add Page</a>
                  </div>
                </div>
              </div>
              <br>
              <?php
              if ($AboutUsPageId == null) {
                NoData("No Page Found!");
              } else { ?>
                <div class="row">
                  <div class="col-md-4 col-lg-4 col-sm-5 col-12">
                    <div class="shadow-lg p-1r br10">
                      <h3>Available Pages</h3>
                      <?php include 'common.php'; ?>
                    </div>
                  </div>
                  <div class="col-md-8 col-lg-8 col-sm-7 col-12">
                    <div class="shadow-lg br10 p-1r">
                      <h3><b>Update Sub Pages :</b></h3>
                      <hr>
                      <h4 class="fs-20"><?php echo SECURE($AboutUsPageName, "d"); ?></h4>
                      <div class="row m-b-20">
                        <div class="col-md-4">
                          <div class="br10 p-1r">
                            <h4>Feature Image</h4>
                            <img src="<?php echo STORAGE_URL; ?>/aboutus/<?php echo $AboutUsPageImage; ?>" class="w-100 br10">
                          </div>
                        </div>
                        <div class="col-md-8">
                          <h3>Update Feature Image</h3>
                          <br>
                          <form class="form m-t-3" action="../../../controller/pagecontroller.php" method="POST" enctype="multipart/form-data">
                            <input type="text" name="updateaboutuspageimage" value="<?php echo SECURE($AboutUsPageName, "e"); ?>" hidden="">
                            <input type="text" name="access_validation" value="<?php echo SECURE($AboutUsPageId, "e"); ?>" hidden="">
                            <?php CurrentFile($AboutUsPageImage); ?>
                            <?php FormPrimaryInputs(true); ?>
                            <label for="UploadProfileimg">
                              <img src="<?php echo STORAGE_URL_D; ?>/tool-img/img-upload.png" class="w-pr-10 upload-icon">
                            </label>
                            <input type="file" class="hidden" onchange="form.submit()" hidden="" name="AboutUsPageImage" id="UploadProfileimg" value="<?php echo $AboutUsPageImage; ?>" accept="images/*">
                          </form>
                        </div>
                      </div>
                      <form action="<?php echo DOMAIN; ?>/controller/pagecontroller.php" method="POST" enctype="multipart/form-data">
                        <?php FormPrimaryInputs(true); ?>
                        <div class="row">
                          <div class="form-group col-md-6">
                            <label>Page Name</label>
                            <input type="text" value="<?php echo SECURE($AboutUsPageName, "d"); ?>" name="AboutUsPageName" class="form-control-2" required="">
                          </div>
                          <div class="form-group col-md-6">
                            <label>Page Status</label>
                            <select class="form-control-2" name="AboutUsPageStatus" required="">
                              <?php SelectStatus($AboutUsPageStatus); ?>
                            </select>
                          </div>
                          <div class="form-group col-md-12">
                            <label>Page Descriptions</label>
                            <textarea class="form-control-2" name="AboutUsPageDescriptions" rows="20" id="editor" style="height:auto !important;"><?php echo SECURE($AboutUsPageDescriptions, "d"); ?></textarea>
                          </div>
                          <div class="col-md-12 m-t-15">
                            <button type="submit" name="UpdatePage" value="<?php echo SECURE($AboutUsPageId, "e"); ?>" class="btn btn-md app-bg">Update Page</button>
                            <a href="<?php echo DOMAIN; ?>/controller/pagecontroller.php?del_ab_page=<?php echo SECURE($AboutUsPageId, "e"); ?>&access_url=<?php echo SECURE(DOMAIN . "/admin/website/about-us", "e"); ?>" class="btn btn-lg btn-danger float-end"><i class="fa fa-trash"></i></a>
                          </div>
                        </div>
                      </form>
                    </div>
                  </div>
                </div>
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