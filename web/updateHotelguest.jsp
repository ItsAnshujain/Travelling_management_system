<!DOCTYPE html>
<html lang="zxx">
<head>
    <title>Expedition Travel | Update Hotel Guest Ticket</title>
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
            <li class="breadcrumb-item active" aria-current="page">Update Hotel Guest Booking</li>
        </ol>
    </nav>
            <!-- register -->
    
        <div class="modal-dialog" role="document">
             <%
           String gid;          
        String name="", email="", gender="", phone="", arrival_date="", departure_date="", room_type="";
        gid=request.getParameter("guestid");
        try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection myConnection=DriverManager.getConnection(PATH+PLACE, USERNAME, PASSWORD);
            try{
            PreparedStatement mystatement = myConnection.prepareStatement("select * from hotel where guest_id=?");
            mystatement.setString(1, gid);
            ResultSet myresult=mystatement.executeQuery();

            if(myresult.next()){
                name=myresult.getString("name");
                email=myresult.getString("email");
                gender=myresult.getString("gender");
                phone=myresult.getString("phone");
                arrival_date=myresult.getString("arrival_date");
                departure_date=myresult.getString("departure_date");
                room_type=myresult.getString("room_type");
            }
            else{
            out.print("Wrong guest id");
        }
        }catch(Exception e){
            out.print("<label class='col-form-label'>"+"Error in query due to"+e.getMessage()+"</label>");
        }
        }catch(Exception e){
        out.print("<label class='col-form-label'>"+"Error in Connection due to"+e.getMessage()+"</label>");
        } 
    %>
            <center><h2 class="modal-title" id="exampleModalLabel1">Update Hotel Guest Booking</h2></center><br>
            <div class="modal-content">
               
                
                <div class="modal-body">
                      <%
            if(request.getParameter("submit")!=null){
                name=request.getParameter("Name");
                email=request.getParameter("Email");
                gender=request.getParameter("Gender");
                phone=request.getParameter("Phone");
                arrival_date=request.getParameter("aDate");
                departure_date=request.getParameter("dDate");
                room_type=request.getParameter("Roomtype");
                
                    try{
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection myConnection=DriverManager.getConnection(PATH+PLACE, USERNAME, PASSWORD);
                        try{
                            PreparedStatement mystatement = myConnection.prepareStatement("update hotel set name=?, email=?, gender=?, phone=?, arrival_date=?, departure_date=?, room_type=? where guest_id=?");
                           mystatement.setString(1, name);
                            mystatement.setString(2, email);
                            mystatement.setString(3, gender);
                            mystatement.setString(4, phone);
                            mystatement.setString(5, arrival_date);
                            mystatement.setString(6, departure_date);
                            mystatement.setString(7, room_type);
                             mystatement.setString(8, gid);
                            if(mystatement.executeUpdate()>0){
                                out.print("<center><label class='col-form-label'>Guest updated successfully !</label></center>");
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
                            <label class="col-form-label">Arrival date</label>
                            <input type="date" class="form-control" placeholder=" " name="aDate" id="date1" required="" value="<%=arrival_date%>">
                        </div>
                        <div class="form-group">
                            <label class="col-form-label">Departure date</label>
                            <input type="date" class="form-control" placeholder=" " name="dDate" id="date1" required=""  value="<%=departure_date%>" >
                        </div>
                       <div class="form-group">
                            <label class="col-form-label">Room Type</label>
                            <select name="Roomtype" class="form-control" >
                            <option value=""></option>
                             <%
                                if(gender.equals("standard")){
                                  out.print("<option value='standard' selected>Standard</option>");
                                  out.print("<option value='deluxe'>Deluxe</option>");
                                  out.print("<option value='suite'>Suite</option>");
                                }
                                else if(gender.equals("deluxe")){
                                  out.print("<option value='standard'>Standard</option>");
                                  out.print("<option value='deluxe' selected>Deluxe</option>");
                                  out.print("<option value='suite'>Suite</option>");
                                }
                                else{
                                  out.print("<option value='standard'>Standard</option>");
                                  out.print("<option value='deluxe'>Deluxe</option>");
                                  out.print("<option value='suite' selected>Suite</option>");
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