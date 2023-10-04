  <!--footer -->
<footer>
<section class="footer footer_w3layouts_section_1its py-5">
    <div class="container py-md-4">
        <div class="row footer-top">
            <div class="col-lg-4 col-md-6 col-sm-6 footer-grid_section_1its_w3">
                <div class="footer-title">
                        <h3>About Us</h3>
                </div>
                <div class="footer-text">
                        <p>We are a dedicated team of adventurers, explorers, and travel enthusiasts who have traversed the globe in search of extraordinary experiences. Our collective knowledge and passion for adventure travel have led us to create a hub.</p>

                </div>
            </div>

            <div class="col-lg-3 col-md-6 col-sm-3 footer-grid_section_1its_w3">
                <div class="footer-title">
                    <h3>Useful Links</h3>
                </div>
                <ul class="links">
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="about.jsp">About</a></li>
                    <li><a href="services.jsp">Services</a></li>
                    <li><a href="gallery.jsp">Gallery</a></li>
                    <li><a href="contact.jsp">Contact Us</a></li>
                </ul>
            </div>
            <div class="col-lg-5 col-md-12 col-sm-12 footer-grid_section_1its_w3">
                <div class="footer-title">
                    <h3>Subscribe</h3>
                </div>
                <div class="footer-text">
                    <p>By subscribing to our mailing list you will always get latest news and updates from us.</p>
                    <form action="#" method="post">
                            <input type="email" name="Email" placeholder="Enter your email..." required="">
                            <button class="btn1"><i class="fa fa-envelope" aria-hidden="true"></i></button>
                            <div class="clearfix"> </div>
                    </form>
                </div>
                <ul class="social_section_1info">
                    <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                    <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                    <li><a href="#"><i class="fab fa-google-plus-g"></i></i></a></li>
                    <li><a href="#"><i class="fab fa-linkedin-in"></i></i></a></li>
                </ul>
            </div>
        </div>
            <div class="row mt-md-5">
                <div class="col-md-4 phn_w3l">
                    <h6 class="text-btm text-white">Phone : +2534894364</h6>
                </div>
                <div class="col-md-4 fax_w3l">
                    <h6 class="text-btm text-white">Fax : +2534894364</h6>
                </div>
                <div class="col-md-4 ema-w3l">
                    <h6 class="text-btm text-white">Email : <a href="mailto:info@example.com">expedition@gmail.com</a></h6>
                </div>
            </div>
    </div>
</section>
</footer>
<!-- //footer -->


    <!-- login  -->
    <!-- js -->
    <script src="js/jquery-2.2.3.min.js"></script>
    <!-- //js -->
    <!-- script for password match -->
    <script>
        window.onload = function () {
            document.getElementById("password1").onchange = validatePassword;
            document.getElementById("password2").onchange = validatePassword;
        }

        function validatePassword() {
            var pass2 = document.getElementById("password2").value;
            var pass1 = document.getElementById("password1").value;
            if (pass1 != pass2)
                document.getElementById("password2").setCustomValidity("Passwords Don't Match");
            else
                document.getElementById("password2").setCustomValidity('');
            //empty string means no validation error
        }
    </script>
    <!-- script for password match -->
    <!-- contact validation js -->
    <script src="js/form-validation.js"></script>
    <!-- Responsiveslides -->
    <script src="js/responsiveslides.min.js"></script>
    <script>
        // You can also use "$(window).load(function() {"
        $(function () {
            // Slideshow 4
            $("#slider3").responsiveSlides({
                auto: false,
                pager: true,
                nav: false,
                speed: 500,
                namespace: "callbacks",
                before: function () {
                    $('.events').append("<li>before event fired.</li>");
                },
                after: function () {
                    $('.events').append("<li>after event fired.</li>");
                }
            });

        });
    </script>
    <!-- // Responsiveslides -->
	 <!-- stats -->
    <script src="js/jquery.waypoints.min.js"></script>
    <script src="js/jquery.countup.js"></script>
    <script>
        $('.counter').countUp();

    </script>
    <!-- //stats -->

    <!-- start-smooth-scrolling -->
    <script src="js/move-top.js"></script>
    <script src="js/easing.js"></script>
    <script>
        jQuery(document).ready(function ($) {
            $(".scroll").click(function (event) {
                event.preventDefault();

                $('html,body').animate({
                    scrollTop: $(this.hash).offset().top
                }, 1000);
            });
        });
    </script>
    <!-- //end-smooth-scrolling -->
    <!-- smooth-scrolling-of-move-up -->
    <script>
        $(document).ready(function () {
            /*
            var defaults = {
                containerID: 'toTop', // fading element id
                containerHoverID: 'toTopHover', // fading element hover id
                scrollSpeed: 1200,
                easingType: 'linear' 
            };
            */

            $().UItoTop({
                easingType: 'easeOutQuart'
            });

        });
    </script>
    <script src="js/SmoothScroll.min.js"></script>
    <!-- Bootstrap core JavaScript
================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/bootstrap.js"></script>