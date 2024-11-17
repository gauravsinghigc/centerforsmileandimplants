 <div class="btn-inline">
   <ul class="list-view">
     <?php
      $SQL_aboutus = FetchConvertIntoArray("SELECT * FROM specialities ORDER BY Specialitiesid ASC", true);
      if ($SQL_aboutus != null) {
        foreach ($SQL_aboutus as $key => $Request) {
          $RunningId = $Request->Specialitiesid;
          if (isset($_GET['pageview'])) {
            if (SECURE($_GET['pageview'], "d") == $Request->Specialitiesid) {
              $active = "active";
            } else {
              $active = "";
            }
          } else {
            $active = "";
          } ?>
         <li class="<?php echo $active; ?>">
           <a href="<?php echo DOMAIN; ?>/admin/website/specialities/index.php?pageview=<?php echo SECURE($Request->Specialitiesid, 'e'); ?>" class="active-link">
             <?php echo SECURE($Request->SpecialityName, "d"); ?>
           </a>
         </li>
     <?php }
      } ?>
   </ul>
 </div>