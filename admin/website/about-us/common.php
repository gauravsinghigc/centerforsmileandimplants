 <div class="btn-inline">
   <ul class="list-view">
     <?php
      $SQL_aboutus = FetchConvertIntoArray("SELECT * FROM aboutus ORDER BY AboutUsPageId ASC", true);
      if ($SQL_aboutus != null) {
        foreach ($SQL_aboutus as $Request) {
          if (isset($_GET['pageview'])) {
            if (SECURE($_GET['pageview'], "d") == $Request->AboutUsPageId) {
              $active = "active";
            } else {
              $active = "";
            }
          } else {
            $active = "";
          } ?>
         <li class="<?php echo $active; ?>">
           <a href="<?php echo DOMAIN; ?>/admin/website/about-us/index.php?pageview=<?php echo SECURE($Request->AboutUsPageId, 'e'); ?>">
             <?php echo SECURE($Request->AboutUsPageName, "d"); ?>
           </a>
         </li>
     <?php }
      } ?>
   </ul>
 </div>