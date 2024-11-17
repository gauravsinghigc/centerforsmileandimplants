<!--MAIN NAVIGATION-->
<!--===================================================-->
<nav id="mainnav-container">
 <!--Brand logo & name-->
 <!--================================-->
 <div class="navbar-header">
  <a href="<?php echo DOMAIN; ?>/admin" class="navbar-brand app-bg">
   <img src="<?php echo $MAIN_LOGO; ?>" class="brand-icon">
   <div class="brand-title">
    <span class="brand-text"><?php echo APP_NAME; ?></span>
   </div>
  </a>
 </div>
 <div id="mainnav">
  <div id="mainnav-menu-wrap" class="mainnav-lg">
   <div class="nano">
    <div class="nano-content">
     <ul id="mainnav-menu" class="list-group">
      <li class="list-header">Home</li>
      <li> <a href="<?php echo DOMAIN; ?>/admin/dashboard/"> <i class="fa fa-home"></i> <span class="menu-title"> Dashboard </span> </a> </li>
      <div hidden="">
       <li>
        <a href="<?php echo DOMAIN; ?>/admin/appointments">
         <i class="fa fa-star"></i>
         <span class="menu-title">
          Appointments
         </span>
        </a>
       </li>
       <li>
        <a href="<?php echo DOMAIN; ?>/admin/patients">
         <i class="fa fa-users"></i>
         <span class="menu-title">
          Patients
         </span>
        </a>
       </li>
       <li>
        <a href="<?php echo DOMAIN; ?>/admin/treatments">
         <i class="fa fa-file-pdf-o"></i>
         <span class="menu-title">
          Treatments
         </span>
        </a>
       </li>

       <li>
        <a href="<?php echo DOMAIN; ?>/admin/doctors">
         <i class="fa fa-medkit"></i>
         <span class="menu-title">
          Doctors
         </span>
        </a>
       </li>

       <li class="list-header">Enquiries</li>
       <li>
        <a href="<?php echo DOMAIN; ?>/admin/enquiries">
         <i class="fa fa-info-circle"></i>
         <span class="menu-title">
          Enquiries
         </span>
        </a>
       </li>

       <li class="list-header">Reports</li>
       <li>
        <a href="<?php echo DOMAIN; ?>/admin/reports">
         <i class="fa fa-print"></i>
         <span class="menu-title">
          Reports
         </span>
        </a>
       </li>
      </div>
      <li class="list-header">Advance Settings</li>
      <li hidden="">
       <a href="<?php echo DOMAIN; ?>/admin/configurations/users">
        <i class="fa fa-edit"></i>
        <span class="menu-title">
         User Settings
        </span>
       </a>
      </li>

      <li>
       <a href="#">
        <i class="fa fa-gears"></i>
        <span class="menu-title">
         Configuration Settings
        </span>
        <i class="arrow"></i>
       </a>
       <ul class="collapse">
        <li><a href="<?php echo DOMAIN; ?>/admin/configurations/">Company Profile</a></li>
        <li><a href="<?php echo DOMAIN; ?>/admin/configurations/api-keys.php">API & Keys</a></li>
        <li><a href="<?php echo DOMAIN; ?>/admin/configurations/advance-settings.php">Advance Settings</a></li>
        <li><a href="<?php echo DOMAIN; ?>/admin/configurations/img-settings.php">Image Settings</a></li>
        <li><a href="<?php echo DOMAIN; ?>/admin/configurations/time.php">Time Settings</a></li>
        <li><a href="<?php echo DOMAIN; ?>/admin/configurations/contact-details.php">Contact Details</a></li>
       </ul>
      </li>

      <li>
       <a href="#">
        <i class="fa fa-globe"></i>
        <span class="menu-title">
         Web Settings
        </span>
        <i class="arrow"></i>
       </a>
       <ul class="collapse">
        <li><a href="<?php echo DOMAIN; ?>/admin/website/home/">Home Page</a></li>
        <li><a href="<?php echo DOMAIN; ?>/admin/website/about-us/">About Us Pages</a></li>
        <li><a href="<?php echo DOMAIN; ?>/admin/website/pages/">Primary Pages</a></li>
        <li><a href="<?php echo DOMAIN; ?>/admin/website/sliders/">Sliders</a></li>
        <li><a href="<?php echo DOMAIN; ?>/admin/website/specialities">Specialities</a></li>
        <li><a href="<?php echo DOMAIN; ?>/admin/website/s-accounts/">Social Accounts</a></li>
        <li><a href="<?php echo DOMAIN; ?>/admin/website/gallery/">Photo Gallery</a></li>
       </ul>
      </li>

      <li class="list-header">Activity & Logs</li>
      <li>
       <a href="<?php echo DOMAIN; ?>/admin/activities/">
        <i class="fa fa-list"></i>
        <span class="menu-title">
         Activity Logs
        </span>
       </a>
      </li>
      <li>
       <a href="<?php echo DOMAIN; ?>/admin/activities/logins.php">
        <i class="fa fa-list"></i>
        <span class="menu-title">
         Login Logs
        </span>
       </a>
      </li>

      <li class="list-header">Profile</li>
      <li>
       <a href="<?php echo DOMAIN; ?>/admin/profile">
        <i class="fa fa-user"></i>
        <span class="menu-title">
         Profile
        </span>
       </a>
      </li>
      <li>
       <a href="<?php echo DOMAIN; ?>/admin/logout.php">
        <i class="fa fa-sign-out"></i>
        <span class="menu-title">
         Logout
        </span>
       </a>
      </li>
      <br><br><br><br><br><br>
     </ul>

    </div>
   </div>
  </div>
  <!--================================-->
  <!--End menu-->
 </div>
</nav>