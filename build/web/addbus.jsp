<!DOCTYPE html>
<html lang="zxx">
<head>
    <title>Expedition Travel | Bus Detail</title>
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
                <a href="adminpanel.jsp">Home</a>
            </li>
            <li class="breadcrumb-item active" aria-current="page">Add Bus Detail</li>
        </ol>
    </nav>
            <!-- register -->
    
        <div class="modal-dialog" role="document">
            <center><h2 class="modal-title" id="exampleModalLabel1">Add Bus Detail</h2></center><br>
            <div class="modal-content">
               
                
                <div class="modal-body">
                      <%
            if(request.getParameter("submit")!=null){
                String title, country, city, busnumber, from1, to1, busduration, stops, departuretime, bustype, acnonac, price;
                title=request.getParameter("Title");
                country=request.getParameter("Country");
                city=request.getParameter("City");
                busnumber=request.getParameter("busNumber");
                from1=request.getParameter("from");
                to1=request.getParameter("to");
                busduration=request.getParameter("Busduration");
                stops=request.getParameter("Stop");
                departuretime=request.getParameter("dtime");
                bustype=request.getParameter("busType");
                acnonac=request.getParameter("acnonac");
                price=request.getParameter("Price");
                   
                        try{
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection myConnection=DriverManager.getConnection(PATH+PLACE, USERNAME, PASSWORD);
                        try{
                            PreparedStatement mystatement = myConnection.prepareStatement("insert into busdetail (title, country, city, bus_number, from1, to1, bus_duration, stops, departure_time, bus_type, ac_nonac, price) values(?,?,?,?,?,?,?,?,?,?,?,?)");
                            mystatement.setString(1, title);
                            mystatement.setString(2, country);
                            mystatement.setString(3, city);
                            mystatement.setString(4, busnumber);
                            mystatement.setString(5, from1);
                            mystatement.setString(6, to1);
                            mystatement.setString(7, busduration);
                            mystatement.setString(8, stops);
                            mystatement.setString(9, departuretime);
                            mystatement.setString(10, bustype);
                            mystatement.setString(11, acnonac);
                            mystatement.setString(12, price);
                            if(mystatement.executeUpdate()>0){
                                out.print("<center><label class='col-form-label'>Bus details added successully</label></center>");
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
                            <label class="col-form-label">Title</label>
                            <input type="text" class="form-control" placeholder=" " name="Title" id="recipient-rname" required="">
                        </div>
                        <div class="form-group">
                            <label class="col-form-label">Country</label>
                            <select name="Country" class="form-control" >
                                <option value=""></option>
                                <option value="india">India</option>
                                <option value="unitedState">United State</option>
                                <option value="canada">Canada</option>
                                <option value="pakistan">Pakistan</option>
                                <option value="paris">Paris</option>
                                <option value="dubai">Dubai</option>
                            </select>
                        </div>
                        <div class="form-group">
                        <label class="col-form-label">City</label>
                            <input type="city" class="form-control" placeholder=" " name="City" id="city1" required="">
                        </div>
                         <div class="form-group">
                            <label class="col-form-label">Bus Number</label>
                            <input type="text" class="form-control" placeholder=" " name="busNumber" id="phone1" required="">
                        </div>
                        <div class="form-group">
                            <label  class="col-form-label">From</label>
                            <input type="text" class="form-control" placeholder=" " name="from" id="from" required="">
                        </div>
                        <div class="form-group">
                            <label  class="col-form-label">To</label>
                            <input type="text" class="form-control" placeholder=" " name="to" id="to" required="">
                        </div>
                          <div class="form-group">
                            <label class="col-form-label">Bus Duration</label>
                            <select name="Busduration" class="form-control" >
                                <option value=""></option>
                                <option value="2">2 Hours</option>
                                <option value="4">4 Hours</option>
                                <option value="5">5 Hours</option>
                                <option value="6">6 Hours</option>
                                <option value="8">8 Hours</option>
                                <option value="12">12 Hours</option>
                                <option value="14">14 Hours</option> 
                            </select>
                        </div>
                        <div class="form-group">
                            <label class="col-form-label">Stops</label>
                            <select name="Stop" class="form-control" >
                                <option value=""></option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option> 
                            </select>
                        </div>
                        <div class="form-group">
                            <label class="col-form-label">Departure Time</label>
                            <input type="time" class="form-control" placeholder=" " name="dtime" id="date1" required="">
                        </div>
                       <div class="form-group">
                            <label class="col-form-label">Bus Type</label>
                            <select name="busType" class="form-control" >
                                <option value=""></option>
                                <option value="Single Deck Bus">Single Deck Bus</option>
                                <option value="Double Decker Bus">Double Decker Bus</option>
                                <option value="Articulated Buses">Articulated Buses</option>
                                <option value="Mini Bus">Mini Bus</option>
                                <option value="Trolley Bus">Trolley Bus</option>
                            </select>
                        </div>
                         <div class="form-group">
                        <label class="col-form-label">AC/Non Ac</label>
                            <select name="acnonac" class="form-control" >
                                <option value=""></option>
                                <option value="ac">AC</option>
                                <option value="nonac">Non AC</option>
                            </select>
                        </div>
                          <div class="form-group">
                            <label class="col-form-label">Price</label>
                            <input type="text" class="form-control" placeholder=" " name="Price" id="price" required="">
                        </div>
                        <div class="right-w3l">
                            <input name="submit" type="submit" class="form-control serv_bottom" value="Add Details">
                        </div>
                    </form>
                </div>
            </div>
        </div>
  
    <!-- // register -->
     <%@include file="footer.jsp" %>
   
</body>
</html>