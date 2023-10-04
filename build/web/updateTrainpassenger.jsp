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
        String name="", email="", gender="", phone="", train_detail="", departure_date="", journey_from="", journey_to="", Class1="", reservation_quota="";
        pid=request.getParameter("passengerid");
        try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection myConnection=DriverManager.getConnection(PATH+PLACE, USERNAME, PASSWORD);
            try{
            PreparedStatement mystatement = myConnection.prepareStatement("select * from train where passenger_id=?");
            mystatement.setString(1, pid);
            ResultSet myresult=mystatement.executeQuery();

            if(myresult.next()){
                name=myresult.getString("name");
                email=myresult.getString("email");
                gender=myresult.getString("gender");
                phone=myresult.getString("phone");
                train_detail=myresult.getString("train_detail");
                departure_date=myresult.getString("departure_date");
                journey_from=myresult.getString("journey_from");
                journey_to=myresult.getString("journey_to");
                Class1=myresult.getString("class");
                reservation_quota=myresult.getString("reservation_quota");
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
                train_detail=request.getParameter("Train_detail");
                departure_date=request.getParameter("dDate");
                journey_from=request.getParameter("from");
                journey_to=request.getParameter("to");
                Class1=request.getParameter("Class");
                reservation_quota=request.getParameter("Reservation");
                
                    try{
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection myConnection=DriverManager.getConnection(PATH+PLACE, USERNAME, PASSWORD);
                        try{
                            PreparedStatement mystatement = myConnection.prepareStatement("update train set name=?, email=?, gender=?, phone=?, train_detail=?, departure_date=?, journey_from=?, journey_to=?, class=?, reservation_quota=? where passenger_id=?");
                            mystatement.setString(1, name);
                            mystatement.setString(2, email);
                            mystatement.setString(3, gender);
                            mystatement.setString(4, phone);
                            mystatement.setString(5, train_detail);
                            mystatement.setString(6, departure_date);
                            mystatement.setString(7, journey_from);
                            mystatement.setString(8, journey_to);
                            mystatement.setString(9, Class1);
                            mystatement.setString(10, reservation_quota);
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
                            <label class="col-form-label">Train Name or Number</label>
                            <input type="text" class="form-control" placeholder=" " name="Train_detail" id="phone1" required=""value="<%=train_detail%>" >
                        </div>
                        
                        <div class="form-group">
                            <label class="col-form-label">Departure date</label>
                            <input type="date" class="form-control" placeholder=" " name="dDate" id="date1" required=""  value="<%=departure_date%>" >
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
                            <label class="col-form-label">Class</label>
                            <select name="Class" class="form-control" >
                                <option value=""></option>
                                 <%
                                if(gender.equals("sleeper")){
                                  out.print("<option value='sleeper' selected>Sleeper</option>");
                                  out.print("<option value='first Class'>First Class</option>");
                                  out.print("<option value='second Sitting'>Second Sitting</option>");
                                  out.print("<option value='Ac First Class'>AC First Class</option>");
                                  out.print("<option value='Ac 2 Tier'>Ac 2 Tier</option>");
                                  out.print("<option value='Ac 3 Tier'>Ac 3 Tier</option>");
                                }
                                else if(gender.equals("first Class")){
                                   out.print("<option value='sleeper'>Sleeper</option>");
                                  out.print("<option value='first Class' selected>First Class</option>");
                                  out.print("<option value='second Sitting'>Second Sitting</option>");
                                  out.print("<option value='Ac First Class'>AC First Class</option>");
                                  out.print("<option value='Ac 2 Tier'>Ac 2 Tier</option>");
                                  out.print("<option value='Ac 3 Tier'>Ac 3 Tier</option>");
                                }
                                else if(gender.equals("second Sitting")){
                                   out.print("<option value='sleeper'>Sleeper</option>");
                                  out.print("<option value='first Class'>First Class</option>");
                                  out.print("<option value='second Sitting' selected>Second Sitting</option>");
                                  out.print("<option value='Ac First Class'>AC First Class</option>");
                                  out.print("<option value='Ac 2 Tier'>Ac 2 Tier</option>");
                                  out.print("<option value='Ac 3 Tier'>Ac 3 Tier</option>");
                                }
                                else if(gender.equals("Ac First Class")){
                                   out.print("<option value='sleeper'>Sleeper</option>");
                                  out.print("<option value='first Class'>First Class</option>");
                                  out.print("<option value='second Sitting'>Second Sitting</option>");
                                  out.print("<option value='Ac First Class' selected>AC First Class</option>");
                                  out.print("<option value='Ac 2 Tier'>Ac 2 Tier</option>");
                                  out.print("<option value='Ac 3 Tier'>Ac 3 Tier</option>");
                                }
                                else if(gender.equals("Ac 2 Tier")){
                                   out.print("<option value='sleeper'>Sleeper</option>");
                                  out.print("<option value='first Class'>First Class</option>");
                                  out.print("<option value='second Sitting'>Second Sitting</option>");
                                  out.print("<option value='Ac First Class'>AC First Class</option>");
                                  out.print("<option value='Ac 2 Tier' selected>Ac 2 Tier</option>");
                                  out.print("<option value='Ac 3 Tier'>Ac 3 Tier</option>");
                                }
                                else{
                                   out.print("<option value='sleeper'>Sleeper</option>");
                                  out.print("<option value='first Class'>First Class</option>");
                                  out.print("<option value='second Sitting'>Second Sitting</option>");
                                  out.print("<option value='Ac First Class'>AC First Class</option>");
                                  out.print("<option value='Ac 2 Tier'>Ac 2 Tier</option>");
                                  out.print("<option value='Ac 3 Tier' selected>Ac 3 Tier</option>");
                                }
                                
                            %>
                               
                            </select>
                        </div>
                        <div class="form-group">
                            <label class="col-form-label">Reservation Quota</label>
                            <select name="Reservation" class="form-control" >
                                <option value=""></option>
                                 <%
                                if(gender.equals("general")){
                                  out.print("<option value='general' selected>General</option>");
                                  out.print("<option value='ladies'>Ladies</option>");
                                  out.print("<option value='tatkal'>Tatkal</option>");
                                  out.print("<option value='lower Berth'>Lower Berth/Sr.Citizen</option>");
                                  out.print("<option value='disability'>Person with disability</option>");
                                }
                                else if(gender.equals("ladies")){
                                  out.print("<option value='general'>General</option>");
                                  out.print("<option value='ladies' selected>Ladies</option>");
                                  out.print("<option value='tatkal'>Tatkal</option>");
                                  out.print("<option value='lower Berth'>Lower Berth/Sr.Citizen</option>");
                                  out.print("<option value='disability'>Person with disability</option>");
                                }
                                else if(gender.equals("tatkal")){
                                  out.print("<option value='general'>General</option>");
                                  out.print("<option value='ladies'>Ladies</option>");
                                  out.print("<option value='tatkal' selected>Tatkal</option>");
                                  out.print("<option value='lower Berth'>Lower Berth/Sr.Citizen</option>");
                                  out.print("<option value='disability'>Person with disability</option>");
                                }
                                else if(gender.equals("lower Berth")){
                                  out.print("<option value='general'>General</option>");
                                  out.print("<option value='ladies'>Ladies</option>");
                                  out.print("<option value='tatkal'>Tatkal</option>");
                                  out.print("<option value='lower Berth' selected>Lower Berth/Sr.Citizen</option>");
                                  out.print("<option value='disability'>Person with disability</option>");
                                }
                                else{
                                  out.print("<option value='general'>General</option>");
                                  out.print("<option value='ladies'>Ladies</option>");
                                  out.print("<option value='tatkal'>Tatkal</option>");
                                  out.print("<option value='lower Berth'>Lower Berth/Sr.Citizen</option>");
                                  out.print("<option value='disability' selected>Person with disability</option>");
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