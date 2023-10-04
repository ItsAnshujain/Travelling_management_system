<!DOCTYPE html>
<html lang="zxx">
<head>
    <title>Expedition Travel | Flight Detail list</title>
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
            <li class="breadcrumb-item active" aria-current="page">Flight Detail list</li>
        </ol>
    </nav>
     
     <div class="modal-dialog" role="document">
            <center><h2 class="modal-title" id="exampleModalLabel1">Flight Detail list</h2></center><br>
            <div class="modal-content">
               
                <div class="modal-body">
               <form>
                        <select name="ticketclass" id="ticketclass" class="form-control" >
                            <option class="text-center">Choose Ticket Class</option>
                             <%
                                try{
                                Class.forName("com.mysql.cj.jdbc.Driver");
                                Connection myConnection=DriverManager.getConnection(PATH+PLACE, USERNAME, PASSWORD);
                                    try{
                                    PreparedStatement mystatement = myConnection.prepareStatement("select distinct(ticket_class) from flightdetail");
                          
                                    ResultSet myresult=mystatement.executeQuery();

                                    if(myresult.next()){
                                    do{
                                        out.print("<option class='text-center'>" + myresult.getString("ticket_class")+ "</option>");
                                    }while(myresult.next());
                                 }
                                 else{
                                 out.print("<option value=''></option>");
                                }
                                }catch(Exception e){
                                    out.print("<label class='col-form-label'>"+"Error in query due to"+e.getMessage()+"</label>");
                                }
                                }catch(Exception e){
                                out.print("<label class='col-form-label'>"+"Error in Connection due to"+e.getMessage()+"</label>");
                                } 
                            %>
                        </select>
   
                </form>
                        </div>  
            </div>
        </div>
        <div id="resultbox"></div>
                        
    <%@include file="footer.jsp" %>
    <script type="text/javascript">
        $(document).ready(function(){
            $("#ticketclass").change(function(){
                var ticketclass1=$("#ticketclass").val();
                $.ajax({
                  method: "POST",
                  url: "myajax.jsp",
                  data: { ticketclass: ticketclass1}
                })
                .done(function( msg ) {
                  $("#resultbox").html(msg);
                });
            });
        });
    </script>
</body>
</html>