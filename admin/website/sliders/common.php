 <div class="btn-inline">
   <ul class="list-view">
     <?php
      $SQL_aboutus = FetchConvertIntoArray("SELECT * FROM sliders ORDER BY SliderId ASC", true);
      if ($SQL_aboutus != null) {
        foreach ($SQL_aboutus as $key => $Request) {
          if (isset($_GET['pageview'])) {
            if (SECURE($_GET['pageview'], "d") == $Request->SliderId) {
              $active = "active";
            } else {
              $active = "";
            }
          } else {
            $active = "";
          } ?>
         <li class="<?php echo $active; ?>">
           <a href="<?php echo DOMAIN; ?>/admin/website/sliders/index.php?pageview=<?php echo SECURE($Request->SliderId, 'e'); ?>">
             Slider <?php echo $key + 1; ?>
           </a>
         </li>
     <?php }
      } ?>
   </ul>
 </div>