<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html class="no-js" lang="">
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>BA Admin Pannel</title>
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
                            <li><i class="menu-icon fa fa-th"></i><a href="forms-basic.html">ADD</a></li>
                            <li><i class="menu-icon fa fa-th"></i><a href="forms-advanced.html">MODIFY</a></li>
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
        </div>
        </nav>
    </aside>
    <div id="right-panel" class="right-panel">

      
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

                        <div class="dropdown for-notification">
                         
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
 <form action="BAServlet" method="post" enctype="multipart/form-data">
        <div class="breadcrumbs">
            <div class="col-sm-4">
                <div class="page-header float-left">
                    <div class="page-title">
                        <h1>BA</h1>
                    </div>
                </div>
            </div>
            
    </div>
    <div class="row form-group"><div class="col col-md-1"></div>
                            <div class="col col-md-1"><label for="select" class=" form-control-label">University</label></div>
                            <div class="col-7 col-md-5">
                              <select name="university" id="University" class="form-control">
                                <option>Please select</option>
                                <option>Option #1</option>
                                <option>Option #2</option>
                                <option>Option #3</option>
                              </select>
                            </div>
                          </div>
<div class="row form-group"><div class="col col-md-1"></div>
                            <div class="col col-md-1"><label for="select" class=" form-control-label">Course</label></div>
                            <div class="col-7 col-md-5">
                              <select name="course" id="select" class="form-control">
                                <option>Please select</option>
                                <option>Option #1</option>
                                <option>Option #2</option>
                                <option>Option #3</option>
                              </select>
                            </div>
                          </div>



<div class="row form-group"><div class="col col-md-1"></div>
                            <div class="col col-md-1"><label for="select" class=" form-control-label">Subject</label></div>
                            <div class="col-7 col-md-5">
                              <select name="subject" id="select" class="form-control">
                                <option>Please select</option>
                                <option>Option #1</option>
                                <option>Option #2</option>
                                <option>Option #3</option>
                              </select>
                            </div>
                          </div>



 <div class="row form-group"><div class="col col-md-1"></div>
                            <div class="col col-md-1"><label for="select" class=" form-control-label">Topic</label></div>
                            <div class="col-7 col-md-5">
                              <select name="topic" id="select" class="form-control">
                                <option>Please select</option>
                                <option>Option #1</option>
                                <option>Option #2</option>
                                <option>Option #3</option>
                              </select>
                            </div>
                          </div>                         
                      
						<!--  <a>Upload Syllabus <span>*</span></a>&nbsp;&nbsp;&nbsp;&nbsp;<input id="hide" type="file" name="syllabus"  size="12" multiple> -->
						

                 				<div class="row form-group"><div class="col col-md-2"></div>
                            <div class="col col-md-2"><label for="file-multiple-input" class=" form-control-label">Upload Syllabus</label></div>
                            <div class="col-7 col-md-5"><input type="file" id="file-multiple-input" name="syllabus" multiple="" class="form-control-file"></div>
                          </div> 



				<div class="row form-group"><div class="col col-md-2"></div>
                            <div class="col col-md-2"><label for="file-multiple-input" class=" form-control-label">Upload Notes</label></div>
                            <div class="col-7 col-md-5"><input type="file" id="file-multiple-input" name="notes" multiple="" class="form-control-file"></div>
                          </div>
                        



				<div class="row form-group"><div class="col col-md-2"></div>
                            <div class="col col-md-2"><label for="file-multiple-input" class=" form-control-label">Upload Videos</label></div>
                            <div class="col-7 col-md-5"><input type="file" id="file-multiple-input" name="videos" multiple="" class="form-control-file"></div>
                          </div>
                        



				<div class="row form-group"><div class="col col-md-2"></div>
                            <div class="col col-md-2"><label for="file-multiple-input" class=" form-control-label">Upload Books</label></div>
                            <div class="col-7 col-md-5"><input type="file" id="file-multiple-input" name="books" multiple="" class="form-control-file"></div>
                          </div>


				<div class="row form-group"><div class="col col-md-2"></div>
                            <div class="col col-md-2"><label for="file-multiple-input" class=" form-control-label">Upload Quetion-Paper</label></div>
                            <div class="col-7 col-md-5"><input type="file" id="file-multiple-input" name="quespaper" multiple="" class="form-control-file"></div>
                          </div>
          

                          <div class="card-footer">
                        <button type="submit" class="btn btn-primary btn-sm">
                          <i class="fa fa-dot-circle-o"></i> Submit
                        </button>
                        <button type="reset" class="btn btn-danger btn-sm">
                          <i class="fa fa-ban"></i> Reset
                        </button>
                      </div>
                        
   </form>
    <script src="assets/js/vendor/jquery-2.1.4.min.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/plugins.js"></script>
    <script src="assets/js/main.js"></script>

<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-23581568-13');
</script>
</body>
</html>
