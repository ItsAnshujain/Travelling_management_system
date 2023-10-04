<%@page import="java.sql.*" %>
<%@include file="var.jsp" %>
<% 
 if(request.getParameter("bustype")!=null){
        try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection myConnection=DriverManager.getConnection(PATH+PLACE, USERNAME, PASSWORD);
                try{
                    PreparedStatement mystatement = myConnection.prepareStatement("select * from bus where bus_type=?");

                    mystatement.setString(1, request.getParameter("bustype"));
                    session.setAttribute("bustype", request.getParameter("bustype"));
                    ResultSet myresult=mystatement.executeQuery();

                    if(myresult.next()){
                    out.print("<div class='table-responsive'>"
                            + "<table class='table table-bordered table-hover'>"
                            + "<tr align='center'>"
                            + "<th scope='col'>Name</th>"
                            + "<th scope=col'>Email Id</th>"
                            + "<th scope='col'>Gender</th>"
                            + "<th scope='col'>Phone Number</th>"
                            + "<th scope='col'>Departure Date</th>"
                            + "<th scope='col'>Journey From</th>"
                            + "<th scope='col'>Journey To</th>"
                            + "<th scope='col'>Bus Type</th>"
                            + "<th scope='col'>Seating Type</th>"
                            + "<th scope='col'>Update</th>"
                            + "<th scope='col'>Delete</th>"
                            + "</tr>");
                       do{
                            out.print("<tr align='center'><td>" + myresult.getString("name")+"</td>"
                            + "<td>" + myresult.getString("email")+"</td>"
                            + "<td>" + myresult.getString("gender")+"</td>"
                            + "<td>" + myresult.getString("phone")+"</td>"
                            + "<td>" + myresult.getString("departure_date")+"</td>"
                            + "<td>" + myresult.getString("journney_from")+"</td>"
                            + "<td>" + myresult.getString("journney_to")+"</td>"
                            + "<td>" + myresult.getString("bus_type")+"</td>"
                            + "<td>" + myresult.getString("seating_type")+"</td>"
                            + "<td><a href='updateBuspassenger.jsp?passengerid=" + myresult.getString("passenger_id")+ "'><img src='images/update1.png'></a></td>"
                            + "<td><a href='#' class='buspassenger' busid= " + myresult.getString("passenger_id") + "><img src='images/delete.png'></a></td></tr>");
                        }while(myresult.next());
                        out.print("</table>");
                    }
                    else{
                        out.print("No Records found");
                    }

                }catch(Exception e){
                    out.print("<label class='col-form-label'>"+"Error in query due to"+e.getMessage()+"</label>");
                }
            }catch(Exception e){
                out.print("<label class='col-form-label'>"+"Error in Connection due to"+e.getMessage()+"</label>");
            } 
        }
    else if(request.getParameter("Class")!=null){
        try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection myConnection=DriverManager.getConnection(PATH+PLACE, USERNAME, PASSWORD);
                try{
                    PreparedStatement mystatement = myConnection.prepareStatement("select * from train where class=?");

                    mystatement.setString(1, request.getParameter("Class"));
                    session.setAttribute("Class", request.getParameter("Class"));
                    ResultSet myresult=mystatement.executeQuery();

                    if(myresult.next()){
                    out.print("<div class='table-responsive'>"
                            + "<table class='table table-bordered table-hover'>"
                            + "<tr align='center'>"
                            + "<th scope='col'>Name</th>"
                            + "<th scope=col'>Email Id</th>"
                            + "<th scope='col'>Gender</th>"
                            + "<th scope='col'>Phone Number</th>"
                            + "<th scope='col'>Train Detail</th>"
                            + "<th scope='col'>Departure Date</th>"
                            + "<th scope='col'>Journey From</th>"
                            + "<th scope='col'>Journey To</th>"
                            + "<th scope='col'>Class</th>"
                            + "<th scope='col'>Reservation Quota</th>"
                            + "<th scope='col'>Update</th>"
                            + "<th scope='col'>Delete</th>"
                            + "</tr>");
                       do{
                            out.print("<tr align='center'><td>" + myresult.getString("name")+"</td>"
                            + "<td>" + myresult.getString("email")+"</td>"
                            + "<td>" + myresult.getString("gender")+"</td>"
                            + "<td>" + myresult.getString("phone")+"</td>"
                            + "<td>" + myresult.getString("train_detail")+"</td>"
                            + "<td>" + myresult.getString("departure_date")+"</td>"
                            + "<td>" + myresult.getString("journey_from")+"</td>"
                            + "<td>" + myresult.getString("journey_to")+"</td>"
                            + "<td>" + myresult.getString("class")+"</td>"
                            + "<td>" + myresult.getString("reservation_quota")+"</td>"
                            + "<td><a href='updateTrainpassenger.jsp?passengerid=" + myresult.getString("passenger_id")+ "'><img src='images/update1.png'></a></td>"
                            + "<td><a href='#' class='trainpassenger' trainid= " + myresult.getString("passenger_id") + "><img src='images/delete.png'></a></td></tr>");
                        }while(myresult.next());
                        out.print("</table>");
                    }
                    else{
                        out.print("No Records found");
                    }

                }catch(Exception e){
                    out.print("<label class='col-form-label'>"+"Error in query due to"+e.getMessage()+"</label>");
                }
            }catch(Exception e){
                out.print("<label class='col-form-label'>"+"Error in Connection due to"+e.getMessage()+"</label>");
            } 
        }
    else if(request.getParameter("fare")!=null){
        try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection myConnection=DriverManager.getConnection(PATH+PLACE, USERNAME, PASSWORD);
                try{
                    PreparedStatement mystatement = myConnection.prepareStatement("select * from flight where fare=?");

                    mystatement.setString(1, request.getParameter("fare"));
                    session.setAttribute("fare", request.getParameter("fare"));
                    ResultSet myresult=mystatement.executeQuery();

                    if(myresult.next()){
                    out.print("<div class='table-responsive'>"
                            + "<table class='table table-bordered table-hover'>"
                            + "<tr align='center'>"
                            + "<th scope='col'>Name</th>"
                            + "<th scope=col'>Email Id</th>"
                            + "<th scope='col'>Gender</th>"
                            + "<th scope='col'>Phone Number</th>"
                            + "<th scope='col'>Departure Date</th>"
                            + "<th scope='col'>Departure Time</th>"
                            + "<th scope='col'>Journey From</th>"
                            + "<th scope='col'>Journey To</th>"
                            + "<th scope='col'>Fare</th>"
                            + "<th scope='col'>Prefferd Seat</th>"
                            + "<th scope='col'>Update</th>"
                            + "<th scope='col'>Delete</th>"
                            + "</tr>");
                       do{
                            out.print("<tr align='center'><td>" + myresult.getString("name")+"</td>"
                            + "<td>" + myresult.getString("email")+"</td>"
                            + "<td>" + myresult.getString("gender")+"</td>"
                            + "<td>" + myresult.getString("phone")+"</td>"
                            + "<td>" + myresult.getString("departure_date")+"</td>"
                            + "<td>" + myresult.getString("departure_time")+"</td>"
                            + "<td>" + myresult.getString("journey_from")+"</td>"
                            + "<td>" + myresult.getString("journey_to")+"</td>"
                            + "<td>" + myresult.getString("fare")+"</td>"
                            + "<td>" + myresult.getString("prefferd_seat")+"</td>"
                            + "<td><a href='updateFlightpassenger.jsp?passengerid=" + myresult.getString("passenger_id")+ "'><img src='images/update1.png'></a></td>"
                            + "<td><a href='#' class='flightpassenger' flightid= " + myresult.getString("passenger_id") + "><img src='images/delete.png'></a></td></tr>");
                        }while(myresult.next());
                        out.print("</table>");
                    }
                    else{
                        out.print("No Records found");
                    }

                }catch(Exception e){
                    out.print("<label class='col-form-label'>"+"Error in query due to"+e.getMessage()+"</label>");
                }
            }catch(Exception e){
                out.print("<label class='col-form-label'>"+"Error in Connection due to"+e.getMessage()+"</label>");
            } 
        }
  else if(request.getParameter("roomtype")!=null){
        try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection myConnection=DriverManager.getConnection(PATH+PLACE, USERNAME, PASSWORD);
                try{
                    PreparedStatement mystatement = myConnection.prepareStatement("select * from hotel where room_type=?");

                    mystatement.setString(1, request.getParameter("roomtype"));
                    session.setAttribute("roomtype", request.getParameter("roomtype"));
                    ResultSet myresult=mystatement.executeQuery();

                    if(myresult.next()){
                    out.print("<div class='table-responsive'>"
                            + "<table class='table table-bordered table-hover'>"
                            + "<tr align='center'>"
                            + "<th scope='col'>Name</th>"
                            + "<th scope=col'>Email Id</th>"
                            + "<th scope='col'>Gender</th>"
                            + "<th scope='col'>Phone Number</th>"
                            + "<th scope='col'>Arrival Date</th>"
                            + "<th scope='col'>Departure Date</th>"
                            + "<th scope='col'>Room Type</th>"
                            + "<th scope='col'>Update</th>"
                            + "<th scope='col'>Delete</th>"
                            + "</tr>");
                       do{
                            out.print("<tr align='center'><td>" + myresult.getString("name")+"</td>"
                            + "<td>" + myresult.getString("email")+"</td>"
                            + "<td>" + myresult.getString("gender")+"</td>"
                            + "<td>" + myresult.getString("phone")+"</td>"
                            + "<td>" + myresult.getString("arrival_date")+"</td>"
                            + "<td>" + myresult.getString("departure_date")+"</td>"
                            + "<td>" + myresult.getString("room_type")+"</td>"
                            + "<td><a href='updateHotelguest.jsp?guestid=" + myresult.getString("guest_id")+ "'><img src='images/update1.png'></a></td>"
                            + "<td><a href='#' class='hotelguest' hotelid= " + myresult.getString("guest_id") + "><img src='images/delete.png'></a></td></tr>");
                        }while(myresult.next());
                        out.print("</table>");
                    }
                    else{
                        out.print("No Records found");
                    }

                }catch(Exception e){
                    out.print("<label class='col-form-label'>"+"Error in query due to"+e.getMessage()+"</label>");
                }
            }catch(Exception e){
                out.print("<label class='col-form-label'>"+"Error in Connection due to"+e.getMessage()+"</label>");
            } 
        }
 else if(request.getParameter("ticketclass")!=null){
        try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection myConnection=DriverManager.getConnection(PATH+PLACE, USERNAME, PASSWORD);
                try{
                    PreparedStatement mystatement = myConnection.prepareStatement("select * from flightdetail where ticket_class=?");

                    mystatement.setString(1, request.getParameter("ticketclass"));
                    session.setAttribute("ticketclass", request.getParameter("ticketclass"));
                    ResultSet myresult=mystatement.executeQuery();

                    if(myresult.next()){
                    out.print("<div class='table-responsive'>"
                            + "<table class='table table-bordered table-hover'>"
                            + "<tr align='center'>"
                            + "<th scope='col'>Title</th>"
                            + "<th scope=col'>Country</th>"
                            + "<th scope='col'>City</th>"
                            + "<th scope='col'>Airline</th>"
                            + "<th scope='col'>From</th>"
                            + "<th scope='col'>To</th>"
                            + "<th scope='col'>Flight Duration</th>"
                            + "<th scope='col'>Stops</th>"
                            + "<th scope='col'>Departure Date</th>"
                            + "<th scope='col'>Return Date</th>"
                            + "<th scope='col'>Ticket Class</th>"
                            + "<th scope='col'>Price</th>"
                            + "<th scope='col'>Aircraft</th>"
                            + "</tr>");
                       do{
                            out.print("<tr align='center'><td>" + myresult.getString("title")+"</td>"
                            + "<td>" + myresult.getString("country")+"</td>"
                            + "<td>" + myresult.getString("city")+"</td>"
                            + "<td>" + myresult.getString("airline")+"</td>"
                            + "<td>" + myresult.getString("from1")+"</td>"
                            + "<td>" + myresult.getString("to1")+"</td>"
                            + "<td>" + myresult.getString("flight_duration")+"</td>"
                            + "<td>" + myresult.getString("stops")+"</td>"
                            + "<td>" + myresult.getString("departure_date")+"</td>"
                            + "<td>" + myresult.getString("return_date")+"</td>"
                            + "<td>" + myresult.getString("ticket_class")+"</td>"
                            + "<td>" + myresult.getString("price")+"</td>"
                            + "<td>" + myresult.getString("aircraft")+"</td></tr>");
                        }while(myresult.next());
                        out.print("</table>");
                    }
                    else{
                        out.print("No Records found");
                    }

                }catch(Exception e){
                    out.print("<label class='col-form-label'>"+"Error in query due to"+e.getMessage()+"</label>");
                }
            }catch(Exception e){
                out.print("<label class='col-form-label'>"+"Error in Connection due to"+e.getMessage()+"</label>");
            } 
        }
    else if(request.getParameter("roomtype1")!=null){
        try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection myConnection=DriverManager.getConnection(PATH+PLACE, USERNAME, PASSWORD);
                try{
                    PreparedStatement mystatement = myConnection.prepareStatement("select * from hoteldetail where room_type=?");

                    mystatement.setString(1, request.getParameter("roomtype1"));
                    session.setAttribute("roomtype1", request.getParameter("roomtype1"));
                    ResultSet myresult=mystatement.executeQuery();

                    if(myresult.next()){
                    out.print("<div class='table-responsive'>"
                            + "<table class='table table-bordered table-hover'>"
                            + "<tr align='center'>"
                            + "<th scope='col'>Room Number</th>"
                            + "<th scope=col'>Room Type</th>"
                            + "<th scope='col'>Ac or Non Ac</th>"
                            + "<th scope='col'>Meal</th>"
                            + "<th scope='col'>Charges</th>"
                            + "<th scope='col'>Bad Capacity</th>"
                            + "<th scope='col'>Telephone</th>"
                            + "<th scope='col'>Rent Per Night</th>"
                            + "</tr>");
                       do{
                            out.print("<tr align='center'><td>" + myresult.getString("room_number")+"</td>"
                            + "<td>" + myresult.getString("room_type")+"</td>"
                            + "<td>" + myresult.getString("ac_nonac")+"</td>"
                            + "<td>" + myresult.getString("meal")+"</td>"
                            + "<td>" + myresult.getString("cancellation_charges")+"</td>"
                            + "<td>" + myresult.getString("bed_capacity")+"</td>"
                            + "<td>" + myresult.getString("telephone")+"</td>"
                            + "<td>" + myresult.getString("rent_perNIght")+"</td></tr>");
                        }while(myresult.next());
                        out.print("</table>");
                    }
                    else{
                        out.print("No Records found");
                    }

                }catch(Exception e){
                    out.print("<label class='col-form-label'>"+"Error in query due to"+e.getMessage()+"</label>");
                }
            }catch(Exception e){
                out.print("<label class='col-form-label'>"+"Error in Connection due to"+e.getMessage()+"</label>");
            } 
        }
    else if(request.getParameter("class2")!=null){
        try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection myConnection=DriverManager.getConnection(PATH+PLACE, USERNAME, PASSWORD);
                try{
                    PreparedStatement mystatement = myConnection.prepareStatement("select * from traindetail where class=?");

                    mystatement.setString(1, request.getParameter("class2"));
                    session.setAttribute("class2", request.getParameter("class2"));
                    ResultSet myresult=mystatement.executeQuery();

                    if(myresult.next()){
                    out.print("<div class='table-responsive'>"
                            + "<table class='table table-bordered table-hover'>"
                            + "<tr align='center'>"
                            + "<th scope='col'>Title</th>"
                            + "<th scope=col'>Country</th>"
                            + "<th scope='col'>City</th>"
                            + "<th scope='col'>Ticket PNR number</th>"
                            + "<th scope='col'>From</th>"
                            + "<th scope='col'>To</th>"
                            + "<th scope='col'>Train Duration</th>"
                            + "<th scope='col'>Stops</th>"
                            + "<th scope='col'>Departure Date</th>"
                            + "<th scope='col'>Return Date</th>"
                            + "<th scope='col'>Class</th>"
                            + "<th scope='col'>Price</th>"
                            + "</tr>");
                       do{
                            out.print("<tr align='center'><td>" + myresult.getString("title")+"</td>"
                            + "<td>" + myresult.getString("country")+"</td>"
                            + "<td>" + myresult.getString("city")+"</td>"
                            + "<td>" + myresult.getString("train_pnrNumber")+"</td>"
                            + "<td>" + myresult.getString("from1")+"</td>"
                            + "<td>" + myresult.getString("to1")+"</td>"
                            + "<td>" + myresult.getString("train_duration")+"</td>"
                            + "<td>" + myresult.getString("stops")+"</td>"
                            + "<td>" + myresult.getString("departure_date")+"</td>"
                            + "<td>" + myresult.getString("return_date")+"</td>"
                            + "<td>" + myresult.getString("class")+"</td>"
                            + "<td>" + myresult.getString("price")+"</td></tr>");
                        }while(myresult.next());
                        out.print("</table>");
                    }
                    else{
                        out.print("No Records found");
                    }

                }catch(Exception e){
                    out.print("<label class='col-form-label'>"+"Error in query due to"+e.getMessage()+"</label>");
                }
            }catch(Exception e){
                out.print("<label class='col-form-label'>"+"Error in Connection due to"+e.getMessage()+"</label>");
            } 
        }
    else if(request.getParameter("bustype2")!=null){
        try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection myConnection=DriverManager.getConnection(PATH+PLACE, USERNAME, PASSWORD);
                try{
                    PreparedStatement mystatement = myConnection.prepareStatement("select * from busdetail where bus_type=?");

                    mystatement.setString(1, request.getParameter("bustype2"));
                    session.setAttribute("bustype2", request.getParameter("bustype2"));
                    ResultSet myresult=mystatement.executeQuery();

                    if(myresult.next()){
                    out.print("<div class='table-responsive'>"
                            + "<table class='table table-bordered table-hover'>"
                            + "<tr align='center'>"
                            + "<th scope='col'>Title</th>"
                            + "<th scope=col'>Country</th>"
                            + "<th scope='col'>City</th>"
                            + "<th scope='col'>Bus number</th>"
                            + "<th scope='col'>From</th>"
                            + "<th scope='col'>To</th>"
                            + "<th scope='col'>Bus Duration</th>"
                            + "<th scope='col'>Stops</th>"
                            + "<th scope='col'>Departure Time</th>"
                            + "<th scope='col'>Bus Type</th>"
                            + "<th scope='col'>Ac or Non ac</th>"
                            + "<th scope='col'>Price</th>"
                            + "</tr>");
                       do{
                            out.print("<tr align='center'><td>" + myresult.getString("title")+"</td>"
                            + "<td>" + myresult.getString("country")+"</td>"
                            + "<td>" + myresult.getString("city")+"</td>"
                            + "<td>" + myresult.getString("bus_number")+"</td>"
                            + "<td>" + myresult.getString("from1")+"</td>"
                            + "<td>" + myresult.getString("to1")+"</td>"
                            + "<td>" + myresult.getString("bus_duration")+"</td>"
                            + "<td>" + myresult.getString("stops")+"</td>"
                            + "<td>" + myresult.getString("departure_time")+"</td>"
                            + "<td>" + myresult.getString("bus_type")+"</td>"
                            + "<td>" + myresult.getString("ac_nonac")+"</td>"
                            + "<td>" + myresult.getString("price")+"</td></tr>");
                        }while(myresult.next());
                        out.print("</table>");
                    }
                    else{
                        out.print("No Records found");
                    }

                }catch(Exception e){
                    out.print("<label class='col-form-label'>"+"Error in query due to"+e.getMessage()+"</label>");
                }
            }catch(Exception e){
                out.print("<label class='col-form-label'>"+"Error in Connection due to"+e.getMessage()+"</label>");
            } 
        }
