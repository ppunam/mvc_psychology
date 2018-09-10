<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="model.*,dao.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js" lang="">
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>University Data Adding</title>
    <meta name="description" content="Sufee Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="apple-icon.html">
    <link rel="shortcut icon" href="favicon.ico">

    <link rel="stylesheet" href="assets/css/normalize.css">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/themify-icons.css">
    <link rel="stylesheet" href="assets/css/flag-icon.min.css">
    <link rel="stylesheet" href="assets/css/cs-skin-elastic.css">
    <link rel="stylesheet" href="assets/scss/style.css">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>
</head>
<body>
<form action="login" method="post" enctype="multipart/form-data">
<aside id="left-panel" class="left-panel">
        <nav class="navbar navbar-expand-sm navbar-default">
            <div class="navbar-header">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main-menu" aria-controls="main-menu" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="index.html"><img src="images/lo.png" alt="Logo"></a>
                <a class="navbar-brand hidden" href="index.html"><img src="images/logo2.png" alt="Logo"></a>
            </div>

            <div id="main-menu" class="main-menu collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li class="active">
                        <a href="index-2.html"> <i class="menu-icon fa fa-dashboard"></i>Dashboard </a>
                    </li>
                    <h3 class="menu-title">University</h3>
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-laptop"></i>University</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="fa fa-puzzle-piece"></i><a href="university.jsp">ADD</a></li>
                            <li><i class="fa fa-id-badge"></i><a href="universityModify1.jsp">MODIFY</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-table"></i>ADD Course</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="fa fa-table"></i><a href="BA.jsp">BA</a></li>
                            <li><i class="fa fa-table"></i><a href="MA.jsp">MA</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-th"></i>ADD DATA SET, NET</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="menu-icon fa fa-th"></i><a href="netSet.html">ADD</a></li>
                            <li><i class="menu-icon fa fa-th"></i><a href="#">MODIFY</a></li>
                        </ul> 
                    </li>

                     <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-glass"></i>Pages</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="menu-icon fa fa-sign-in"></i><a href="page-login.html">Login</a></li>
                            <li><i class="menu-icon fa fa-sign-in"></i><a href="page-register.html">Register</a></li>
                            <li><i class="menu-icon fa fa-paper-plane"></i><a href="pages-forget.html">Forget Pass</a></li>
                        </ul>
                    </li>
                </ul>  
        </div><!-- /.navbar-collapse -->
        </nav>
    </aside><!-- /#left-panel -->

    <!-- Left Panel -->
    <!-- Right Panel -->

    <div id="right-panel" class="right-panel">

        <!-- Header-->
        <header id="header" class="header">

            <div class="header-menu">
                <div class="col-sm-7">
                    <a id="menuToggle" class="menutoggle pull-left"><i class="fa fa fa-tasks"></i></a>
                    <div class="header-left">
                        <button class="search-trigger"><i class="fa fa-search"></i></button>
                        <div class="form-inline">
                            <form class="search-form">
                                <input class="form-control mr-sm-2" type="text" placeholder="Search ..." aria-label="Search">
                                <button class="search-close" type="submit"><i class="fa fa-close"></i></button>
                            </form>
                        </div>

                     
                    </div>
                </div>

                <div class="col-sm-5">
                    <div class="user-area dropdown float-right">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <img class="user-avatar rounded-circle" src="images/admin.jpg" alt="User Avatar">
                        </a>

                        <div class="user-menu dropdown-menu">
                                <a class="nav-link" href="#"><i class="fa fa- user"></i>My Profile</a>

                                <a class="nav-link" href="#"><i class="fa fa- user"></i>Notifications <span class="count">13</span></a>

                                <a class="nav-link" href="#"><i class="fa fa -cog"></i>Settings</a>

                                <a class="nav-link" href="#"><i class="fa fa-power -off"></i>Logout</a>
                        </div>
                    </div>

                  
                </div>
            </div>

        </header>
       

<form action="universityModify1.jsp">
<br>
	  University : <select name="uname">
					<option>select</option>
						<option>BAMN</option>
							<option>Amravati</option>
							<option>Pune</option>
				</select>
			<input type="submit" value="Search">
