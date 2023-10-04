<!DOCTYPE html>
<html lang="zxx">
<head>
    <title>Expedition Travel | Admin Panel</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8" />
    <meta name="keywords" content="Expedition Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- Custom Theme files -->
    <link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
    <link href="css/style.css" type="text/css" rel="stylesheet" media="all">
    <!-- font-awesome icons -->
    <link href="css/fontawesome-all.min.css" rel="stylesheet">
    <!-- //Custom Theme files -->
    <!-- online-fonts -->
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=EB+Garamond:400,400i,500,500i,600,600i,700,700i,800,800i" rel="stylesheet">
    <!-- //online-fonts -->
</head>
<body>
   
   <div class="inner-banner">
        <!-- header -->
     <%@include file="headeradmin.jsp" %>
           </div>
            <!-- //banner -->
     <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="adminpanel.html">Home</a>
            </li>
            <li class="breadcrumb-item active" aria-current="page">Admin Panel</li>
            
        </ol>
    </nav>
             <!-- //banner -->
    <div class="agileits-services py-md-5 py-4" id="services">
        <div class="container py-lg-5">
           <div class="w3ls-titles text-center mb-5">
				<h3 class="title"><span class="hdng">Admin Panel </span>
					
				
                                    <p class="mt-2 mx-auto">Some beautiful paths can't be discovered without getting lost<br> Adventures are the best way to learn!</p>
			</div>
            <div class="agileits-services-row row py-lg-5 pb-5 text-center">
                <div class="col-lg-3 col-md-6">
                    <div class="agileits-services-grids">
                       <i class="fas fa-plane"></i>
                        <h4>Flights
                        </h4>
                        <span></span>
                        <p>We provide the most accurate flight status information at all times. </p>
                        <a href="flightlist.jsp" class="service-btn">read more</a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="agileits-services-grids mt-lg-0 mt-md-0 mt-5">
                       <i class="fas fa-bus"></i>
                        <h4>Buses
                        </h4>
                        <span></span>
                        <p>We provide good frequency of buses that run all throughout the day.</p>
                        <a href="buslist.jsp" class="service-btn">read more</a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="agileits-services-grids mt-lg-0 mt-5">
                        <i class="fas fa-key"></i>
                        <h4>Hotels
                        </h4>
                        <span></span>
                        <p>The best escape you can have is getting a hotel room and doing what you love.</p>
                        <a href="hotellist.jsp" class="service-btn">read more</a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6  mt-lg-0 mt-5">
                    <div class="agileits-services-grids">
                       <i class="fas fa-train"></i>
                        <h4>Train
                        </h4>
                        <span></span>
                        <p>We offer you train tickets and train bookings at the best possible prices.</p>
                        <a href="trainlist.jsp" class="service-btn">read more</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
  
    <%@include file="footer.jsp" %>
</body>
</html>