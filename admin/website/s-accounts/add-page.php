<?php
//page variables
$PageName = "Add New Social Profile";
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
              <form action="<?php echo DOMAIN; ?>/controller/socialaccountcontroller.php" method="POST" enctype="multipart/form-data">
                <?php FormPrimaryInputs(true); ?>
                <div class="row">
                  <div class="form-group col-md-6">
                    <label>Account Name</label>
                    <input type="text" value="" name="SocialAccountName" class="form-control-2" required="">
                  </div>
                  <div class="form-group col-md-6">
                    <label>Account Icon</label>
                    <select name="SocialAccountIcon" class="form-control-2" required="">
                      <?php SelectIcons($data = false); ?>
                    </select>
                  </div>
                  <div class="form-group col-md-6">
                    <label>Account Url</label>
                    <input type="url" value="" name="SocialAccountUrl" class="form-control-2" required="">
                  </div>
                  <div class="form-group col-md-6">
                    <label>Open In</label>
                    <select name="SocialAccountOpenIn" class="form-control-2" required="">
                      <option class="_blank">New Tab</option>
                      <option class="">Same Tab</option>
                    </select>
                  </div>
                  <div class="form-group col-md-6">
                    <label>Account Status</label>
                    <select name="SocialAccountStatus" class="form-control-2" required="">
                      <?php echo SelectStatus(1); ?>
                    </select>
                  </div>
                  <div class="col-md-12 m-t-15">
                    <button type="submit" name="CreateNewSocialAccount" class="btn btn-lg app-bg">Create Social Account</button>
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