</form>

<%
	if(request.getParameter("uname")!=null && !request.getParameter("uname").equals("select"))
	{
		String n=request.getParameter("uname");
		UniversitySearchModel u=new UniversitySearchModel();
		u.setUname(n);
		
		List<UniversityModel> l=UniversitySearchDao.searchUniversity(u);
		Iterator<UniversityModel> itr=l.iterator();
		while(itr.hasNext())
		{
			UniversityModel r=itr.next();
			
	%>
		
			<div class="content mt-3">
            <div class="animated fadeIn">
			<div class="col-lg-10">
                    <div class="col-lg-2"></div>
                    <div class="card">
                      <div class="card-header">
                        <strong>University</strong>   Details
                      </div>
                      <div class="card-body card-block">
                        <form action="UniversityModifyServlet" method="post" enctype="multipart/form-data">
                          <div class="row form-group">
                            <div class="col col-md-3"><label for="text-input" class=" form-control-label">University Name</label></div>
                            <div class="col-12 col-md-9"><input type="text" id="text-input" name="u_name"  value="<%=r.getUname() %>" class="form-control"></div>
                          </div>
                           <div class="row form-group">
                            <div class="col col-md-3"><label for="text-input" class=" form-control-label">Address</label></div>
                            <div class="col-12 col-md-9"><input type="text" id="text-input" name="u_add" value="<%=r.getUadd() %>" class="form-control"></div>
                       </div>


                          <div class="row form-group">
                            <div class="col col-md-3"><label for="email-input" class=" form-control-label">Email</label></div>
                            <div class="col-12 col-md-9"><input type="text" id="text-input" name="u_email" value="<%=r.getUemail() %>" class="form-control"></div>
                          </div>

                           <div class="row form-group">
                            <div class="col col-md-3"><label for="text-input" class=" form-control-label">Contact No.</label></div>
                            <div class="col-12 col-md-9"><input type="text" id="text-input" name="u_contact" value="<%=r.getUcontact() %>" class="form-control"></div>
                        </div>

                        
                       
                          <div class="row form-group">
                            <div class="col col-md-3"><label class=" form-control-label">Select pattern</label></div>
                            <div class="col col-md-9">
                              <div class="form-check-inline form-check">
                               <!--  <label for="inline-radio1" class="form-check-label ">
                                  <input type="radio" id="inline-radio1" name="u_pattern" class="form-check-input">SEMESTER 
                                </label> -->
                                  <input type="radio" id="inline-radio1" name="u_pattern" value="<%=r.getUpattern() %>" class="form-check-input">SEMESTER
                                   <input type="radio" id="inline-radio1" name="u_pattern" value="<%=r.getUpattern() %>" class="form-check-input">ANNUAL
                                <!-- <label for="inline-radio3" class="form-check-label ">
                                 <input type="radio" id="inline-radio3" name="u_pattern" class="form-check-input">ANNUAL
                                </label> -->
                              </div>
                            </div>
                          </div> 
                         
                          <div class="row form-group">
                            <div class="col col-md-3"><label for="file-input" class=" form-control-label">Upload Logo</label></div>
                            <div class="col-12 col-md-9"><input type="file"  name="u_logo" value="<%=r.getUlogo() %>" ></div>
                          </div> 
                         
                        
                      </div>
                      <div class="card-footer">
                        <button type="submit" value="submit" class="btn btn-primary btn-sm">
                          <i class="fa fa-dot-circle-o"></i> Update
                        </button>
                        <button type="reset" value="reset" class="btn btn-danger btn-sm">
                          <i class="fa fa-ban"></i> Reset
                        </button>
                      </div>
                    </div>
                  <div class="col-lg-6"></div>
                </div>
                   </div>
                   </form>
                   <% 
		}
		}
		%>


    <script src="assets/js/vendor/jquery-2.1.4.min.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/plugins.js"></script>
    <script src="assets/js/main.js"></script>


<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-23581568-13');
</script>
</form>

</body>

<!-- Mirrored from colorlib.com/polygon/sufee/forms-basic.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 29 Jun 2018 05:44:41 GMT -->
</html>