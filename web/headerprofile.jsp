<%
    if(session.getAttribute("name")==null){
        response.sendRedirect("login.jsp");
    }
 %>
<!-- admin header -->
<header>
    <nav class="navbar navbar-expand-lg navbar-light bg-gradient-secondary pt-3">
        <h1>
            <a class="navbar-brand" href="index.jsp">
                Expedition
            </a>
        </h1>
        <button class="navbar-toggler ml-md-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
            aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-lg-auto text-center">
                <li class="nav-item active  mr-lg-3">
                    <a class="nav-link" href="userpanel.jsp">Home
                        <span class="sr-only">(current)</span>
                    </a>
                </li>
                <li class="nav-item  mr-lg-3">
                    <a class="nav-link" href="addbusticket.jsp">Bus Booking</a>
                </li>
                 <li class="nav-item  mr-lg-3">
                    <a class="nav-link" href="addtrainticket.jsp">Train Booking</a>
                </li>
                <li class="nav-item  mr-lg-3">
                    <a class="nav-link" href="addflightticket.jsp">Flight Booking</a>
                </li>
                 <li class="nav-item  mr-lg-3">
                    <a class="nav-link" href="addhotelticket.jsp">Hotel Booking</a>
                </li>
                
                 <% if(session.getAttribute("name")==null){%>
                            <li class="nav-item">
                                <a class="nav-link" href="login.jsp">Login</a>
                            </li>
                             <li class="nav-item">
                                <a class="nav-link" href="register.jsp">Register</a>
                            </li>
                        <% }
                          else{%>
                             <li class="nav-item">
                                <a class="nav-link" href="logout.jsp">Logout</a>
                            </li>
                        <%}
                  %>
            </ul>
        </div>
    </nav>
</header>
<!-- // admin header -->