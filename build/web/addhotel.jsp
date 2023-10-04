<!DOCTYPE html>
<html lang="zxx">
<head>
    <title>Expedition Travel | Hotel Detail</title>
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
            <li class="breadcrumb-item active" aria-current="page">Add Hotel Detail</li>
        </ol>
    </nav>
            <!-- register -->
    
        <div class="modal-dialog" role="document">
            <center><h2 class="modal-title" id="exampleModalLabel1">Add Hotel Detail</h2></center><br>
            <div class="modal-content">
               
                
                <div class="modal-body">
                      <%
            if(request.getParameter("submit")!=null){
                String roomnumber, roomtype, acnonac, meal, charges, bedcapacity, telephone, rentperNIght;
                roomnumber=request.getParameter("roomNumber");
                roomtype=request.getParameter("Roomtype");
                acnonac=request.getParameter("acnonac");
                meal=request.getParameter("meal");
                charges=request.getParameter("charges");
                bedcapacity=request.getParameter("bedCapacity");
                telephone=request.getParameter("Telephone");
                rentperNIght=request.getParameter("Rent");
                
                    try{
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection myConnection=DriverManager.getConnection(PATH+PLACE, USERNAME, PASSWORD);
                        try{
                            PreparedStatement mystatement = myConnection.prepareStatement("insert into hoteldetail (room_number, room_type, ac_nonac, meal, cancellation_charges, bed_capacity, telephone, rent_perNIght) values(?,?,?,?,?,?,?,?)");
                            mystatement.setString(1, roomnumber);
                            mystatement.setString(2, roomtype);
                            mystatement.setString(3, acnonac);
                            mystatement.setString(4, meal);
                            mystatement.setString(5, charges);
                            mystatement.setString(6, bedcapacity);
                            mystatement.setString(7, telephone);
                            mystatement.setString(8, rentperNIght);
                            if(mystatement.executeUpdate()>0){
                                out.print("<center><label class='col-form-label'>Hotel details added successully</label></center>");
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
                            <label class="col-form-label">Room Number</label>
                            <input type="text" class="form-control" placeholder=" " name="roomNumber" id="recipient-rname" required="">
                        </div>
                        <div class="form-group">
                            <label class="col-form-label">Room Type</label>
                            <select name="Roomtype" class="form-control" >
                                <option value=""></option>
                                <option value="Single">Single</option>
                                <option value="Double">Double</option>
                                <option value="Quad">Quad</option>
                                <option value="Kind">Kind</option>
                                <option value="Appartments">Appartments</option>
                                <option value="Villa">Villa</option>
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
                            <label class="col-form-label">Meal</label>
                             <select name="meal" class="form-control" >
                                <option value=""></option>
                                <option value="Free Breakfast">Free Breakfast</option>
                                <option value="Free Dinner">Free Dinner</option>
                                <option value="Free Breakfast & Dinner">Free Breakfast & Dinner</option>
                                <option value="Free Welcome drink">Free Welcome drink</option>
                                <option value="No food">No food</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label  class="col-form-label">Cancellation Charges</label>
                           <select name="charges" class="form-control" >
                                <option value=""></option>
                                <option value="Free cancellation">Free Cancellation</option>
                                <option value="15%">15% before 24 hours</option>
                                <option value="not allowed">Not Allowed</option>
                            </select>
                        </div>
                          <div class="form-group">
                            <label class="col-form-label">Bed Capacity</label>
                            <select name="bedCapacity" class="form-control" >
                                <option value=""></option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option> 
                                <option value="8">8</option>
                                <option value="9">9</option>
                            </select>
                        </div>
                        
                        <div class="form-group">
                            <label class="col-form-label">Telephone</label>
                            <input type="varchar" class="form-control" placeholder=" " name="Telephone" id="telephone" required="">
                        </div>
                         <div class="form-group">
                            <label class="col-form-label">Rent Per Night</label>
                            <input type="text" class="form-control" placeholder=" " name="Rent" id="rent" required="">
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