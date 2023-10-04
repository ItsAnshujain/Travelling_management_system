<%@page import="java.sql.*" %>
<%@include file="var.jsp" %>
<%
    if(request.getParameter("buspassengerid")!=null){
        String busPassengerid=request.getParameter("buspassengerid");
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection myConnection=DriverManager.getConnection(PATH+PLACE, USERNAME, PASSWORD);
          
            try{
                PreparedStatement mystatement = myConnection.prepareStatement("delete from bus where passenger_id=?");

                mystatement.setString(1, busPassengerid);

                if(mystatement.executeUpdate()>0){
                    out.print("1");
                }
                else{
                    out.print("0");
                }

            }catch(Exception e){
                out.print("<label class='col-form-label'>"+"Error in query due to "+e.getMessage()+"</label>");
            }
        }catch(Exception e){
            out.print("<label class='col-form-label'>"+"Error in Connection due to "+e.getMessage()+"</label>");
        } 
    }
    else if(request.getParameter("trainpassengerid")!=null){
        String trainPassengerid=request.getParameter("trainpassengerid");
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection myConnection=DriverManager.getConnection(PATH+PLACE, USERNAME, PASSWORD);
          
            try{
                PreparedStatement mystatement = myConnection.prepareStatement("delete from train where passenger_id=?");

                mystatement.setString(1, trainPassengerid);

                if(mystatement.executeUpdate()>0){
                    out.print("1");
                }
                else{
                    out.print("0");
                }

            }catch(Exception e){
                out.print("<label class='col-form-label'>"+"Error in query due to "+e.getMessage()+"</label>");
            }
        }catch(Exception e){
            out.print("<label class='col-form-label'>"+"Error in Connection due to "+e.getMessage()+"</label>");
        } 
    }
     else if(request.getParameter("flightpassengerid")!=null){
        String flightPassengerid=request.getParameter("flightpassengerid");
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection myConnection=DriverManager.getConnection(PATH+PLACE, USERNAME, PASSWORD);
          
            try{
                PreparedStatement mystatement = myConnection.prepareStatement("delete from flight where passenger_id=?");

                mystatement.setString(1, flightPassengerid);

                if(mystatement.executeUpdate()>0){
                    out.print("1");
                }
                else{
                    out.print("0");
                }

            }catch(Exception e){
                out.print("<label class='col-form-label'>"+"Error in query due to "+e.getMessage()+"</label>");
            }
        }catch(Exception e){
            out.print("<label class='col-form-label'>"+"Error in Connection due to "+e.getMessage()+"</label>");
        } 
    }
     else if(request.getParameter("hotelguestid")!=null){
        String hotelGuestid=request.getParameter("hotelguestid");
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection myConnection=DriverManager.getConnection(PATH+PLACE, USERNAME, PASSWORD);
          
            try{
                PreparedStatement mystatement = myConnection.prepareStatement("delete from hotel where guest_id=?");

                mystatement.setString(1, hotelGuestid);

                if(mystatement.executeUpdate()>0){
                    out.print("1");
                }
                else{
                    out.print("0");
                }

            }catch(Exception e){
                out.print("<label class='col-form-label'>"+"Error in query due to "+e.getMessage()+"</label>");
            }
        }catch(Exception e){
            out.print("<label class='col-form-label'>"+"Error in Connection due to "+e.getMessage()+"</label>");
        } 
    }
%>
