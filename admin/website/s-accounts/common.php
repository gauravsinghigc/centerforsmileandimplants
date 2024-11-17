 <div class="btn-inline">
   <ul class="list-view">
     <?php
      $SQL_aboutus = FetchConvertIntoArray("SELECT * FROM socialaccounts ORDER BY SocialAccountid ASC", true);
      if ($SQL_aboutus != null) {
        foreach ($SQL_aboutus as $key => $Request) {
          if (isset($_GET['pageview'])) {
            if (SECURE($_GET['pageview'], "d") == $Request->SocialAccountid) {
              $active = "active";
            } else {
              $active = "";
            }
          } else {
            $active = "";
          } ?>
         <li class="<?php echo $active; ?>">
           <a href="<?php echo DOMAIN; ?>/admin/website/s-accounts/index.php?pageview=<?php echo SECURE($Request->SocialAccountid, 'e'); ?>">
             <i class="fa <?php echo SECURE($Request->SocialAccountIcon, "d"); ?>"></i> <?php echo SECURE($Request->SocialAccountName, "d"); ?>
           </a>
         </li>
     <?php }
      } ?>
   </ul>
 </div>