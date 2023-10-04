<%@page import="java.sql.*" %>
<%@include file="var.jsp" %>
<% 
    if(request.getParameter("email")!=null){
        String email=request.getParameter("email");
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection myConnection=DriverManager.getConnection(PATH+PLACE, USERNAME, PASSWORD);
            try{
                PreparedStatement mystatement = myConnection.prepareStatement("select * from usertable where email=?");

                mystatement.setString(1, email);

                ResultSet myresult=mystatement.executeQuery();

                if(myresult.next()){
                    out.print("<label class='col-form-label'>Email already exists</label>");
                }
                else{
                    out.print("<label class='col-form-label'>Email id available</label>");
                }

            }catch(Exception e){
                out.print("<label class='col-form-label'>"+"Error in query due to "+e.getMessage()+"</label>");
            }
        }catch(Exception e){
            out.print("<label class='col-form-label'>"+"Error in Connection due to "+e.getMessage()+"</label>");
        } 
    }
              
    
%>