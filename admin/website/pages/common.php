 <div class="btn-inline">
   <ul class="list-view">
     <?php
      $SQL_aboutus = FetchConvertIntoArray("SELECT * FROM pages ORDER BY PagedId  ASC", true);
      if ($SQL_aboutus != null) {
        foreach ($SQL_aboutus as $Request) {
          if (isset($_GET['pageview'])) {
            if (SECURE($_GET['pageview'], "d") == $Request->PagedId) {
              $active = "active";
            } else {
              $active = "";
            }
          } else {
            $active = "";
          }
      ?>
         <li class="<?php echo $active; ?>">
           <a href="<?php echo DOMAIN; ?>/admin/website/pages/index.php?pageview=<?php echo SECURE($Request->PagedId, 'e'); ?>">
             <?php echo SECURE($Request->PageName, "d"); ?>
           </a>
         </li>
     <?php }
      } ?>
   </ul>
 </div>