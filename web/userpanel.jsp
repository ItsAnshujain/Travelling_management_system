<!DOCTYPE html>
<html lang="zxx">
<head>
    <title>Expedition Travel | User Panel</title>
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
    <link rel="stylesheet" href="css/style-starter.css">
    <link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
    <link href="css/style.css" type="text/css" rel="stylesheet" media="all">
    <!-- font-awesome icons -->
    <link href="css/fontawesome-all.min.css" rel="stylesheet">
    <!-- //Custom Theme files -->
    <!-- online-fonts -->
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=EB+Garamond:400,400i,500,500i,600,600i,700,700i,800,800i" rel="stylesheet">
    <!-- //online-fonts -->
     <%@page import="java.sql.*" %>
</head>
<body>
   
   <div class="inner-banner">
        <!-- header -->
     <%@include file="headeruser.jsp" %>
           </div>
            <!-- //banner -->
     <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href=".jsp">Home</a>
            </li>
            <li class="breadcrumb-item active" aria-current="page">User Panel</li>
        </ol>
    </nav>
            <section class="w3l-clients" id="client">
    <div class="call-w3">
        <div class="container text-center">
            <div class="title-head">
                 <h3>Welcome <%
                        if(session.getAttribute("name")!=null){
                         out.print(session.getAttribute("name").toString());
                        }
                    %> To Let's Travel </h3><br>
            <h3>We are with you at every <br>stage of your journey</h3>
            <p>Travel is the only thing you buy that makes you richer.</p>
            
        </div>
          
              </div>
        </div>
</section>
    <%@include file="footer.jsp" %>
</body>
</html>