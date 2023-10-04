<% 
Cookie cookies[] = request.getCookies();
boolean user = false, admin=false;
if (cookies != null){
    for (int i = 0; i < cookies.length; i++)
    {
        if(cookies[i].getName().equals("emailid")){
            session.setAttribute("emailid", cookies[i].getValue());
            user=true;
        }          
        else if(cookies[i].getName().equals("adminname")){
            session.setAttribute("adminname", cookies[i].getValue());
            admin=true;            
        }         
    }
   if(user)
   {
    response.sendRedirect("welcome.jsp");
    }
    else if(admin)
    {
        response.sendRedirect("adminpanel.jsp");
    }
    }

%> 

<!-- header -->
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
                    <a class="nav-link" href="index.jsp">Home
                        <span class="sr-only">(current)</span>
                    </a>
                </li>
                <li class="nav-item  mr-lg-3">
                    <a class="nav-link" href="about.jsp">about</a>
                </li>
                <li class="nav-item dropdown mr-lg-3">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
                        aria-expanded="false">
                        Services & galary
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="services.jsp">Services</a>
                        <a class="dropdown-item" href="gallery.jsp">Gallery</a>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="contact.jsp">contact</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="login.jsp">Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="register.jsp">Register</a>
                </li>
            </ul>
        </div>
    </nav>
</header>
<!-- //header -->