%>
<script >
    $(document).ready(function(){
   $(".buspassenger").click(function(e){
           e.preventDefault();
           var answer=confirm("Do you really want to delete ?");
           if(answer){
               var parenttr=$(this).parent().parent();
               var buspassengerid=$(this).attr("busid");
               $.ajax({
                   method:"POST",
                   url:"myajax2.jsp",
                   data:{buspassengerid : buspassengerid}
               })
                .done(function(msg){
                    if($.trim(msg)==='1'){
                        $(parenttr).css("background-color", "red");
                        $(parenttr).slideUp(100, function(){
                            $(parenttr).remove();
                        });
                    }
               });
           }
        });
        $(".trainpassenger").click(function(e){
           e.preventDefault();
           var answer=confirm("Do you really want to delete ?");
           if(answer){
               var parenttr=$(this).parent().parent();
               var trainpassengerid=$(this).attr("trainid");
               $.ajax({
                   method:"POST",
                   url:"myajax2.jsp",
                   data:{trainpassengerid : trainpassengerid}
               })
                .done(function(msg){
                    if($.trim(msg)==='1'){
                        $(parenttr).css("background-color", "red");
                        $(parenttr).slideUp(100, function(){
                            $(parenttr).remove();
                        });
                    }
               });
           }
        });
         $(".flightpassenger").click(function(e){
           e.preventDefault();
           var answer=confirm("Do you really want to delete ?");
           if(answer){
               var parenttr=$(this).parent().parent();
               var flightpassengerid=$(this).attr("flightid");
               $.ajax({
                   method:"POST",
                   url:"myajax2.jsp",
                   data:{flightpassengerid : flightpassengerid}
               })
                .done(function(msg){
                    if($.trim(msg)==='1'){
                        $(parenttr).css("background-color", "red");
                        $(parenttr).slideUp(100, function(){
                            $(parenttr).remove();
                        });
                    }
               });
           }
        });
         $(".hotelguest").click(function(e){
           e.preventDefault();
           var answer=confirm("Do you really want to delete ?");
           if(answer){
               var parenttr=$(this).parent().parent();
               var hotelguestid=$(this).attr("hotelid");
               $.ajax({
                   method:"POST",
                   url:"myajax2.jsp",
                   data:{hotelguestid : hotelguestid}
               })
                .done(function(msg){
                    if($.trim(msg)==='1'){
                        $(parenttr).css("background-color", "red");
                        $(parenttr).slideUp(100, function(){
                            $(parenttr).remove();
                        });
                    }
               });
           }
        });
    });
</script>