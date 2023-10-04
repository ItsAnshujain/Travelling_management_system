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
</head>
<body>
   
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
            <li class="breadcrumb-item active" aria-current="page">Login</li>
        </ol>
    </nav>
              <!-- login  -->
   
        <div class="modal-dialog" role="document">
            <center> <h1 class="modal-title" id="exampleModalLabel">Login</h1></center><br>
            <div class="modal-content">
                <div class="modal-body">
                       <%
            if(request.getParameter("login")!=null){
                String email1, password1;
                email1=request.getParameter("Email");
                password1=request.getParameter("Password");
                    try{
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection myConnection=DriverManager.getConnection(PATH+PLACE, USERNAME, PASSWORD);
                        try{
                            PreparedStatement mystatement = myConnection.prepareStatement("select * from usertable where Email=? and Password=MD5(?)");
                            
                            mystatement.setString(1, email1);
                            mystatement.setString(2, password1 + SALT);
                            
                            ResultSet myresult=mystatement.executeQuery();
                            
                            if(myresult.next()){
                                if(myresult.getString("usertype").equals("admin"))
                        {
                             if(request.getParameter("rememberme")!=null)    
                            {
                                    Cookie mycookie = new Cookie("adminname", myresult.getString("name"));
                                    mycookie.setMaxAge(60*60*24*7);
                                    response.addCookie(mycookie);
    
                            }
                            session.setAttribute("adminname", myresult.getString("name"));
                            response.sendRedirect("adminpanel.jsp");
                        }
                        else
                        {
                            if(request.getParameter("rememberme")!=null)    
                            {
                                    
                                    Cookie mycookie2 = new Cookie("emailid", email1);
                                    mycookie2.setMaxAge(60*60*24*7);
                                    response.addCookie(mycookie2);
    
                            }
                            session.setAttribute("name", myresult.getString("name"));
                            session.setAttribute("emailid", email1);
                            response.sendRedirect("userpanel.jsp");
                        }
                            }
                            else{
                                out.print("<center><label class='col-form-label'>Incorrect username or password</label></center>");
                            }
                            
                        }catch(Exception e){
                            out.print("<label class='col-form-label'>"+"Error in query due to "+e.getMessage()+"</label>");
                        }
                    }catch(Exception e){
                        out.print("<label class='col-form-label'>"+"Error in Connection due to  "+e.getMessage()+"</label>");
                    } 
            }
        %>
                    <form action="#" method="post">
                        <div class="form-group">
                            <label for="recipient-name" class="col-form-label">User's Email Id</label>
                            <input type="email" class="form-control" placeholder=" " name="Email" id="recipient-name" required="">
                        </div>
                        <div class="form-group">
                            <label for="password" class="col-form-label">Password</label>
                            <input type="password" class="form-control" placeholder=" " name="Password" id="password" required="">
                        </div>
                        <div class="right-w3l">
                            <input name='login' type="submit" class="form-control serv_bottom" value="Login">
                        </div>
                        <div class="row sub-w3l my-3">
                            <div class="col sub-agile">
                                <input type="checkbox" name="rememberme" id="rememberme" value="">
                                <label for="brand1" class="text-secondary">
                                    <span></span>Remember me?</label>
                            </div>
                            <div class="col forgot-w3l text-right">
                                <a href="#" class="text-secondary">Forgot Password?</a>
                            </div>
                        </div>
                        <p class="text-center text-secondary">Don't have an account?
                            <a href="register.jsp"  class="text-dark font-weight-bold">Register Now</a>
                        </p>
                    </form>
                </div>
            </div>
        </div>
   
    <!-- // login -->
     <%@include file="footer.jsp" %>
</body>
</html>