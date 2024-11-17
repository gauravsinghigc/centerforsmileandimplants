<?php
//page variables
$PageName = "All Social Accounts";
$DirLevel = "../../../";


//required files
require $DirLevel . 'require/modules.php';
require $DirLevel . 'require/admin/access-control.php';
require $DirLevel . 'require/admin/sessionvariables.php';

if (isset($_GET['pageview'])) {
  $PageViewId = SECURE($_GET['pageview'], "d");
  $_SESSION['SOCIAL_ID'] = $PageViewId;
} elseif (isset($_SESSION['SOCIAL_ID'])) {
  $PageViewId = $_SESSION['SOCIAL_ID'];
} else {
  $PageViewId = 0;
}

if ($PageViewId != 0) {
  $SocialAccountid = $_SESSION['SOCIAL_ID'];
  $SocialAccountName = FETCH("SELECT * FROM socialaccounts where SocialAccountid='$SocialAccountid'", "SocialAccountName");
  $SocialAccountIcon = FETCH("SELECT * FROM socialaccounts where SocialAccountid='$SocialAccountid'", "SocialAccountIcon");
  $SocialAccountUrl = FETCH("SELECT * FROM socialaccounts where SocialAccountid='$SocialAccountid'", "SocialAccountUrl");
  $SocialAccountOpenIn = FETCH("SELECT * FROM socialaccounts where SocialAccountid='$SocialAccountid'", "SocialAccountOpenIn");
  $SocialAccountStatus = FETCH("SELECT * FROM socialaccounts where SocialAccountid='$SocialAccountid'", "SocialAccountStatus");
  $SocialAccountCreatedAt = FETCH("SELECT * FROM socialaccounts where SocialAccountid='$SocialAccountid'", "SocialAccountCreatedAt");
} else {
  if ($SliderId = CHECK("SELECT * FROM socialaccounts ORDER BY SocialAccountid ASC LIMIT 0, 1") == null) {
    $SocialAccountid = null;
    $SocialAccountName = "";
    $SocialAccountIcon = "";
    $SocialAccountUrl = "";
    $SocialAccountOpenIn = "";
    $SocialAccountStatus = "";
    $SocialAccountCreatedAt = "";
  } else {
    $SocialAccountid = FETCH("SELECT * FROM socialaccounts ORDER BY SocialAccountid ASC LIMIT 0, 1", "SocialAccountid");
    $SocialAccountName = FETCH("SELECT * FROM socialaccounts where SocialAccountid='$SocialAccountid'", "SocialAccountName");
    $SocialAccountIcon = FETCH("SELECT * FROM socialaccounts where SocialAccountid='$SocialAccountid'", "SocialAccountIcon");
    $SocialAccountUrl = FETCH("SELECT * FROM socialaccounts where SocialAccountid='$SocialAccountid'", "SocialAccountUrl");
    $SocialAccountOpenIn = FETCH("SELECT * FROM socialaccounts where SocialAccountid='$SocialAccountid'", "SocialAccountOpenIn");
    $SocialAccountStatus = FETCH("SELECT * FROM socialaccounts where SocialAccountid='$SocialAccountid'", "SocialAccountStatus");
    $SocialAccountCreatedAt = FETCH("SELECT * FROM socialaccounts where SocialAccountid='$SocialAccountid'", "SocialAccountCreatedAt");
  }
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title><?php echo SECURE($SocialAccountName, "d"); ?> | <?php echo APP_NAME; ?></title>
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
                    <a href="add-page.php" class="btn btn-sm btn-danger"><i class="fa fa-plus"></i> Add Profile</a>
                  </div>
                </div>
              </div>
              <br>
              <?php
              if ($SocialAccountid == null) {
                NoData("No Account Found!");
              } else { ?>
                <div class="row">
                  <div class="col-md-4 col-lg-4 col-sm-5 col-12">
                    <div class="shadow-lg p-1r br10">
                      <h3>Available Profile</h3>
                      <?php include 'common.php'; ?>
                    </div>
                  </div>
                  <div class="col-md-8 col-lg-8 col-sm-7 col-12">
                    <div class="shadow-lg br10 p-1r">
                      <h3><b>Update Social Account :</b></h3>
                      <hr>
                      <h4 class="fs-20"><?php echo SECURE($SocialAccountName, "d"); ?>
                        <a href="<?php echo SECURE($SocialAccountUrl, "d"); ?>" target="_blank" class="btn btn-sm btn-primary float-end">Open Url <i class="fa fa-share"></i></a>
                      </h4>
                      <form action="<?php echo DOMAIN; ?>/controller/socialaccountcontroller.php" method="POST">
                        <?php FormPrimaryInputs(true); ?>
                        <div class="row">
                          <div class="form-group col-md-6">
                            <label>Account Name</label>
                            <input type="text" name="SocialAccountName" value="<?php echo SECURE($SocialAccountName, "d"); ?>" class="form-control-2" required="">
                          </div>
                          <div class="form-group col-md-6">
                            <label>Account Icon</label>
                            <select name="SocialAccountIcon" class="form-control-2" required="">
                              <?php SelectIcons($data = SECURE($SocialAccountIcon, "d")); ?>
                            </select>
                          </div>
                          <div class="form-group col-md-6">
                            <label>Account Url</label>
                            <input type="url" name="SocialAccountUrl" value="<?php echo SECURE($SocialAccountUrl, "d"); ?>" class="form-control-2" required="">
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
                              <?php echo SelectStatus($SocialAccountStatus); ?>
                            </select>
                          </div>
                          <div class="col-md-12 m-t-15">
                            <button type="submit" name="UpdateSocialAccounts" value="<?php echo SECURE($SocialAccountid, "e"); ?>" class="btn btn-md app-bg">Update Account</button>
                            <a href="<?php echo DOMAIN; ?>/controller/socialaccountcontroller.php?del_accounts=<?php echo SECURE($SocialAccountid, "e"); ?>&access_url=<?php echo SECURE(DOMAIN . "/admin/website/s-accounts", "e"); ?>" class="btn btn-lg btn-danger float-end"><i class="fa fa-trash"></i></a>
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