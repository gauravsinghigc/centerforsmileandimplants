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
  $_SESSION['PAGE_VIEW_ID_2'] = $PageViewId;
} elseif (isset($_SESSION['PAGE_VIEW_ID_2'])) {
  $PageViewId = $_SESSION['PAGE_VIEW_ID_2'];
} else {
  $PageViewId = 0;
}

if ($PageViewId != 0) {
  $PagedId = $_SESSION['PAGE_VIEW_ID_2'];
  $PageName = FETCH("SELECT * FROM pages where PagedId='$PagedId'", "PageName");
  $PageContent = FETCH("SELECT * FROM pages where PagedId='$PagedId'", "PageContent");
  $PageFeatureImage = FETCH("SELECT * FROM pages where PagedId='$PagedId'", "PageFeatureImage");
  $PageDisplayName = FETCH("SELECT * FROM pages where PagedId='$PagedId'", "PageDisplayName");
} else {
  if ($PagedId = CHECK("SELECT * FROM pages ORDER BY PagedId ASC LIMIT 0, 1") == null) {
    $PagedId = null;
    $PageName = "";
    $PageContent = "";
    $PageFeatureImage = "";
    $PageDisplayName = "";
  } else {
    $PagedId = FETCH("SELECT * FROM pages ORDER BY PagedId ASC LIMIT 0, 1", "PagedId");
    $PageName = FETCH("SELECT * FROM pages where PagedId='$PagedId'", "PageName");
    $PageContent = FETCH("SELECT * FROM pages where PagedId='$PagedId'", "PageContent");
    $PageFeatureImage = FETCH("SELECT * FROM pages where PagedId='$PagedId'", "PageFeatureImage");
    $PageDisplayName = FETCH("SELECT * FROM pages where PagedId='$PagedId'", "PageDisplayName");
  }
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title><?php echo SECURE($PageName, "d"); ?> | <?php echo APP_NAME; ?></title>
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
                    <h3 class="m-b-0">Primary Pages</h3>
                    <a href="add-page.php" class="btn btn-sm btn-danger"><i class="fa fa-plus"></i> Add Page</a>
                  </div>
                </div>
              </div>
              <br>
              <?php
              if ($PagedId == null) {
                NoData("No Page Found!");
              } else { ?>
                <div class="row">
                  <div class="col-md-4 col-lg-4 col-sm-5 col-12">
                    <div class="shadow-lg p-1r br10">
                      <h3>Available Primary Pages</h3>
                      <?php include 'common.php'; ?>
                    </div>
                  </div>
                  <div class="col-md-8 col-lg-8 col-sm-7 col-12">
                    <div class="shadow-lg br10 p-1r">
                      <h3><b>Update Primary Page :</b></h3>
                      <hr>
                      <h4 class="fs-20"><?php echo SECURE($PageName, "d"); ?></h4>
                      <div class="row m-b-20">
                        <div class="col-md-4">
                          <div class="br10 p-1r">
                            <h4>Feature Image</h4>
                            <img src="<?php echo STORAGE_URL; ?>/pages/<?php echo $PageFeatureImage; ?>" class="w-100 br10">
                          </div>
                        </div>
                        <div class="col-md-8">
                          <h3>Update Feature Image</h3>
                          <br>
                          <form class="form m-t-3" action="../../../controller/pagecontroller.php" method="POST" enctype="multipart/form-data">
                            <input type="text" name="updatepageimage" value="<?php echo SECURE($PageName, "e"); ?>" hidden="">
                            <input type="text" name="access_validation" value="<?php echo SECURE($PagedId, "e"); ?>" hidden="">
                            <?php CurrentFile($PageFeatureImage); ?>
                            <?php FormPrimaryInputs(true); ?>
                            <label for="UploadProfileimg">
                              <img src="<?php echo STORAGE_URL_D; ?>/tool-img/img-upload.png" class="w-pr-10 upload-icon">
                            </label>
                            <input type="file" class="hidden" onchange="form.submit()" hidden="" name="PageFeatureImage" id="UploadProfileimg" value="<?php echo $PageFeatureImage; ?>" accept="images/*">
                          </form>
                        </div>
                      </div>
                      <form action="<?php echo DOMAIN; ?>/controller/pagecontroller.php" method="POST" enctype="multipart/form-data">
                        <?php FormPrimaryInputs(true); ?>
                        <div class="row">
                          <div class="form-group col-md-6">
                            <label>Page Name</label>
                            <input type="text" value="<?php echo SECURE($PageName, "d"); ?>" name="PageName" class="form-control-2" required="">
                          </div>
                          <div class="form-group col-md-6">
                            <label>Display Name</label>
                            <input type="text" value="<?php echo SECURE($PageDisplayName, "d"); ?>" name="PageDisplayName" class="form-control-2" required="">
                          </div>
                          <div class="form-group col-md-12">
                            <label>Page Descriptions</label>
                            <textarea class="form-control-2" name="PageContent" rows="20" id="editor" style="height:auto !important;"><?php echo SECURE($PageContent, "d"); ?></textarea>
                          </div>
                          <div class="col-md-12 m-t-15">
                            <button type="submit" name="UpdatePrimaryPage" value="<?php echo SECURE($PagedId, "e"); ?>" class="btn btn-md app-bg">Update Details</button>
                            <a href="<?php echo DOMAIN; ?>/controller/pagecontroller.php?del_primary_page=<?php echo SECURE($PagedId, "e"); ?>&access_url=<?php echo SECURE(DOMAIN . "/admin/website/pages", "e"); ?>" class="btn btn-lg btn-danger float-end"><i class="fa fa-trash"></i></a>
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