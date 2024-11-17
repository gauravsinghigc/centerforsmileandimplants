<?php
//require files inludes
$PageName = "About Us";
$DirLevel = "../../";
require $DirLevel . 'require/modules.php';
?>
<!DOCTYPE html>
<html lang="en">
<meta http-equiv="content-type" content="text/html;charset=utf-8" />

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title><?php echo APP_NAME; ?> : <?php echo $PageName; ?></title>
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="<?php echo MAIN_LOGO; ?>">
    <meta name="theme-color" content="#ffffff">
    <?php include '../head.php'; ?>
    <?php include $DirLevel . 'include/web/header_files.php'; ?>
</head>

<body>
    <div class="page-wrapper">
        <?php
        include $DirLevel . 'include/web/header.php';
        ?>
        <section class="inner-banner">
            <div class="container">
                <h2 class="inner-banner__title"><?php echo $PageName; ?></h2><!-- /.inner-banner__title -->
                <ul class="thm-breadcrumb">
                    <li class="thm-breadcrumb__item"><a class="thm-breadcrumb__link" href="../">Home</a></li>
                    <li class="thm-breadcrumb__item current"><a class="thm-breadcrumb__link" href="<?php echo DOMAIN; ?>/web/about-us/"><?php echo $PageName; ?></a></li>
                </ul><!-- /.thm-breadcrumb -->
            </div><!-- /.container -->
        </section><!-- /.inner-banner -->
        <section class="container pb-5">
            <?php
            if (isset($_GET['view'])) {
                $AboutUsPageId = SECURE($_GET['view'], "d");
                $FetchAboutUsPages = FetchConvertIntoArray("SELECT * FROM aboutus where AboutUsPageId='$AboutUsPageId' and AboutUsPageStatus='1' ORDER BY AboutUsPageId ASC", true);
            } else {
                $FetchAboutUsPages = FetchConvertIntoArray("SELECT * FROM aboutus where AboutUsPageStatus='1' ORDER BY AboutUsPageId ASC", true);
            }
            if ($FetchAboutUsPages !=  null) {
                foreach ($FetchAboutUsPages as $Request) { ?>
                    <div class="row">
                        <div class="col-md-12">
                            <h3 class="pb-2 pt-3"><?php echo SECURE($Request->AboutUsPageName, "d"); ?></h3>
                        </div>
                        <div class="col-md-6">
                            <div class="p-1">
                                <img src="<?php echo STORAGE_URL; ?>/aboutus/<?php echo $Request->AboutUsPageImage; ?>" class="img-fluid">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="p-1">
                                <h5 class="text-black text-dark"><?php echo SECURE($Request->AboutUsPageName, "d"); ?></h5>
                                <hr>
                                <?php echo html_entity_decode(SECURE($Request->AboutUsPageDescriptions, "d")); ?>
                            </div>
                        </div>
                    </div>
            <?php }
            } ?>
        </section>
        <?php include $DirLevel . 'include/web/footer.php'; ?>

        <?php include $DirLevel . 'include/web/footer_files.php'; ?>
</body>

</html>