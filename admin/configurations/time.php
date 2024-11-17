<?php

//required files
require '../../require/modules.php';
require '../../require/admin/access-control.php';
require '../../require/admin/sessionvariables.php';

//page variables
$PageName = "Clinic Time Settings";
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
              </div>

              <br>
              <?php
              $Sql_clinictimeschedule = FetchConvertIntoArray("SELECT * FROM clinictimeschedule ORDER BY ClinicTimeId ASC", true);
              if ($Sql_clinictimeschedule == null) {
                NoData("No Datials Found!");
              } else {
                foreach ($Sql_clinictimeschedule as $Request) { ?>
                  <form action="<?php echo DOMAIN; ?>/controller/configcontroller.php" method="POST">
                    <?php FormPrimaryInputs(true); ?>
                    <div class="row">
                      <div class="col-lg-2">
                        <label>Day</label>
                        <input type="text" name="ClinicTimeDay" readonly="" class="form-control-2" value="<?php echo $Request->ClinicTimeDay; ?>">
                      </div>
                      <div class="col-lg-1 p-r-0 p-l-0">
                        <label>Morning</label>
                        <input type="time" id="timeInput" class="form-control-2" name="ClinicMorningTimeFrom" required="" value="<?php echo $Request->ClinicMorningTimeFrom; ?>">
                      </div>
                      <div class="col-lg-1 p-r-0 p-l-0">
                        <label><br></label>
                        <input type="time" class="form-control-2" name="ClinicMorningTimeTo" required="" value="<?php echo $Request->ClinicMorningTimeTo; ?>">
                      </div>
                      <div class="col-lg-1 p-r-0 p-l-0 m-l-1">
                        <label>Evening</label>
                        <input type="time" class="form-control-2" name="ClinicEveningTimeFrom" required="" value="<?php echo $Request->ClinicEveningTimeFrom; ?>">
                      </div>
                      <div class="col-lg-1 p-r-0 p-l-0">
                        <label><br></label>
                        <input type="time" class="form-control-2" name="ClinicEveningTimeTo" required="" value="<?php echo $Request->ClinicEveningTimeTo; ?>">
                      </div>
                      <div class="form-group col-lg-2">
                        <label>Status</label>
                        <select class="form-control-2" name="ClinicTimeOpenStatus" required="">
                          <?php if ($Request->ClinicTimeOpenStatus == 0) { ?>
                            <option value="1">Open</option>
                            <option value="0" selected="">Closed</option>
                          <?php } else { ?>
                            <option value="1" selected="">Open</option>
                            <option value="0">Closed</option>
                          <?php } ?>
                        </select>
                      </div>
                      <div class="form-group col-lg-2 p-r-0">
                        <label>Note</label>
                        <input type="text" class="form-control-2" name="ClinicTimeNotes" class="form-control-2" value="<?php echo $Request->ClinicTimeNotes; ?>">
                      </div>
                      <div class="col-lg-1">
                        <label><br></label>
                        <button class="btn btn-primary btn-md square" name="UpdateTime" value="<?php echo SECURE($Request->ClinicTimeId, "e"); ?>">Update Time</button>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-12">
                        <hr class="m-t-2 m-b-2">
                      </div>
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
    <script>
      var inputEle = document.getElementById('timeInput');


      function onTimeChange() {
        var timeSplit = inputEle.value.split(':'),
          hours,
          minutes,
          meridian;
        hours = timeSplit[0];
        minutes = timeSplit[1];
        if (hours > 12) {
          meridian = 'PM';
          hours -= 12;
        } else if (hours < 12) {
          meridian = 'AM';
          if (hours == 0) {
            hours = 12;
          }
        } else {
          meridian = 'PM';
        }
        alert(hours + ':' + minutes + ' ' + meridian);
      }
    </script>
    <?php include '../../include/admin/footer_files.php'; ?>
</body>

</html>