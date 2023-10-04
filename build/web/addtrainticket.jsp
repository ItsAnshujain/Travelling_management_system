<!DOCTYPE html>
<html lang="zxx">
<head>
    <title>Expedition Travel | Train Ticket</title>
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
     <%@include file="headeruser.jsp" %>
           </div>
            <!-- //banner -->
     <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="userpanel.jsp">Home</a>
            </li>
            <li class="breadcrumb-item active" aria-current="page">Train Ticket</li>
        </ol>
    </nav>
            <!-- register -->
    
        <div class="modal-dialog" role="document">
            <center><h2 class="modal-title" id="exampleModalLabel1">Book Train Ticket</h2></center><br>
            <div class="modal-content">
               
                
                <div class="modal-body">
                      <%
            if(request.getParameter("submit")!=null){
                String name, email, gender, phone, train_detail, departure_date, journney_from, journney_to, Class1, reservation_quota;
                name=request.getParameter("Name");
                email=request.getParameter("Email");
                gender=request.getParameter("Gender");
                phone=request.getParameter("Phone");
                train_detail=request.getParameter("Train_detail");
                departure_date=request.getParameter("dDate");
                journney_from=request.getParameter("from");
                journney_to=request.getParameter("to");
                Class1=request.getParameter("Class");
                reservation_quota=request.getParameter("Reservation");
                
                    try{
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection myConnection=DriverManager.getConnection(PATH+PLACE, USERNAME, PASSWORD);
                        try{
                            PreparedStatement mystatement = myConnection.prepareStatement("insert into train (name, email, gender, phone, train_detail, departure_date, journey_from, journey_to, class, reservation_quota) values(?,?,?,?,?,?,?,?,?,?)");
                            mystatement.setString(1, name);
                            mystatement.setString(2, email);
                            mystatement.setString(3, gender);
                            mystatement.setString(4, phone);
                            mystatement.setString(5, train_detail);
                            mystatement.setString(6, departure_date);
                            mystatement.setString(7, journney_from);
                            mystatement.setString(8, journney_to);
                            mystatement.setString(9, Class1);
                            mystatement.setString(10, reservation_quota);
                            if(mystatement.executeUpdate()>0){
                                out.print("<center><label class='col-form-label'>Successfully, Your Booking has been Confirmed !</label></center>");
                            }
                            
                        }catch(Exception e){
                            out.print("<label class='col-form-label'>"+"Error in query due to"+e.getMessage()+"</label>");
                        }
                    }catch(Exception e){
                        out.print("<label class='col-form-label'>"+"Error in Connection due to  "+e.getMessage()+"</label>");
                    }   

                }
              
        %>
                    <form action="#" method="post">
                        <div class="form-group">
                            <label class="col-form-label">Name</label>
                            <input type="text" class="form-control" placeholder=" " name="Name" id="recipient-rname" required="">
                        </div>
                        <div class="form-group">
                            <label class="col-form-label">Email</label>
                            <input type="email" class="form-control" placeholder=" " name="Email" id="email" required="">
                            <div id="answerbox"></div>
                        </div>
                         <div class="form-group">
                        <label class="col-form-label">Gender</label>
                        <select name="Gender" class="form-control" >
                            <option value=""></option>
                            <option value="male">Male</option>
                            <option value="female">Female</option>
                        </select>
                    </div>
                        <div class="form-group">
                            <label class="col-form-label">Phone Number</label>
                            <input type="phone" class="form-control" placeholder=" " name="Phone" id="phone1" required="">
                        </div>
                        <div class="form-group">
                            <label class="col-form-label">Train Name or Number</label>
                            <input type="text" class="form-control" placeholder=" " name="Train_detail" id="phone1" required="">
                        </div>
                        
                        <div class="form-group">
                            <label class="col-form-label">Departure date</label>
                            <input type="date" class="form-control" placeholder=" " name="dDate" id="date1" required="">
                        </div>
                        <div class="form-group">
                            <label class="col-form-label">Journey From</label>
                            <input type="text" class="form-control" placeholder=" " name="from" id="from" required="">
                        </div>
                        <div class="form-group">
                            <label class="col-form-label">Journey To</label>
                            <input type="text" class="form-control" placeholder=" " name="to" id="to" required="">
                        </div>
                        <div class="form-group">
                            <label class="col-form-label">Class</label>
                            <select name="Class" class="form-control" >
                                <option value=""></option>
                                <option value="sleeper">Sleeper</option>
                                <option value="first Class">First Class</option>
                                <option value="second Sitting">Second Sitting</option>
                                <option value="Ac First Class">AC First Class</option>
                                <option value="Ac 2 Tier">AC 2 Tier</option>
                                <option value="Ac 3 Tier">AC 3 Tier</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label class="col-form-label">Reservation Quota</label>
                            <select name="Reservation" class="form-control" >
                                <option value=""></option>
                                <option value="general">General</option>
                                <option value="ladies">Ladies</option>
                                <option value="tatkal">Tatkal</option>
                                <option value="lower Berth">Lower Berth/Sr.Citizen</option>
                                <option value="disability">Person with disability</option>
                            </select>
                        </div>
                        <div class="right-w3l">
                            <input name="submit" type="submit" class="form-control serv_bottom" value="Confirm Booking">
                        </div>
                    </form>
                    
                </div>
            </div>
        </div>
  
    <!-- // register -->
     <%@include file="footer.jsp" %>
   
</body>
</html>