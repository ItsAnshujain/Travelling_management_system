<!DOCTYPE html>
<html lang="zxx">
<head>
     <title>Expedition Travel | Contact</title>
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
     <%@page import="javax.mail.*"%>
    <%@page import="javax.mail.internet.*"%>
    <%@page import="java.util.Properties"%>
   
   <div class="inner-banner">
        <!-- header -->
     <%@include file="header.jsp" %>
           </div>
             <!-- //banner -->
     <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="index.jsp">Home</a>
            </li>
            <li class="breadcrumb-item active" aria-current="page">Contact Us</li>
        </ol>
    </nav>
	 <!-- contact -->
    <div class="container py-lg-5 mt-sm-5 mt-3">
        <h3 class="agile-title text-uppercase"></h3>
        <span class="w3-line"></span>
		<div class="w3ls-titles text-center mb-5">
				<h3 class="title"><span class="hdng">Contact  </span>us</h3>
				<span class="btmspn">
					<i class="fas fa-bus"></i>
				</span>
				<p class="mt-2 mx-auto">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius eum inventore consectetur dolorum, voluptatum possimus temporibus vel ab, nesciunt quod!</p>
			</div>
        <div class="row py-md-5 py-sm-3">
            <div class="col-md-6">
                     <%
                        if(request.getParameter("submit")!=null){
                            Properties props = new Properties();
                            props.put("mail.smtp.host", "smtp.office365.com");
                            props.put("mail.smtp.socketFactory.port", "587");
                            props.put("mail.smtp.socketFactory.class",
                            "javax.net.ssl.SSLSocketFactory");
                            props.put("mail.smtp.auth", "true");
                            props.put("mail.smtp.port", "587");
                            props.put("mail.smtp.starttls.enable", true);
                            props.put("mail.smtp.ssl.trust", "*");
                            props.put("mail.smtp.ssl.protocols", "TLSv1.2");

                            Session session2 = Session.getInstance(props,
                            new javax.mail.Authenticator() {
                            protected PasswordAuthentication getPasswordAuthentication() {
                            return new PasswordAuthentication("jainanshuforproject@outlook.com","School@123");
                            }
                            });
                            try {
                            Message message = new MimeMessage(session2);
                            message.addHeader("Content-type", "text/html; charset=UTF-8");
                            message.setFrom(new InternetAddress("jainanshuforproject@outlook.com"));
                            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse("dikshavashist2007@gmail.com"));
                            message.setSubject("Feedback from website");

                            message.setText("Name : " + request.getParameter("name") + "\nEmailid : "+ request.getParameter("email") +
                            "\nPhone :" + request.getParameter("phone") + "\nMessage : " + request.getParameter("message"));
                            Transport.send(message);
                            out.print("<center><label class='col-form-label'>Mail has been sent successfully</label></center>");
                            }
                            catch(Exception e)
                            {
                            out.print("Mail does not works due to " + e.getMessage());
                            }
                        }
                    %>
                <form id="contact-form" name="myForm" class="form" action="#" onsubmit="return validateForm()" method="POST">
                    <div class="form-group">
                        <label class="form-label" id="nameLabel" for="name"></label>
                        <input type="text" class="form-control" id="name" name="name" placeholder="Your name" tabindex="1">
                    </div>
                    <div class="form-group">
                        <label class="form-label" id="emailLabel" for="email"></label>
                        <input type="email" class="form-control" id="email" name="email" placeholder="Your Email" tabindex="2">
                    </div>
                    <div class="form-group">
                        <label class="form-label" id="phoneLabel" for="phone"></label>
                        <input type="text" class="form-control" id="phone" name="phone" placeholder="Phone number" tabindex="3">
                    </div>
                    <div class="form-group">
                        <label class="form-label" id="messageLabel" for="message"></label>
                        <textarea rows="6" cols="60" name="message" class="form-control" name="message" id="message" placeholder="Your message" tabindex="4"></textarea>
                    </div>
                    <div class="text-center mt-5">
                        <button name="submit" type="submit" class="serv_bottom btn btn-border btn-lg w-100">Send Message</button>
                    </div>
                </form>
             
            </div>
            <div class="col-md-6 map mt-md-0 mt-5">
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d805184.6315353655!2d144.49269953060633!3d-37.971237044864175!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6ad646b5d2ba4df7%3A0x4045675218ccd90!2sMelbourne+VIC%2C+Australia!5e0!3m2!1sen!2sin!4v1532474074705"  allowfullscreen></iframe>
            </div>
        </div>
    </div>
    <!-- //contact -->
    <%@include file="footer.jsp" %>
    
</body>
</html>