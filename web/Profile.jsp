<!DOCTYPE html>
<html lang="zxx">
<head>
    <title>Expedition Travel | Login</title>
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
     <%@page import="java.sql.*" %>
    <%@include file="var.jsp" %>
    <style>
        .profile-container {
            max-width: 400px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
        }

        .profile-image {
            max-width: 100%;
            height: 100px;
            border-radius: 50%;
        }

        .upload-button {
            margin-top: 10px;
        }

        input[type="file"] {
            display: none;
        }

        .profile-details {
            margin-top: 20px;
        }

        input[type="text"], input[type="email"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .update-button {
            background-color:  #ff7f62;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            cursor: pointer;
        }
    </style>
</head>
<body>
   
   <div class="inner-banner">
        <!-- header -->
     <%@include file="headerprofile.jsp" %>
           </div>
            <!-- //banner -->
     <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="index.jsp">Home</a>
            </li>
            <li class="breadcrumb-item active" aria-current="page">Login</li>
        </ol>
    </nav>
              <!-- login  -->
   
    <div class="profile-container">
        <center><h1  class="modal-title">Your Profile</h1><br>
        <form>
        <img src="images/avatar.png" alt="Profile Picture" class="profile-image" id="profile-image">
        <div class="upload-button">
            <label for="image-upload" class="update-button">Upload Image</label>
            <input class="profile-image"  type="file" id="image-upload" accept="image/*">
        </div>
        </center>
        <div class="profile-details">
            <strong><label for="name">Name : </label></strong>
            <%
                if(session.getAttribute("name")!=null){
                    out.print(session.getAttribute("name").toString());
                }
            %><br>
            <strong><label for="email">Email : </label></strong>
            <%
                if(session.getAttribute("name")!=null){
                    out.print(session.getAttribute("emailid").toString());
                }
            %><br>
            <strong><label for="sname">Travel Agency : </label></strong> Expedition Travel<br>
            <strong><label for="address">Address : </label></strong> sco-3, 1st floor, brar complex, zikarpur, punjab 140603
        </div><br>
        <center><input type="submit" class="update-button" name="update" value="Update">
        </form>
     </div>
     <%@include file="footer.jsp" %>
</body>
</html>