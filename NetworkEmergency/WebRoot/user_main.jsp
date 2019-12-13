<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Home</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <!-- Custom Font Icons CSS-->
    <link rel="stylesheet" href="css/font.css">
    <!-- Google fonts - Muli-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Muli:300,400,700">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="img/favicon.ico">
    <!-- chartist CSS -->
    <link href="css/chartist.min.css" rel="stylesheet">
    <link href="css/chartist-plugin-tooltip.css" rel="stylesheet">
    <!--c3 CSS -->
    <link href="css/c3.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/style.css" rel="stylesheet">
    <!-- Dashboard 1 Page CSS -->
    <link href="css/dashboard.css" rel="stylesheet">
    <!-- You can change the theme colors from here -->
    <link href="css/default-dark.css" id="theme" rel="stylesheet">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>
<body>
<header class="header">
    <nav class="navbar navbar-expand-lg">
        <div class="search-panel">
            <div class="search-inner d-flex align-items-center justify-content-center">
                <div class="close-btn">Close <i class="fa fa-close"></i></div>
                <form id="searchForm" action="#">
                    <div class="form-group">
                        <input type="search" name="search" placeholder="What are you searching for...">
                        <button type="submit" class="submit">Search</button>
                    </div>
                </form>
            </div>
        </div>
        <div class="container-fluid d-flex align-items-center justify-content-between">
            <div class="navbar-header">
                <!-- Navbar Header--><a href="indexUser.html" class="navbar-brand">
                <div class="brand-text brand-big visible text-uppercase"><strong class="text-primary">Dark</strong><strong>Admin</strong></div>
                <div class="brand-text brand-sm"><strong class="text-primary">D</strong><strong>A</strong></div></a>
                <!-- Sidebar Toggle Btn-->
                <button class="sidebar-toggle"><i class="fa fa-long-arrow-left"></i></button>
            </div>
            <div class="right-menu list-inline no-margin-bottom">
                <div class="list-inline-item"><a href="#" class="search-open nav-link"><i class="icon-magnifying-glass-browser"></i></a></div>
                <div class="list-inline-item dropdown"><a id="navbarDropdownMenuLink1" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link messages-toggle"><i class="icon-email"></i><span class="badge dashbg-1">5</span></a>
                    <div aria-labelledby="navbarDropdownMenuLink1" class="dropdown-menu messages"><a href="#" class="dropdown-item message d-flex align-items-center">
                        <div class="profile"><img src="img/avatar-3.jpg" alt="..." class="img-fluid">
                            <div class="status online"></div>
                        </div>
                        <div class="content">   <strong class="d-block">Nadia Halsey</strong><span class="d-block">lorem ipsum dolor sit amit</span><small class="date d-block">9:30am</small></div></a><a href="#" class="dropdown-item message d-flex align-items-center">
                        <div class="profile"><img src="img/avatar-2.jpg" alt="..." class="img-fluid">
                            <div class="status away"></div>
                        </div>
                        <div class="content">   <strong class="d-block">Peter Ramsy</strong><span class="d-block">lorem ipsum dolor sit amit</span><small class="date d-block">7:40am</small></div></a><a href="#" class="dropdown-item message d-flex align-items-center">
                        <div class="profile"><img src="img/avatar-1.jpg" alt="..." class="img-fluid">
                            <div class="status busy"></div>
                        </div>
                        <div class="content">   <strong class="d-block">Sam Kaheil</strong><span class="d-block">lorem ipsum dolor sit amit</span><small class="date d-block">6:55am</small></div></a><a href="#" class="dropdown-item message d-flex align-items-center">
                        <div class="profile"><img src="img/avatar-5.jpg" alt="..." class="img-fluid">
                            <div class="status offline"></div>
                        </div>
                        <div class="content">   <strong class="d-block">Sara Wood</strong><span class="d-block">lorem ipsum dolor sit amit</span><small class="date d-block">10:30pm</small></div></a><a href="#" class="dropdown-item text-center message"> <strong>See All Messages <i class="fa fa-angle-right"></i></strong></a></div>
                </div>
                <!-- Tasks-->
                <div class="list-inline-item dropdown"><a id="navbarDropdownMenuLink2" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link tasks-toggle"><i class="icon-new-file"></i><span class="badge dashbg-3">9</span></a>
                    <div aria-labelledby="navbarDropdownMenuLink2" class="dropdown-menu tasks-list"><a href="#" class="dropdown-item">
                        <div class="text d-flex justify-content-between"><strong>Task 1</strong><span>40% complete</span></div>
                        <div class="progress">
                            <div role="progressbar" style="width: 40%" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" class="progress-bar dashbg-1"></div>
                        </div></a><a href="#" class="dropdown-item">
                        <div class="text d-flex justify-content-between"><strong>Task 2</strong><span>20% complete</span></div>
                        <div class="progress">
                            <div role="progressbar" style="width: 20%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" class="progress-bar dashbg-3"></div>
                        </div></a><a href="#" class="dropdown-item">
                        <div class="text d-flex justify-content-between"><strong>Task 3</strong><span>70% complete</span></div>
                        <div class="progress">
                            <div role="progressbar" style="width: 70%" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" class="progress-bar dashbg-2"></div>
                        </div></a><a href="#" class="dropdown-item">
                        <div class="text d-flex justify-content-between"><strong>Task 4</strong><span>30% complete</span></div>
                        <div class="progress">
                            <div role="progressbar" style="width: 30%" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100" class="progress-bar dashbg-4"></div>
                        </div></a><a href="#" class="dropdown-item">
                        <div class="text d-flex justify-content-between"><strong>Task 5</strong><span>65% complete</span></div>
                        <div class="progress">
                            <div role="progressbar" style="width: 65%" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100" class="progress-bar dashbg-1"></div>
                        </div></a><a href="#" class="dropdown-item text-center"> <strong>See All Tasks <i class="fa fa-angle-right"></i></strong></a>
                    </div>
                </div>
                <!-- Tasks end-->
                <!-- Megamenu-->
                <div class="list-inline-item dropdown menu-large"><a href="#" data-toggle="dropdown" class="nav-link">Mega <i class="fa fa-ellipsis-v"></i></a>
                    <div class="dropdown-menu megamenu">
                        <div class="row">
                            <div class="col-lg-3 col-md-6"><strong class="text-uppercase">Elements Heading</strong>
                                <ul class="list-unstyled mb-3">
                                    <li><a href="#">Lorem ipsum dolor</a></li>
                                    <li><a href="#">Sed ut perspiciatis</a></li>
                                    <li><a href="#">Voluptatum deleniti</a></li>
                                    <li><a href="#">At vero eos</a></li>
                                    <li><a href="#">Consectetur adipiscing</a></li>
                                    <li><a href="#">Duis aute irure</a></li>
                                    <li><a href="#">Necessitatibus saepe</a></li>
                                    <li><a href="#">Maiores alias</a></li>
                                </ul>
                            </div>
                            <div class="col-lg-3 col-md-6"><strong class="text-uppercase">Elements Heading</strong>
                                <ul class="list-unstyled mb-3">
                                    <li><a href="#">Lorem ipsum dolor</a></li>
                                    <li><a href="#">Sed ut perspiciatis</a></li>
                                    <li><a href="#">Voluptatum deleniti</a></li>
                                    <li><a href="#">At vero eos</a></li>
                                    <li><a href="#">Consectetur adipiscing</a></li>
                                    <li><a href="#">Duis aute irure</a></li>
                                    <li><a href="#">Necessitatibus saepe</a></li>
                                    <li><a href="#">Maiores alias</a></li>
                                </ul>
                            </div>
                            <div class="col-lg-3 col-md-6"><strong class="text-uppercase">Elements Heading</strong>
                                <ul class="list-unstyled mb-3">
                                    <li><a href="#">Lorem ipsum dolor</a></li>
                                    <li><a href="#">Sed ut perspiciatis</a></li>
                                    <li><a href="#">Voluptatum deleniti</a></li>
                                    <li><a href="#">At vero eos</a></li>
                                    <li><a href="#">Consectetur adipiscing</a></li>
                                    <li><a href="#">Duis aute irure</a></li>
                                    <li><a href="#">Necessitatibus saepe</a></li>
                                    <li><a href="#">Maiores alias</a></li>
                                </ul>
                            </div>
                            <div class="col-lg-3 col-md-6"><strong class="text-uppercase">Elements Heading</strong>
                                <ul class="list-unstyled mb-3">
                                    <li><a href="#">Lorem ipsum dolor</a></li>
                                    <li><a href="#">Sed ut perspiciatis</a></li>
                                    <li><a href="#">Voluptatum deleniti</a></li>
                                    <li><a href="#">At vero eos</a></li>
                                    <li><a href="#">Consectetur adipiscing</a></li>
                                    <li><a href="#">Duis aute irure</a></li>
                                    <li><a href="#">Necessitatibus saepe</a></li>
                                    <li><a href="#">Maiores alias</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="row megamenu-buttons text-center">
                            <div class="col-lg-2 col-md-4"><a href="#" class="d-block megamenu-button-link dashbg-1"><i class="fa fa-clock-o"></i><strong>Demo 1</strong></a></div>
                            <div class="col-lg-2 col-md-4"><a href="#" class="d-block megamenu-button-link dashbg-2"><i class="fa fa-clock-o"></i><strong>Demo 2</strong></a></div>
                            <div class="col-lg-2 col-md-4"><a href="#" class="d-block megamenu-button-link dashbg-3"><i class="fa fa-clock-o"></i><strong>Demo 3</strong></a></div>
                            <div class="col-lg-2 col-md-4"><a href="#" class="d-block megamenu-button-link dashbg-4"><i class="fa fa-clock-o"></i><strong>Demo 4</strong></a></div>
                            <div class="col-lg-2 col-md-4"><a href="#" class="d-block megamenu-button-link bg-danger"><i class="fa fa-clock-o"></i><strong>Demo 5</strong></a></div>
                            <div class="col-lg-2 col-md-4"><a href="#" class="d-block megamenu-button-link bg-info"><i class="fa fa-clock-o"></i><strong>Demo 6</strong></a></div>
                        </div>
                    </div>
                </div>
                <!-- Megamenu end     -->
                <!-- Languages dropdown    -->
                <div class="list-inline-item dropdown"><a id="languages" rel="nofollow" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link language dropdown-toggle"><img src="img/flags/16/GB.png" alt="English"><span class="d-none d-sm-inline-block">English</span></a>
                    <div aria-labelledby="languages" class="dropdown-menu"><a rel="nofollow" href="#" class="dropdown-item"> <img src="img/flags/16/DE.png" alt="English" class="mr-2"><span>German</span></a><a rel="nofollow" href="#" class="dropdown-item"> <img src="img/flags/16/FR.png" alt="English" class="mr-2"><span>French  </span></a></div>
                </div>
                <!-- Log out               -->
                <div class="list-inline-item logout">                   <a id="logout" href="login.html" class="nav-link"> <span class="d-none d-sm-inline">Logout </span><i class="icon-logout"></i></a></div>
            </div>
        </div>
    </nav>
