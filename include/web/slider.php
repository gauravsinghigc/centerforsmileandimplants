<div class="banner-wrapper">
  <section class="banner-one banner-carousel__one no-dots owl-theme owl-carousel">
    <?php $FetchAccounts = FetchConvertIntoArray("SELECT * FROM sliders ORDER BY SliderId ASC", true);
    if ($FetchAccounts != null) {
      foreach ($FetchAccounts as $Request) { ?>
        <div class="item">
          <div class="banner-one__slide  banner-one__slide-one" style="background-image: url(<?php echo STORAGE_URL; ?>/sliders/<?php echo $Request->SliderImage; ?>);">
            <div class="container">
              <div class="row">
                <div class="col-lg-12 text-left">
                  <style>
                    p.banner-one__text,
                    p.banner-one__text p {
                      color: white !important;
                    }
                  </style>
                  <span class="banner-one__tag-line banner-one__light-color"><?php echo SECURE($Request->SliderTagline, "d"); ?></span>
                  <h3 class="banner-one__title banner-one__light-color"><?php echo SECURE($Request->SliderName, "d"); ?></h3>
                  <p class="banner-one__text banner-one__light-color"><?php echo html_entity_decode(SECURE($Request->SliderDescription, "d")); ?></p>
                  <div class="banner-one__btn-block">
                    <a href="<?php echo SECURE($Request->SliderOpenUrl, "d"); ?>" class="thm-btn banner-one__btn"><?php echo SECURE($Request->SliderTextUrl, "d"); ?></a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
    <?php }
    } ?>
  </section>
  <div class="carousel-btn-block banner-carousel-btn">
    <span class="carousel-btn left-btn"><i class="fa fa-angle-left"></i></span>
    <span class="carousel-btn right-btn"><i class="fa fa-angle-right"></i></span>
  </div>
</div>