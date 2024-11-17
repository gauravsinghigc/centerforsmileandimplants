<?php
//require files inludes
require 'require/modules.php';
?>
<!DOCTYPE html>
<html lang="en">
<meta http-equiv="content-type" content="text/html;charset=utf-8" />

<head>
 <meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
 <meta http-equiv="X-UA-Compatible" content="ie=edge">
 <title><?php echo APP_NAME; ?> : Home</title>
 <meta name="msapplication-TileColor" content="#ffffff">
 <meta name="msapplication-TileImage" content="<?php echo MAIN_LOGO; ?>">
 <meta name="theme-color" content="#ffffff">
 <?php include 'web/head.php'; ?>
 <?php include 'include/web/header_files.php'; ?>
</head>

<body>
 <div class="page-wrapper">
  <?php
  include 'include/web/header.php';
  include 'include/web/slider.php';
  include 'include/web/booking.php';
  include 'include/web/homepage.php';
  ?>

  <section class="cta-one">
   <div class="container">
    <div class="row">
     <div class="col-lg-7">
      <p class="cta-one__tag-line">Making Your Smile Smarter</p><!-- /.cta-one__tag-line -->
      <h1 class="cta-one__title"><?php echo APP_NAME; ?></h1>
      <h3 class="cta-one__title">Caring to all of your dental <br> needs and desires</h3><!-- /.cta-one__title -->
     </div><!-- /.col-lg-7 -->
    </div><!-- /.row -->
   </div><!-- /.container -->
  </section><!-- /.cta-one -->
  <section class="about-one">
   <div class="container">
    <div class="about-one__image-block">
     <div class="about-one__image-one">
      <img src="<?php echo ASSETS_URL; ?>/web/images/resources/about-1-1.jpg" alt="<?php echo APP_NAME; ?>" title="<?php echo APP_NAME; ?>" />
     </div><!-- /.about-one__image-one -->
     <div class="about-one__image-two">
      <img src="<?php echo ASSETS_URL; ?>/web/images/resources/about-1-2.jpg" alt="<?php echo APP_NAME; ?>" title="<?php echo APP_NAME; ?>" />
     </div><!-- /.about-one__image-two -->
    </div><!-- /.about-one__image-block -->
    <div class="row no-gutters">
     <div class="col-lg-6">
      <div class="about-one__content">
       <h3 class="about-one__title">Catering to all of your dental <br> needs and desires</h3><!-- /.about-one__title -->
       <p class="about-one__text"><?php echo APP_NAME; ?> provides wide range of dental services include any preventative or restorative specialties such as root canal treatments, expert teeth whitening, cosmetic dentistry, and orthodontics for children and the elderly. In addition, their expert dentists provide a host of treatments for gum disease or discolouring such as gingival depigmentation (gum bleaching), scaling and polishing, and gum grafting due to recession.</p><!-- /.about-one__text -->
       <p class="about-one__text"></p>
       <div class="row">
        <div class="col-xl-12 col-lg-12">
         <ul class="about-one__list">
          <li class="about-one__list-item">- All ceramic crowns – Warranties ranging from 5 years to 15 years</li>
          <li class="about-one__list-item">- Laminates and Veneers – Warranties up to 10 years</li>
          <li class="about-one__list-item">- Laser sintered porcelain fused to metal crowns (PFM) – Warranties ranging from 2 to 5 years</li>
         </ul><!-- /.about-one__list -->
        </div><!-- /.col-lg-6 -->
       </div><!-- /.row -->
      </div><!-- /.about-one__content -->
     </div><!-- /.col-lg-6 -->
    </div><!-- /.row -->
   </div><!-- /.container -->
  </section><!-- /.about-one -->

  <section class="feature-one">
   <div class="container">
    <div class="row">
     <div class="col-lg-4">
      <div class="feature-one__box">
       <h3 class="feature-one__box-title">Why Choose Us</h3>
       <p class="feature-one__box-tag-line"><b>Sterilization Protocols:</b><br></p><!-- /.feature-one__box-tag-line -->
       <p class="feature-one__box-text">The <?php echo APP_NAME; ?> clinic is set up with the highest standards of sterilization protocols in place. From packaging and sterilizing instruments in a Class B Autoclave, to the disinfection of the entire clinical setup, every detail is monitored on a daily basis. </p>
       <p class="feature-one__box-tag-line"><b>Long Term Warranties:</b><br></p>
       <p class="feature-one__box-text">We are confident of our treatment planning and execution. Thus we have no hesitation in giving genuine warranties on Crowns and Bridges and certain other treatment procedures.</p><!-- /.feature-one__box-text -->
      </div><!-- /.feature-one__box -->
     </div><!-- /.col-lg-4 -->
     <div class="col-lg-8">
      <div class="row">
       <div class="col-lg-6 col-md-6 col-sm-12">
        <div class="feature-one__single">
         <div class="feature-one__icon">
          <i class="dentallox-icon-scores"></i>
         </div><!-- /.feature-one__icon -->
         <div class="feature-one__content">
          <h3 class="feature-one__title"><a href="<?php echo DOMAIN; ?>/web/speciality/">Commitment to <br> Excellence</a></h3><!-- /.feature-one__title -->
          <p class="feature-one__text">All the doctors working on a patient are post graduate MDS, a specialist with a huge amount of experience in their respective field.</p><!-- /.feature-one__text -->
         </div><!-- /.feature-one__content -->
        </div><!-- /.feature-one__single -->
       </div><!-- /.col-lg-6 -->
       <div class="col-lg-6 col-md-6 col-sm-12">
        <div class="feature-one__single">
         <div class="feature-one__icon">
          <i class="dentallox-icon-chair"></i>
         </div><!-- /.feature-one__icon -->
         <div class="feature-one__content">
          <h3 class="feature-one__title"><a href="<?php echo DOMAIN; ?>/web/speciality/">Cutting-Edge <br> Technology</a></h3><!-- /.feature-one__title -->
          <p class="feature-one__text">All our surgeries are furnished with state of the art equipment and maintained at the highest standards.</p><!-- /.feature-one__text -->
         </div><!-- /.feature-one__content -->
        </div><!-- /.feature-one__single -->
       </div><!-- /.col-lg-6 -->
       <div class="col-lg-6 col-md-6 col-sm-12">
        <div class="feature-one__single">
         <div class="feature-one__icon">
          <i class="dentallox-icon-appointment"></i>
         </div><!-- /.feature-one__icon -->
         <div class="feature-one__content">
          <h3 class="feature-one__title"><a href="<?php echo DOMAIN; ?>/web/speciality/">Focus on <br> Customer Care</a></h3><!-- /.feature-one__title -->
          <p class="feature-one__text">We know you are busy thus we try and do maximum work on scheduled timings.</p><!-- /.feature-one__text -->
         </div><!-- /.feature-one__content -->
        </div><!-- /.feature-one__single -->
       </div><!-- /.col-lg-6 -->
       <div class="col-lg-6 col-md-6 col-sm-12">
        <div class="feature-one__single">
         <div class="feature-one__icon">
          <i class="dentallox-icon-medical"></i>
         </div><!-- /.feature-one__icon -->
         <div class="feature-one__content">
          <h3 class="feature-one__title"><a href="<?php echo DOMAIN; ?>/web/speciality/">Long Term <br>Warranties</a></h3><!-- /.feature-one__title -->
          <p class="feature-one__text">Genuine warranties on crowns and bridges and certain other treatment procedures.</p><!-- /.feature-one__text -->
         </div><!-- /.feature-one__content -->
        </div><!-- /.feature-one__single -->
       </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
     </div><!-- /.col-lg-8 -->
    </div><!-- /.row -->
   </div><!-- /.container -->
  </section><!-- /.feature-one -->
  <?php include '../include/web/map.php'; ?>
  <section class="appointment-one">
   <div class="container">
    <div class="inner-container">
     <div class="row">
      <div class="col-lg-5">
       <div class="appointment-one__content">
        <h3 class="appointment-one__title">Make an Appointment <br> Today !</h3><!-- /.appointment-one__title -->
        <p class="appointment-one__text"><?php echo APP_NAME; ?> provides high-level dental services, <br> offers comprehensive solutions for the treat- <br>ment of any dental disease.</p><!-- /.appointment-one__text -->
       </div><!-- /.appointment-one__content -->
      </div><!-- /.col-lg-6 -->
      <div class="col-lg-7">
       <form action="<?PHP echo DOMAIN; ?>/web/booking_send.php" class="appointment-one__form" method="POST">
        <div class="row">
         <div class="col-lg-12">
          <input type="text" name="full_name" placeholder="Full Name">
         </div><!-- /.col-md-6 -->
         <div class="col-lg-12">
          <input type="Email" name="email_id" placeholder="Email Id">
         </div><!-- /.col-md-6 -->
         <div class="col-lg-12">
          <input type="text" name="phone_number" placeholder="Phone Number">
         </div><!-- /.col-md-6 -->
         <div class="col-md-6">
          <input type="date" name="date" placeholder="DD Month, YYYY">
         </div><!-- /.col-md-6 -->
         <div class="col-md-6">
          <input type="time" name="time" placeholder="HH:MM AM/PM">
         </div><!-- /.col-md-6 -->
         <div class="col-md-6">
          <select name="gender" class="form-control" required>
           <option value="Male">Male</option>
           <option value="Female">Female</option>
          </select>
         </div><!-- /.col-md-6 -->
         <div class="col-md-6">
          <input type="number" min="1" max="100" name="age" placeholder="Age in years" required="">
         </div><!-- /.col-md-6 -->
         <div class="col-md-12">
          <textarea name="message" class="form-control" rows="5"></textarea>
         </div><!-- /.col-md-6 -->
         <div class="col-lg-12">
          <button type="submit" name="book_appointment" class="appointment-one__form-btn">Book Appointment</button>
         </div><!-- /.col-lg-12 -->
        </div><!-- /.row -->
       </form><!-- /.appointment-one__form -->
      </div><!-- /.col-lg-6 -->
     </div><!-- /.row -->
    </div><!-- /.inner-container -->
   </div><!-- /.container -->
  </section><!-- /.appointment-one -->

  <?php include 'include/web/footer.php'; ?>

  <?php include 'include/web/footer_files.php'; ?>
</body>

</html>