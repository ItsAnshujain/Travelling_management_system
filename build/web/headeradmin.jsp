<%
    if(session.getAttribute("adminname")==null){
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
                    <a class="nav-link" href="adminpanel.jsp">Home
                        <span class="sr-only">(current)</span>
                    </a>
                </li>
                <li class="nav-item dropdown mr-lg-3">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
                        aria-expanded="false">
                        Add Services
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="addhotel.jsp">Hotel</a>
                        <a class="dropdown-item" href="addflight.jsp">Flight</a>
                        <a class="dropdown-item" href="addtrain.jsp">Train</a>
                        <a class="dropdown-item" href="addbus.jsp">Bus</a>
                    </div>
                </li>
                 <li class="nav-item dropdown mr-lg-3">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
                        aria-expanded="false">
                       Services Detail
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="hotellist.jsp">Hotel's Detail</a>
                        <a class="dropdown-item" href="flightlist.jsp">Flight's Detail</a>
                        <a class="dropdown-item" href="trainlist.jsp">Train's Detail</a>
                        <a class="dropdown-item" href="buslist.jsp">Bus's Detail</a>
                    </div>
                </li>
                 <li class="nav-item dropdown mr-lg-3">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
                        aria-expanded="false">
                        Customer Booking List
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="buspassengerlist.jsp">Bus passengers</a>
                        <a class="dropdown-item" href="trainpassengerlist.jsp">Train passengers</a>
                        <a class="dropdown-item" href="hotelguestlist.jsp">Hotel guests</a>
                        <a class="dropdown-item" href="flightpassengerlist.jsp">Flight passengers</a>
                    </div>
                </li>
                
                 <% if(session.getAttribute("adminname")==null){%>
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