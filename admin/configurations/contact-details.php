<?php

//required files
require '../../require/modules.php';
require '../../require/admin/access-control.php';
require '../../require/admin/sessionvariables.php';

//page variables
$PageName = "Contact Details";
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title><?php echo $PageName; ?> | <?php echo APP_NAME; ?></title>
  <?php include '../../include/admin/header_files.php'; ?>

</head>

<body>
  <div id="container" class="effect mainnav-lg navbar-fixed mainnav-fixed">
    <?php include '../../include/admin/header.php'; ?>

    <div class="boxed">
      <!--CONTENT CONTAINER-->
      <!--===================================================-->
      <div id="content-container">

        <div id="page-content">
          <!--====start content===============================================-->

          <div class="panel">
            <div class="panel-heading">
              <div class="flex-s-b">
                <?php include 'common.php'; ?>
              </div>
            </div>
            <div class="panel-body">
              <div class="flex-s-b">
                <h3 class="m-b-0"><?php echo $PageName; ?></h3>
                <a onclick="Databar('contactdetails')" class="btn btn-sm btn-danger"><i class="fa fa-plus"></i> Add More Contact Details</a>
              </div>

              <br>
              <?php
              $Sql_app_contact_details = FetchConvertIntoArray("SELECT * FROM app_contact_details ORDER BY AppContactDetailsId ASC", true);
              if ($Sql_app_contact_details == null) {
                NoData("No Datials Found!");
              } else {
                foreach ($Sql_app_contact_details as $Request) { ?>
                  <form action="<?php echo DOMAIN; ?>/controller/configcontroller.php" method="POST" class="row m-b-10">
                    <?php FormPrimaryInputs(true); ?>
                    <div class="form-group col-lg-3 col-md-3 col-sm-6 col-6">
                      <label>Name</label>
                      <input type="text" name="AppContactDetailsName" class="form-control-2" required="" value="<?php echo SECURE($Request->AppContactDetailsName, "d"); ?>">
                    </div>
                    <div class="form-group col-lg-3 col-md-3 col-sm-6 col-6">
                      <label>Type</label>
                      <select name="AppContcatDetailType" class="form-control-2" required="">
                        <option value="<?php echo SECURE($Request->AppContcatDetailType, "d"); ?>" selected=""><?php echo SECURE($Request->AppContcatDetailType, "d"); ?></option>
                        <?php InputOptions(["Phone", "Email", "Whatsapp", "Address"]); ?>
                      </select>
                    </div>
                    <div class=" form-group col-lg-4 col-md-3 col-sm-6 col-6">
                      <label>Value</label>
                      <input type="text" name="AppContactDetailsValue" class="form-control-2" required="" value="<?php echo SECURE($Request->AppContactDetailsValue, "d"); ?>">
                    </div>
                    <div class="col-lg-2 col-md-3 col-sm-6 col-6">
                      <label>&nbsp;<br>&nbsp;</label>
                      <button class="btn btn-primary btn-md square" name="UpdateContactDetails" value="<?php echo SECURE($Request->AppContactDetailsId, "e"); ?>">Update</button>
                    </div>
                    <div class="col-md-12">
                      <hr class="m-t-2 m-b-2">
                    </div>
                  </form>
              <?php }
              } ?>


            </div>
          </div>

          <!-- add new values forms -->
          <section class="add-section" id="contactdetails">
            <div class="add-data-form">
              <form method="post" action="<?php echo DOMAIN; ?>/controller/configcontroller.php">
                <?php FormPrimaryInputs(true); ?>
                <div class="main-data">
                  <div class="main-data-header app-bg">
                    <div class="flex-s-b">
                      <h4 class="mt-0 mb-0">New <?php echo $PageName; ?></h4>
                      <a class="btn btn-sm btn-danger sqaure" onclick="Databar('contactdetails')"><i class="fa fa-times fs-17"></i></a>
                    </div>
                  </div>
                  <div class="main-data-body p-2">
                    <div class="row">
                      <div class="form-group col-md-6 col-sm-6 col-sm-6 col-lg-6 col-12">
                        <label>Contact Name <?php echo $req; ?></label>
                        <input type="text" class="form-control-2" name="AppContactDetailsName" required="">
                      </div>
                      <div class="form-group col-md-6 col-sm-6 col-sm-6 col-lg-6 col-12">
                        <label>Contact Type <?php echo $req; ?></label>
                        <select name="AppContcatDetailType" class="form-control-2" required="">
                          <?php InputOptions(["Phone", "Email", "Whatsapp", "Address"]); ?>
                        </select>
                      </div>
                      <div class="form-group col-md-12 col-sm-12 col-sm-12 col-lg-12 col-12">
                        <label>Contact Detail Value</label>
                        <textarea class="form-control-2 height-auto" style="height:100% !important;" required="" rows="3" name="AppContactDetailsValue"></textarea>
                      </div>
                    </div>
                    <br><br><br><br><br><br>
                  </div>
                  <div class="main-data-footer">
                    <div class="col-md-12 col-sm-12 col-sm-12 col-lg-12 col-12">
                      <button class="btn btn-md app-bg" name="CreateNewContactDetails">Save</button>
                      <a class="btn btn-md btn-danger" onclick="Databar('contactdetails')">Cancel</a>
                    </div>
                  </div>
                </div>
              </form>
            </div>
          </section>

          <!--- end for new values -->

          <!--End page content-->
        </div>

        <?php include '../../include/admin/sidebar.php'; ?>
      </div>
      <?php include '../../include/admin/footer.php'; ?>
    </div>

    <?php include '../../include/admin/footer_files.php'; ?>
</body>

</html>