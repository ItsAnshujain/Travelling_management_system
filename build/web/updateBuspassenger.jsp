<!DOCTYPE html>
<html lang="zxx">
<head>
    <title>Expedition Travel | Update Bus Passenger Ticket</title>
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
            <li class="breadcrumb-item active" aria-current="page">Update Bus Passenger Ticket</li>
        </ol>
    </nav>
            <!-- register -->
    
        <div class="modal-dialog" role="document">
             <%
           String pid;          
        String name="", email="", gender="", phone="", departure_date="", journney_from="", journney_to="", bus_type="", seating_type="";
        pid=request.getParameter("passengerid");
        try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection myConnection=DriverManager.getConnection(PATH+PLACE, USERNAME, PASSWORD);
            try{
            PreparedStatement mystatement = myConnection.prepareStatement("select * from bus where passenger_id=?");
            mystatement.setString(1, pid);
            ResultSet myresult=mystatement.executeQuery();

            if(myresult.next()){
                name=myresult.getString("name");
                email=myresult.getString("email");
                gender=myresult.getString("gender");
                phone=myresult.getString("phone");
                departure_date=myresult.getString("departure_date");
                journney_from=myresult.getString("journney_from");
                journney_to=myresult.getString("journney_to");
                bus_type=myresult.getString("bus_type");
                seating_type=myresult.getString("seating_type");
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
            <center><h2 class="modal-title" id="exampleModalLabel1">Update Bus Passenger Ticket</h2></center><br>
            <div class="modal-content">
               
                
                <div class="modal-body">
                      <%
            if(request.getParameter("submit")!=null){
                name=request.getParameter("Name");
                email=request.getParameter("Email");
                gender=request.getParameter("Gender");
                phone=request.getParameter("Phone");
                departure_date=request.getParameter("dDate");
                journney_from=request.getParameter("from");
                journney_to=request.getParameter("to");
                bus_type=request.getParameter("Bustype");
                seating_type=request.getParameter("seattype");
                
                    try{
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection myConnection=DriverManager.getConnection(PATH+PLACE, USERNAME, PASSWORD);
                        try{
                            PreparedStatement mystatement = myConnection.prepareStatement("update bus set name=?, email=?, gender=?, phone=?, departure_date=?, journney_from=?, journney_to=?, bus_type=?, seating_type=? where passenger_id=?");
                            mystatement.setString(1, name);
                            mystatement.setString(2, email);
                            mystatement.setString(3, gender);
                            mystatement.setString(4, phone);
                            mystatement.setString(5, departure_date);
                            mystatement.setString(6, journney_from);
                            mystatement.setString(7, journney_to);
                            mystatement.setString(8, bus_type);
                            mystatement.setString(9, seating_type);
                            mystatement.setString(10, pid);
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
                            <label  class="col-form-label">Journey From</label>
                            <input type="text" class="form-control" placeholder=" " name="from" id="from" required=""  value="<%=journney_from%>" >
                        </div>
                        <div class="form-group">
                            <label  class="col-form-label">Journey To</label>
                            <input type="text" class="form-control" placeholder=" " name="to" id="to" required=""  value="<%=journney_to%>" >
                        </div>
                        <div class="form-group">
                            <label class="col-form-label">Bus Type</label>
                            <select name="Bustype" class="form-control" >
                            <option value=""></option>
                            <%
                                if(gender.equals("private")){
                                  out.print("<option value='private' selected>Private</option>");
                                  out.print("<option value='roadways'>Roadways</option>");
                                }
                                else{
                                  out.print("<option value='private'>Private</option>");
                                  out.print("<option value='roadways' selected>Roadways</option>");
                                }
                            %>
                        </select>
                        </div>
                        <div class="form-group">
                            <label class="col-form-label">Seating Type</label>
                          <select name="seattype" class="form-control" >
                            <option value=""></option>
                             <%
                                if(gender.equals("ac_seater")){
                                  out.print("<option value='ac_seater' selected>AC Seater</option>");
                                  out.print("<option value='nonac_seater'>Non AC Seater</option>");
                                  out.print("<option value='ac_sleeper'>AC Sleeper</option>");
                                  out.print("<option value='nonac_sleeper'>Non AC Sleeper</option>");
                                }
                                else if(gender.equals("nonac_seater")){
                                  out.print("<option value='ac_seater' >AC Seater</option>");
                                  out.print("<option value='nonac_seater' selected>Non AC Seater</option>");
                                  out.print("<option value='ac_sleeper' >AC Sleeper</option>");
                                  out.print("<option value='nonac_sleeper'>Non AC Sleeper</option>");
                                }
                                else if(gender.equals("nonac_seater")){
                                  out.print("<option value='ac_seater'>AC Seater</option>");
                                  out.print("<option value='nonac_seater'>Non AC Seater</option>");
                                  out.print("<option value='ac_sleeper' selected>AC Sleeper</option>");
                                  out.print("<option value='nonac_sleeper'>Non AC Sleeper</option>");
                                }
                                else {
                                  out.print("<option value='ac_seater' >AC Seater</option>");
                                  out.print("<option value='nonac_seater'>Non AC Seater</option>");
                                  out.print("<option value='ac_sleeper'>AC Sleeper</option>");
                                  out.print("<option value='nonac_sleeper' selected>Non AC Sleeper</option>");
                                }
                            %>
                           
                        </select>
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