<?php
//page variables
$PageName = "Add New Pages";
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
            <div class="panel-heading">
              <h3 class="m-t-0"><?php echo $PageName; ?></h3>
            </div>
            <div class="panel-body">
              <form action="<?php echo DOMAIN; ?>/controller/pagecontroller.php" method="POST" enctype="multipart/form-data">
                <?php FormPrimaryInputs(true); ?>
                <div class="row">
                  <div class="form-group col-md-6">
                    <label>Page Name</label>
                    <input type="text" value="" name="PageName" class="form-control-2" required="">
                  </div>
                  <div class="form-group col-md-6">
                    <label>Display Name</label>
                    <input type="text" value="" name="PageDisplayName" class="form-control-2" required="">
                  </div>
                  <?php UploadImageInput("PageFeatureImage", "PageFeatureImage", "images/*", true, "form-group col-md-12"); ?>
                  <div class="form-group col-md-12">
                    <label>Page Descriptions</label>
                    <textarea class="form-control-2" name="PageContent" rows="20" id="editor" style="height:auto !important;"></textarea>
                  </div>
                  <div class="col-md-12 m-t-15">
                    <button type="submit" name="CreateNewPages" value="" class="btn btn-lg app-bg">Create Page</button>
                    <a href="index.php" class="btn btn-lg btn-danger">Back to All</a>
                  </div>
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