</header>
<div class="d-flex align-items-stretch">
    <!-- Sidebar Navigation-->
    <nav id="sidebar">
        <!-- Sidebar Header-->
        <div class="sidebar-header d-flex align-items-center">
            <div class="avatar"><img src="img/avatar-4.jpg" alt="..." class="img-fluid rounded-circle"></div>
            <div class="title">
                <h1 class="h5">Mark Stephen</h1>
                <p>Web Designer</p>
            </div>
        </div>
        <!-- Sidebar Navidation Menus--><span class="heading">Main</span>
        <ul class="list-unstyled">
            <li class="active"><a href="user_main.jsp"> <i class="icon-home"></i>Home </a></li>
            <li><a href="#exampledropdownDropdown" aria-expanded="false" data-toggle="collapse"> <i class="icon-windows"></i>事务管理 </a>
                <ul id="exampledropdownDropdown" class="collapse list-unstyled ">
                   	<li><a href="table.do?aff_incstate=0" onclick="dabai();">代办事物</a></li>
              		<li><a href="table.do?aff_incstate=1" onclick="dabai();">处理中事物</a></li>
                 	<li><a href="table.do?aff_incstate=2" onclick="dabai();">已完成事物</a></li>
                </ul>
            </li>

           <li><a href="${pageContext.request.contextPath}/management.jsp"> <i class="icon-grid"></i>事件管理 </a></li>
            <li><a href="state_bar.do"> <i class="fa fa-bar-chart"></i>数据统计 </a></li>
        </ul>
    </nav>

    <!-- Sidebar Navigation end-->
    <div class="page-wrapper1">
    <div class="container-fluid">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="row page-titles">
            <div class="col-md-5 align-self-center">
                <h3 class="text-themecolor">用户管理系统</h3>
            </div>
            <div class="col-md-7 align-self-center">
                <a href="#" class="btn waves-effect waves-light btn-danger pull-right hidden-sm-down"> Upgrade to Pro</a>
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- End Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Sales overview chart -->
        <!-- ============================================================== -->
        <div class="row">
            <div class="col-lg-9 col-md-12">
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex">
                            <div>
                                <h3 class="card-title m-b-5"><span class="lstick"></span>应急事件分级统计 </h3>
                            </div>
                            <div class="ml-auto">
                                <select class="custom-select b-0">
                                    <option selected="">January 2017</option>
                                    <option value="1">February 2017</option>
                                    <option value="2">March 2017</option>
                                    <option value="3">April 2017</option>
                                </select>
                            </div>
                        </div>
                        <div id="sales-overview2" class="p-relative" style="height:360px;"></div>
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- visit charts-->
            <!-- ============================================================== -->
            <div class="col-lg-6 col-md-12">
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex">
                            <h4 class="card-title"><span class="lstick"></span>实时信息播报</h4>
                        </div>
                        <div class="message-box contact-box">
                            <div class="message-widget contact-widget">
                                <!-- Message -->
                                <a href="#">
                                    <div class="user-img"> <img src="img/1.jpg" alt="user" class="img-circle"> <span class="profile-status online pull-right"></span> </div>
                                    <div class="mail-contnet">
                                        <h5>桂林电子科技大学网安中心学生信息泄露</h5> <span class="mail-desc">2019-12-09</span></div>
                                </a>
                                <!-- Message -->
                                <a href="#">
                                    <div class="user-img"> <img src="img/2.jpg" alt="user" class="img-circle"> <span class="profile-status online pull-right"></span> </div>
                                    <div class="mail-contnet">
                                        <h5>桂林电子科技大学网安中心学生信息泄露</h5> <span class="mail-desc">2019-12-09</span></div>
                                </a>
                                <!-- Message -->
                                <a href="#">
                                    <div class="user-img"> <img src="img/3.jpg" alt="user" class="img-circle"> <span class="profile-status online pull-right"></span> </div>
                                    <div class="mail-contnet">
                                        <h5>桂林电子科技大学网安中心学生信息泄露</h5> <span class="mail-desc">2019-12-09</span></div>
                                </a>
                                <!-- Message -->
                                <!-- Message -->
                                <a href="#">
                                    <div class="user-img"> <img src="img/4.jpg" alt="user" class="img-circle"> <span class="profile-status online pull-right"></span> </div>
                                    <div class="mail-contnet">
                                        <h5>桂林电子科技大学网安中心学生信息泄露</h5> <span class="mail-desc">2019-12-09</span></div>
                                </a>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- Projects of the month -->
        <!-- ============================================================== -->
        <div class="row">

            <div class="col-lg-8 col-xlg-9">
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex">
                            <h4 class="card-title"><span class="lstick"></span>当前规模情况</h4>
                            <ul class="list-inline m-b-0 ml-auto">
                                <li>
                                    <h6 class="text-muted text-success"><i class="fa fa-circle font-10 m-r-10 "></i>Site A view</h6> </li>
                                <li>
                                    <h6 class="text-muted text-info"><i class="fa fa-circle font-10 m-r-10"></i>Site B view</h6> </li>
                            </ul>
                        </div>
                        <div class="website-visitor p-relative m-t-30" style="width:100%;"></div>
                    </div>
                </div>
            </div>
            <!-- contact -->
            <div class="col-lg-3 col-md-12">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title"><span class="lstick"></span>事件类型</h4>
                        <div id="visitor" style="height:250px; width:100%;"></div>
                        <table class="table vm font-14">
                            <tr>
                                <td class="b-0">违处信息</td>
                                <td class="text-right font-medium b-0">38.5%</td>
                            </tr>
                            <tr>
                                <td class="b-0">网络攻击</td>
                                <td class="text-right font-medium">30.8%</td>
                            </tr>
                            <tr>
                                <td class="b-0">恶意软件</td>
                                <td class="text-right font-medium b-0">38.5%</td>
                            </tr>
                            <tr>
                                <td class="b-0">信息泄露</td>
                                <td class="text-right font-medium">30.8%</td>
                            </tr>
                            <tr>
                                <td>安全威胁</td>
                                <td class="text-right font-medium">30.8%</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>

        </div>
        <!-- ============================================================== -->
        <!-- Blog and website visit -->
        <!-- ============================================================== -->

    </div>
    </div>
</div>
<!-- JavaScript files-->
<script src="js/jquery.min.js"></script>
<script src="js/popper.min.js"> </script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.cookie.js"> </script>
<!-- slimscrollbar scrollbar JavaScript -->
<script src="js/perfect-scrollbar.jquery.min.js"></script>
<!--Wave Effects -->
<script src="js/waves.js"></script>
<!--Menu sidebar -->
<script src="js/sidebarmenu.js"></script>
<!--Custom JavaScript -->
<script src="js/custom.min.js"></script>
<script src="js/Chart.min.js"></script>
<script src="js/jquery.validate.min.js"></script>
<script src="js/charts-home.js"></script>
<script src="js/front.js"></script>
<script src="js/chartist.min.js"></script>
<script src="js/chartist-plugin-tooltip.min.js"></script>
<!--c3 JavaScript -->
<script src="js/d3.min.js"></script>
<script src="js/c3.min.js"></script>
<!-- Chart JS -->
<script src="js/dashboard.js"></script>
</body>
</html>