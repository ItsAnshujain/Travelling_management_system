<!DOCTYPE html>
<html lang="zxx">
<head>
    <title>Expedition Travel | Train Detail</title>
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
            <li class="breadcrumb-item active" aria-current="page">Add Train Detail</li>
        </ol>
    </nav>
            <!-- register -->
    
        <div class="modal-dialog" role="document">
            <center><h2 class="modal-title" id="exampleModalLabel1">Add Train Detail</h2></center><br>
            <div class="modal-content">
               
                
                <div class="modal-body">
                      <%
            if(request.getParameter("submit")!=null){
                String title, country, city, train_pnrNumber, from1, to1, train_duration, stops, departure_date, return_date, Class1, price;
                title=request.getParameter("Title");
                country=request.getParameter("Country");
                city=request.getParameter("City");
                train_pnrNumber=request.getParameter("Train_pnr");
                from1=request.getParameter("from");
                to1=request.getParameter("to");
                train_duration=request.getParameter("Trainduration");
                stops=request.getParameter("Stop");
                departure_date=request.getParameter("dDate");
                return_date=request.getParameter("rDate");
                Class1=request.getParameter("Class");
                price=request.getParameter("Price");
                
                    try{
                       Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection myConnection=DriverManager.getConnection(PATH+PLACE, USERNAME, PASSWORD);
                        try{
                            PreparedStatement mystatement = myConnection.prepareStatement("insert into traindetail (title, country, city, train_pnrNumber, from1, to1, train_duration, stops, departure_date, return_date, class, price) values(?,?,?,?,?,?,?,?,?,?,?,?)");
                            mystatement.setString(1, title);
                            mystatement.setString(2, country);
                            mystatement.setString(3, city);
                            mystatement.setString(4, train_pnrNumber);
                            mystatement.setString(5, from1);
                            mystatement.setString(6, to1);
                            mystatement.setString(7, train_duration);
                            mystatement.setString(8, stops);
                            mystatement.setString(9, departure_date);
                            mystatement.setString(10, return_date);
                            mystatement.setString(11, Class1);
                            mystatement.setString(12, price);
                            if(mystatement.executeUpdate()>0){
                                out.print("<center><label class='col-form-label'>Train details added successully</label></center>");
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
                            <label class="col-form-label">Train PNR Number</label>
                            <input type="text" class="form-control" placeholder=" " name="Train_pnr" id="phone1" required="">
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
                            <label class="col-form-label">Train Duration</label>
                            <select name="Trainduration" class="form-control" >
                                <option value=""></option>
                                <option value="4">4 Hours</option>
                                <option value="5">5 Hours</option>
                                <option value="6">6 Hours</option>
                                <option value="8">8 Hours</option>
                                <option value="12">12 Hours</option>
                                <option value="14">14 Hours</option> 
                                <option value="18">18 Hours</option> 
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
                            <label class="col-form-label">Departure date</label>
                            <input type="date" class="form-control" placeholder=" " name="dDate" id="date1" required="">
                        </div>
                         <div class="form-group">
                            <label class="col-form-label">Return date</label>
                            <input type="date" class="form-control" placeholder=" " name="rDate" id="date1" required="">
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
                            <label class="col-form-label">Price</label>
                            <input type="number" class="form-control" placeholder=" " name="Price" id="price" required="">
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