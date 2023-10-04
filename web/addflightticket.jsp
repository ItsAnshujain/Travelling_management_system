<!DOCTYPE html>
<html lang="zxx">
<head>
    <title>Expedition Travel | Flight Ticket</title>
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
            <li class="breadcrumb-item active" aria-current="page">Flight Ticket</li>
        </ol>
    </nav>
            <!-- register -->
    
        <div class="modal-dialog" role="document">
            <center><h2 class="modal-title" id="exampleModalLabel1">Book Flight Ticket</h2></center><br>
            <div class="modal-content">
               
                
                <div class="modal-body">
                         <%
            if(request.getParameter("submit")!=null){
                String name, email, gender, phone, departure_date, departure_time, journey_from, journey_to, fare, prefferd_seat;
                name=request.getParameter("Name");
                email=request.getParameter("Email");
                gender=request.getParameter("Gender");
                phone=request.getParameter("Phone");
                departure_date=request.getParameter("dDate");
                departure_time=request.getParameter("dTime");
                journey_from=request.getParameter("from");
                journey_to=request.getParameter("to");
                fare=request.getParameter("Fare");
                prefferd_seat=request.getParameter("Seattype");
                
                    try{
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection myConnection=DriverManager.getConnection(PATH+PLACE, USERNAME, PASSWORD);
                        try{
                            PreparedStatement mystatement = myConnection.prepareStatement("insert into flight (name, email, gender, phone, departure_date, departure_time, journey_from, journey_to, fare, prefferd_seat) values(?,?,?,?,?,?,?,?,?,?)");
                            mystatement.setString(1, name);
                            mystatement.setString(2, email);
                            mystatement.setString(3, gender);
                            mystatement.setString(4, phone);
                            mystatement.setString(5, departure_date);
                            mystatement.setString(6, departure_time);
                            mystatement.setString(7, journey_from);
                            mystatement.setString(8, journey_to);
                            mystatement.setString(9, fare);
                            mystatement.setString(10, prefferd_seat);
                            if(mystatement.executeUpdate()>0){
                                out.print("<center><label class='col-form-label'>Successfully, Your Booking has been Confirmed !</label></center>");
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
                            <label class="col-form-label">Departure date</label>
                            <input type="date" class="form-control" placeholder=" " name="dDate" id="date1" required="">
                        </div>
                        <div class="form-group">
                            <label class="col-form-label">Departure Time</label>
                            <input type="time" class="form-control" placeholder=" " name="dTime" id="time" required="">
                        </div>
                        <div class="form-group">
                            <label  class="col-form-label">Journey From</label>
                            <input type="text" class="form-control" placeholder=" " name="from" id="from" required="">
                        </div>
                        <div class="form-group">
                            <label  class="col-form-label">Journey To</label>
                            <input type="text" class="form-control" placeholder=" " name="to" id="to" required="">
                        </div>
                        <div class="form-group">
                            <label class="col-form-label">Fare</label>
                            <select name="Fare" class="form-control" >
                            <option value=""></option>
                            <option value="oneWay">One Way</option>
                            <option value="RoundTrip">Round trip</option>
                        </select>
                        </div>
                        <div class="form-group">
                            <label class="col-form-label">Prefferd Seating</label>
                          <select name="Seattype" class="form-control" >
                            <option value=""></option>
                            <option value="aisle">Aisle(Window)</option>
                            <option value="middle">Middle</option>
                            <option value="all">All</option>
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