<?php
//page variables
$PageName = "Home Page";
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
                    <h3 class="m-b-0">Home Pages</h3>
                  </div>
                </div>
              </div>
              <br>
              <?php
              $fetchHomePages = FetchConvertIntoArray("SELECT * FROM homepage where HomePageName='HomePage'", true);
              if ($fetchHomePages != null) {
                foreach ($fetchHomePages as $Request) { ?>
                  <div class="row m-b-20">
                    <div class="col-md-4">
                      <div class="br10 p-1r">
                        <h4>Feature Image</h4>
                        <img src="<?php echo STORAGE_URL; ?>/home/<?php echo $Request->HomePageImage; ?>" class="w-100 br10">
                      </div>
                    </div>
                    <div class="col-md-8">
                      <h4>Update Feature Image</h4>
                      <br><br>
                      <form class="form m-t-3" action="../../../controller/homepagecontroller.php" method="POST" enctype="multipart/form-data">
                        <input type="text" name="UpdateHomePageImage" value="<?php echo SECURE($Request->HomePageName, "e"); ?>" hidden="">
                        <input type="text" name="access_validation" value="<?php echo SECURE($Request->HomePageId, "e"); ?>" hidden="">
                        <?php CurrentFile($Request->HomePageImage); ?>
                        <?php FormPrimaryInputs(true); ?>
                        <label for="UploadProfileimg">
                          <img src="<?php echo STORAGE_URL_D; ?>/tool-img/img-upload.png" class="w-pr-10 upload-icon">
                        </label>
                        <input type="file" class="hidden" onchange="form.submit()" hidden="" name="HomePageImage" id="UploadProfileimg" value="<?php echo $AboutUsPageImage; ?>" accept="images/*">
                      </form>
                    </div>
                  </div>
                  <form action="<?php echo DOMAIN; ?>/controller/homepagecontroller.php" method="POST" enctype="multipart/form-data">
                    <?php FormPrimaryInputs(true); ?>
                    <div class="row">
                      <div class="form-group col-md-6">
                        <label>Page Name</label>
                        <input type="text" name="HomePageName" value="<?php echo $Request->HomePageName; ?>" readonly="" class="form-control-2" required="">
                      </div>
                      <div class="form-group col-md-6">
                        <label>Heading Name</label>
                        <input type="text" name="HomePageTitle" value="<?php echo SECURE($Request->HomePageTitle, "d"); ?>" class="form-control-2" required="">
                      </div>
                      <div class="form-group col-md-12">
                        <label>Page Description</label>
                        <textarea name="HomePageDesc" rows="15" id="editor" class="form-control-2 height-auto"><?php echo SECURE($Request->HomePageDesc, "d"); ?></textarea>
                      </div>
                      <div class="col-md-12">
                        <br>
                        <button name="UpdateHomePage" class="btn btn-lg app-bg" value="<?php echo SECURE($Request->HomePageId, "e"); ?>">Update Details</button>
                      </div>
                    </div>
                  </form>
              <?php }
              } ?>
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