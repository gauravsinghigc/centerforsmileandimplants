<?php
//page variables
$PageName = "Upload Images";
$DirLevel = "../../../";


//required files
require $DirLevel . 'require/modules.php';
require $DirLevel . 'require/admin/access-control.php';
require $DirLevel . 'require/admin/sessionvariables.php';

?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title><?php echo $PageName; ?> | <?php echo APP_NAME; ?></title>
  <?php include $DirLevel . 'include/admin/header_files.php'; ?>
</head>

<body>
  <div id="container" class="effect mainnav-lg navbar-fixed mainnav-fixed">
    <?php include $DirLevel . 'include/admin/header.php'; ?>

    <div class="boxed">
      <!--CONTENT CONTAINER-->
      <!--===================================================-->
      <div id="content-container">
        <div id="page-content">
          <!--====start content===============================================-->

          <div class="panel">
            <div class="panel-heading">
              <h3 class="m-t-0"><?php echo $PageName; ?></h3>
            </div>
            <div class="panel-body">
              <form action="<?php echo DOMAIN; ?>/controller/gallerycontroller.php" method="POST" enctype="multipart/form-data">
                <?php FormPrimaryInputs(true); ?>
                <div class="row">
                  <div class="form-group col-md-6">
                    <label>Gallery Name</label>
                    <input type="text" name="PhotoGalleryName" list="GalleryId" class="form-control-2" required="">
                    <datalist id="GalleryId">
                      <?php
                      $fetchConvertsOptions = FetchConvertIntoArray("SELECT * FROM photogallery GROUP BY PhotoGalleryName", true);
                      if ($fetchConvertsOptions == null) {
                      } else {
                        foreach ($fetchConvertsOptions as $data) {
                          echo "<option value='" . SECURE($data->PhotoGalleryName, "d") . "'></option>";
                        }
                      }
                      ?>
                    </datalist>
                  </div>
                  <div class="form-group col-md-6">
                    <label>Photo Caption or Title</label>
                    <input type="text" name="PhotoGalleryCaption" class="form-control-2" required="">
                  </div>
                  <div class="form-group col-md-12">
                    <label>Photo Details & Description</label>
                    <textarea class="form-control-2" id="editor" rows="3" name="PhotoGalleryDetails"></textarea>
                  </div>
                  <div class="form-group col-md-3 m-t-10">
                    <label>Upload Photo</label>
                    <label for="UploadImages" class="height-auto pointer">
                      <img src="<?php echo STORAGE_URL_D; ?>/tool-img/upload-img.png" class="img-fluid">
                    </label>
                    <input required="" type="file" id="UploadImages" name="PhotoGalleryFile" hidden="" class="hidden" accept="image/*">
                  </div>
                  <div class="col-md-12">
                    <div class="gallery"></div>
                  </div>
                  <div class="col-md-12 m-t-15">
                    <button type="submit" name="UploadImages" class="btn btn-lg app-bg">Upload Images</button>
                    <a href="index.php" class="btn btn-lg btn-danger">Back to All</a>
                  </div>

                </div>
              </form>
            </div>
          </div>

          <!--End page content-->
        </div>

        <?php include $DirLevel . 'include/admin/sidebar.php'; ?>
      </div>
      <?php include $DirLevel . 'include/admin/footer.php'; ?>
    </div>
    <script>
      $(function() {
        // Multiple images preview in browser
        var imagesPreview = function(input, placeToInsertImagePreview) {

          if (input.files) {
            var filesAmount = input.files.length;

            for (i = 0; i < filesAmount; i++) {
              var reader = new FileReader();

              reader.onload = function(event) {
                $($.parseHTML('<img>')).attr('src', event.target.result).appendTo(placeToInsertImagePreview);
              }

              reader.readAsDataURL(input.files[i]);
            }
          }

        };

        $('#UploadImages').on('change', function() {
          imagesPreview(this, 'div.gallery');
        });
      });
    </script>
    <?php include $DirLevel . 'include/admin/footer_files.php'; ?>
</body>

</html>