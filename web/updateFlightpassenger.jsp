<!DOCTYPE html>
<html lang="zxx">
<head>
    <title>Expedition Travel | Update Flight Passenger Ticket</title>
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
     <%@include file="headeradmin.jsp" %>
           </div>
            <!-- //banner -->
     <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="userpanel.jsp">Home</a>
            </li>
            <li class="breadcrumb-item active" aria-current="page">Update Flight Passenger Ticket</li>
        </ol>
    </nav>
            <!-- register -->
    
        <div class="modal-dialog" role="document">
             <%
           String pid;          
        String name="", email="", gender="", phone="", departure_date="", departure_time="", journey_from="", journey_to="", fare="", prefferd_seat="";
        pid=request.getParameter("passengerid");
        try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection myConnection=DriverManager.getConnection(PATH+PLACE, USERNAME, PASSWORD);
            try{
            PreparedStatement mystatement = myConnection.prepareStatement("select * from flight where passenger_id=?");
            mystatement.setString(1, pid);
            ResultSet myresult=mystatement.executeQuery();

            if(myresult.next()){
                name=myresult.getString("name");
                email=myresult.getString("email");
                gender=myresult.getString("gender");
                phone=myresult.getString("phone");
                departure_date=myresult.getString("departure_date");
                departure_time=myresult.getString("departure_time");
                journey_from=myresult.getString("journey_from");
                journey_to=myresult.getString("journey_to");
                fare=myresult.getString("fare");
                prefferd_seat=myresult.getString("prefferd_seat");
            }
            else{
            out.print("Wrong passenger id");
        }
        }catch(Exception e){
            out.print("<label class='col-form-label'>"+"Error in query due to"+e.getMessage()+"</label>");
        }
        }catch(Exception e){
        out.print("<label class='col-form-label'>"+"Error in Connection due to"+e.getMessage()+"</label>");
        } 
    %>
            <center><h2 class="modal-title" id="exampleModalLabel1">Update Flight Passenger Ticket</h2></center><br>
            <div class="modal-content">
               
                
                <div class="modal-body">
                      <%
            if(request.getParameter("submit")!=null){
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
                            PreparedStatement mystatement = myConnection.prepareStatement("update flight set name=?, email=?, gender=?, phone=?, departure_date=?, departure_time=?, journey_from=?, journey_to=?, fare=?, prefferd_seat=? where passenger_id=?");
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
                            mystatement.setString(11, pid);
                            if(mystatement.executeUpdate()>0){
                                out.print("<center><label class='col-form-label'>Passenger updated successfully !</label></center>");
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
                            <input type="text" class="form-control" placeholder=" " name="Name" id="recipient-rname" required=""  value="<%=name%>">
                        </div>
                        <div class="form-group">
                            <label class="col-form-label">Email</label>
                            <input type="email" class="form-control" placeholder=" " name="Email" id="email" required=""  value="<%=email%>" >
                            <div id="answerbox"></div>
                        </div>
                         <div class="form-group">
                        <label class="col-form-label">Gender</label>
                        <select name="Gender" class="form-control" >
                            <option value=""></option>
                             <%
                                if(gender.equals("male")){
                                  out.print("<option value='male' selected>Male</option>");
                                  out.print("<option value='female'>Female</option>");
                                }
                                else{
                                  out.print("<option value='male'>Male</option>");
                                  out.print("<option value='female' selected>Female</option>");
                                }
                            %>
                        </select>
                    </div>
                        <div class="form-group">
                            <label class="col-form-label">Phone Number</label>
                            <input type="phone" class="form-control" placeholder=" " name="Phone" id="phone1" required=""  value="<%=phone%>" >
                        </div>
                        <div class="form-group">
                            <label class="col-form-label">Departure date</label>
                            <input type="date" class="form-control" placeholder=" " name="dDate" id="date1" required=""  value="<%=departure_date%>" >
                        </div>
                         <div class="form-group">
                            <label class="col-form-label">Departure Time</label>
                            <input type="time" class="form-control" placeholder=" " name="dTime" id="time" required="" value="<%=departure_time%>">
                        </div>
                        <div class="form-group">
                            <label  class="col-form-label">Journey From</label>
                            <input type="text" class="form-control" placeholder=" " name="from" id="from" required=""  value="<%=journey_from%>" >
                        </div>
                        <div class="form-group">
                            <label  class="col-form-label">Journey To</label>
                            <input type="text" class="form-control" placeholder=" " name="to" id="to" required=""  value="<%=journey_to%>" >
                        </div>
                        <div class="form-group">
                            <label class="col-form-label">Fare</label>
                            <select name="Fare" class="form-control" >
                            <option value=""></option>
                             <%
                                if(gender.equals("oneWay")){
                                  out.print("<option value='oneWay' selected>oneWay</option>");
                                  out.print("<option value='RoundTrip'>Round trip</option>");
                                }
                                else{
                                  out.print("<option value='oneWay'>oneWay</option>");
                                  out.print("<option value='RoundTrip' selected>Round trip</option>");
                                }
                            %>
                        </select>
                        </div>
                        <div class="form-group">
                            <label class="col-form-label">Prefferd Seating</label>
                          <select name="Seattype" class="form-control" >
                            <option value=""></option>
                             <%
                                if(gender.equals("aisle")){
                                  out.print("<option value='aisle' selected>Aisle(Window)</option>");
                                  out.print("<option value='middle'>Middle</option>");
                                  out.print("<option value='all'>All</option>");
                                }
                                else if(gender.equals("aisle")){
                                  out.print("<option value='aisle'>Aisle(Window)</option>");
                                  out.print("<option value='middle' selected>Middle</option>");
                                  out.print("<option value='all'>All</option>");
                                }
                                else {
                                  out.print("<option value='aisle'>Aisle(Window)</option>");
                                  out.print("<option value='middle'>Middle</option>");
                                  out.print("<option value='all' selected>All</option>");
                                }
                            %>
                        </select>
                        </div>
                        </div>
                        <div class="right-w3l">
                            <input name="submit" type="submit" class="form-control serv_bottom" value="Update Passenger">
                        </div>
                    </form>
                    
                </div>
            </div>
        </div>
  
    <!-- // register -->
     <%@include file="footer.jsp" %>
   
</body>
</html>