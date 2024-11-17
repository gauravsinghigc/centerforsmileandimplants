<?php

//required files
require '../../require/modules.php';
require '../../require/admin/access-control.php';
require '../../require/admin/sessionvariables.php';

//page variables
$PageName = "Dashboard";
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
 <div id="container" class="effect navbar-fixed mainnav-fixed mainnav-lg">
  <?php include '../../include/admin/header.php'; ?>

  <div class="boxed">
   <div id="content-container">
    <div id="page-content">


     <div class="panel">
      <div class="panel-body">
       <div class="row">
        <div class="col-md-12">
         <h1 class="text-center">Coming Soon..</h1>
        </div>
       </div>
      </div>
     </div>


    </div>
    <?php include '../../include/admin/sidebar.php'; ?>
   </div>
   <?php include '../../include/admin/footer.php'; ?>
  </div>
 </div>

 <?php include '../../include/admin/footer_files.php'; ?>
</body>

</html>