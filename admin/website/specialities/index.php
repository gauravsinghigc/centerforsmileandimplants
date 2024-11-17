<?php
//page variables
$PageName = "Specialities";
$DirLevel = "../../../";


//required files
require $DirLevel . 'require/modules.php';
require $DirLevel . 'require/admin/access-control.php';
require $DirLevel . 'require/admin/sessionvariables.php';

if (isset($_GET['pageview'])) {
  $PageViewId = SECURE($_GET['pageview'], "d");
  $_SESSION['SPSL_VIEW_ID'] = $PageViewId;
} elseif (isset($_SESSION['SPSL_VIEW_ID'])) {
  $PageViewId = $_SESSION['SPSL_VIEW_ID'];
} else {
  $PageViewId = 0;
}

if ($PageViewId != 0) {
  $Specialitiesid = $PageViewId;
  $SpecialityName = FETCH("SELECT * FROM specialities where Specialitiesid='$Specialitiesid'", "SpecialityName");
  $SpecialityImage = FETCH("SELECT * FROM specialities where Specialitiesid='$Specialitiesid'", "SpecialityImage");
  $SpecialityDescriptions = FETCH("SELECT * FROM specialities where Specialitiesid='$Specialitiesid'", "SpecialityDescriptions");
  $SpecialitiesStatus = FETCH("SELECT * FROM specialities where Specialitiesid='$Specialitiesid'", "SpecialitiesStatus");
  $SpecialitiesCreatedAt = FETCH("SELECT * FROM specialities where Specialitiesid='$Specialitiesid'", "SpecialitiesCreatedAt");
  $SpecialitiesUpdatedAt = FETCH("SELECT * FROM specialities where Specialitiesid='$Specialitiesid'", "SpecialitiesUpdatedAt");
} else {
  if ($Specialitiesid = CHECK("SELECT * FROM specialities ORDER BY Specialitiesid ASC LIMIT 0, 1") == null) {
    $Specialitiesid = null;
    $SpecialityName = "";
    $SpecialityImage = "";
    $SpecialityDescriptions = "";
    $SpecialitiesStatus = "";
    $SpecialitiesCreatedAt = "";
    $SpecialitiesUpdatedAt = "";
  } else {
    $Specialitiesid = FETCH("SELECT * FROM specialities ORDER BY Specialitiesid ASC LIMIT 0, 1", "Specialitiesid");
    $SpecialityName = FETCH("SELECT * FROM specialities where Specialitiesid='$Specialitiesid'", "SpecialityName");
    $SpecialityImage = FETCH("SELECT * FROM specialities where Specialitiesid='$Specialitiesid'", "SpecialityImage");
    $SpecialityDescriptions = FETCH("SELECT * FROM specialities where Specialitiesid='$Specialitiesid'", "SpecialityDescriptions");
    $SpecialitiesStatus = FETCH("SELECT * FROM specialities where Specialitiesid='$Specialitiesid'", "SpecialitiesStatus");
    $SpecialitiesCreatedAt = FETCH("SELECT * FROM specialities where Specialitiesid='$Specialitiesid'", "SpecialitiesCreatedAt");
    $SpecialitiesUpdatedAt = FETCH("SELECT * FROM specialities where Specialitiesid='$Specialitiesid'", "SpecialitiesUpdatedAt");
  }
}
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
                    <a href="add-page.php" class="btn btn-sm btn-danger"><i class="fa fa-plus"></i> Add Page</a>
                  </div>
                </div>
              </div>
              <br>
              <?php
              if ($Specialitiesid == null) {
                NoData("No Page Found!");
              } else { ?>
                <div class="row">
                  <div class="col-md-4 col-lg-4 col-sm-5 col-12">
                    <div class="shadow-lg p-1r br10">
                      <h3>Available Specialities</h3>
                      <?php include 'common.php'; ?>
                    </div>
                  </div>
                  <div class="col-md-8 col-lg-8 col-sm-7 col-12">
                    <div class="shadow-lg br10 p-1r">
                      <h3><b>Update Specialities :</b></h3>
                      <hr>
                      <h4 class="fs-20"><?php echo SECURE($SpecialityName, "d"); ?></h4>
                      <div class="row m-b-20">
                        <div class="col-md-4">
                          <div class="">
                            <h4 class="">Speciality Image</h4>
                            <img src="<?php echo STORAGE_URL; ?>/speciality/<?php echo $SpecialityImage; ?>" class="w-100 br10">
                          </div>
                        </div>
                        <div class="col-md-8">
                          <h3>Update Speciality Image</h3>
                          <br>
                          <form class="form m-t-3" action="../../../controller/specialitycontroller.php" method="POST" enctype="multipart/form-data">
                            <input type="text" name="UpdateSpeciality" value="<?php echo SECURE($SpecialityName, "e"); ?>" hidden="">
                            <input type="text" name="access_validation" value="<?php echo SECURE($Specialitiesid, "e"); ?>" hidden="">
                            <?php CurrentFile($SpecialityImage); ?>
                            <?php FormPrimaryInputs(true); ?>
                            <label for="UploadProfileimg">
                              <img src="<?php echo STORAGE_URL_D; ?>/tool-img/img-upload.png" class="w-pr-10 upload-icon">
                            </label>
                            <input type="file" class="hidden" onchange="form.submit()" hidden="" name="SpecialityImage" id="UploadProfileimg" value="<?php echo $PageFeatureImage; ?>" accept="images/*">
                          </form>
                        </div>
                      </div>
                      <form action="<?php echo DOMAIN; ?>/controller/specialitycontroller.php" method="POST" enctype="multipart/form-data">
                        <?php FormPrimaryInputs(true); ?>
                        <div class="row">
                          <div class="form-group col-md-6">
                            <label>Speciality Name</label>
                            <input type="text" name="SpecialityName" value="<?php echo SECURE($SpecialityName, 'd'); ?>" class="form-control-2" required="">
                          </div>
                          <div class="form-group col-md-6">
                            <label>Status</label>
                            <select name="SpecialitiesStatus" class="form-control-2" required="">
                              <?php SelectStatus($SpecialitiesStatus); ?>
                            </select>
                          </div>
                          <div class="form-group col-md-12">
                            <label>Speciality Descriptions</label>
                            <textarea class="form-control-2" name="SpecialityDescriptions" rows="5" id="editor" style="height:auto !important;"><?php echo SECURE($SpecialityDescriptions, 'd'); ?></textarea>
                          </div>
                          <div class="col-md-12 m-t-15">
                            <button type="submit" name="UpdateSpecialities" value="<?php echo SECURE($Specialitiesid, "e"); ?>" class="btn btn-md app-bg">Update Speciality</button>
                            <a href="<?php echo DOMAIN; ?>/controller/specialitycontroller.php?del_speciality=<?php echo SECURE($Specialitiesid, "e"); ?>&access_url=<?php echo SECURE(DOMAIN . "/admin/website/specialities", "e"); ?>" class="btn btn-lg btn-danger float-end"><i class="fa fa-trash"></i></a>
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