<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title></title>
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

    <link rel="stylesheet" href="css/admin.css">

    <link rel="stylesheet" href="css/amazeui.min.css"/>




    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
    <script src="js/html5shiv.min.js"></script>
    <script src="js/respond.min.js"></script><![endif]-->
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
            <li><a href="user_main.jsp"> <i class="icon-home"></i>Home </a></li>
             <li><a href="#exampledropdownDropdown" aria-expanded="false" data-toggle="collapse"> <i class="icon-windows"></i>事务管理 </a>
                <ul id="exampledropdownDropdown" class="collapse list-unstyled ">
                   	<li><a href="table.do?aff_incstate=0" onclick="dabai();">代办事物</a></li>
              		<li><a href="table.do?aff_incstate=1" onclick="dabai();">处理中事物</a></li>
                 	<li><a href="table.do?aff_incstate=2" onclick="dabai();">已完成事物</a></li>
                </ul>
            </li>

            <li class="active"><a href="management.jsp"> <i class="icon-grid"></i>事件管理 </a></li>
            <li><a href="state_bar.do"> <i class="fa fa-bar-chart"></i>数据统计 </a></li>
        </ul>
    </nav>
    <!-- Sidebar Navigation end-->
    <div class="page-content">
        <!-- Page Header-->
        <div class="page-header no-margin-bottom">
            <div class="container-fluid">
                <h2 class="h5 no-margin-bottom">事件管理</h2>
            </div>
        </div>
        <!-- Breadcrumb-->
        <div class="container-fluid">
            <ul class="breadcrumb">
                <li class="breadcrumb-item"><a href="indexUser.html">Home</a></li>
                <li class="breadcrumb-item active">查询情况        </li>
            </ul>
        </div>


        <div class="admin">

            <div class="admin-index">
                <dl data-am-scrollspy="{animation: 'slide-right', delay: 100}">
                    <dt class="qs"><i class="am-icon-users"></i></dt>
                    <dd>安全事件</dd>
                    <dd class="f12"></dd>
                </dl>
                <dl data-am-scrollspy="{animation: 'slide-right', delay: 300}">
                    <dt class="cs"><i class="am-icon-area-chart"></i></dt>
                    <dd>热点事件</dd>
                    <dd class="f12"></dd>
                </dl>
                <dl data-am-scrollspy="{animation: 'slide-right', delay: 600}">
                    <dt class="hs"><i class="am-icon-shopping-cart"></i></dt>
                    <dd>处理中事件</dd>
                    <dd class="f12"></dd>
                </dl>
                <dl data-am-scrollspy="{animation: 'slide-right', delay: 900}">
                    <dt class="ls"><i class="am-icon-cny"></i></dt>
                    <dd>已完成事件</dd>
                    <dd class="f12"></dd>
                </dl>
            </div>
            <div class="admin-biaoge">
                <div class="xinxitj">
                    <div class="ml-auto chaxun">
                        时间段:&nbsp;
                        <input class="custom-select b-0" type="date" value="2015-09" style="width: 70%"/>
                    </div>
                    <div class="ml-auto chaxun">事件:&nbsp;
                        <select class="custom-select b-0">
                            <option selected="">January 2017</option>
                            <option value="1">February 2017</option>
                            <option value="2">March 2017</option>
                            <option value="3">April 2017</option>
                        </select>
                    </div>
                    <div class="ml-auto chaxun">辖区:&nbsp;
                        <select class="custom-select b-0">
                            <option selected="">January 2017</option>
                            <option value="1">February 2017</option>
                            <option value="2">March 2017</option>
                            <option value="3">April 2017</option>
                        </select>
                    </div>
                    <div class="ml-auto chaxun">企业名称:&nbsp;
                        <select class="custom-select b-0">
                            <option selected="">January 2017</option>
                            <option value="1">February 2017</option>
                            <option value="2">March 2017</option>
                            <option value="3">April 2017</option>
                        </select>
                    </div>


                </div>
                <table class="am-table">
                    <thead>
                    <tr>
                        <th>事件编号</th>
                        <th>单位名称</th>
                        <th>发布时间段</th>
                        <th>事件类型</th>
                        <th>处理状态</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>普卡</td>
                        <td>普卡</td>
                        <td><a href="#">4534</a></td>
                        <td>+20</td>
                        <td> 4534 </td>
                    </tr>

                    </tbody>
                </table>

            </div>
            <div class="shuju">
                <div class="shujuone">
                    <dl>
                        <dt>A级发布：  1356666</dt>
                        <dt>A级处理：   5646465.98</dt>
                        <dt>B级接受：  546464</dt>
                    </dl>
                    <ul>
                        <h2>26.83%</h2>
                        <li>已经处理</li>
                    </ul>
                </div>
                <div class="shujutow">
                    <dl>
                        <dt>自行发布：  1356666</dt>
                        <dt>自行处理：   5646465.98</dt>
                        <dt>转发事件：  546464</dt>
                    </dl>
                    <ul>
                        <h2>26.83%</h2>
                        <li>发布出去</li>
                    </ul>
                </div>
                <div class="slideTxtBox">
                    <div class="hd">
                        <ul>
                            <li>其他信息</li>
                            <li>工作进度表</li>
                        </ul>
                    </div>
                    <div class="bd">
                        <ul>
                            <table width="100%" class="am-table">
                                <tbody>
                                <tr>
                                    <td width="7%"  align="center">1 </td>
                                    <td width="83%" >工作进度名称</td>
                                    <td width="10%"  align="center"><a href="#">10%</a></td>
                                </tr>
                                <tr>
                                    <td align="center">1 </td>
                                    <td>工作进度名称</td>
                                    <td  align="center"><a href="#">10%</a></td>
                                </tr>
                                <tr>
                                    <td  align="center">1 </td>
                                    <td>工作进度名称</td>
                                    <td  align="center"><a href="#">10%</a></td>
                                </tr>
                                <tr>
                                    <td  align="center">1 </td>
                                    <td>工作进度名称</td>
                                    <td  align="center"><a href="#">10%</a></td>
                                </tr>

                                <tr>
                                    <td  align="center">1 </td>
                                    <td>工作进度名称</td>
                                    <td  align="center"><a href="#">10%</a></td>
                                </tr>

                                <tr>
                                    <td  align="center">1 </td>
                                    <td>工作进度名称</td>
                                    <td  align="center"><a href="#">10%</a></td>
                                </tr>

                                <tr>
                                    <td  align="center">1 </td>
                                    <td>工作进度名称</td>
                                    <td  align="center"><a href="#">10%</a></td>
                                </tr>








                                </tbody>
                            </table>
                        </ul>

                    </div>
                </div>
                <script type="text/javascript">jQuery(".slideTxtBox").slide();</script>
            </div>

            <div class="foods">
                <p class="no-margin-bottom">Copyright &copy;陈利 杜玉 牛璐帅</p>
                <dl><a href="" title="返回头部" class="am-icon-btn am-icon-arrow-up"></a></dl>

            </div>

        </div>

    </div>
</div>
<!-- JavaScript files-->
<script src="js/jquery.min.js"></script>
<script src="js/popper.min.js"> </script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.cookie.js"> </script>
<script src="js/Chart.min.js"></script>
<script src="js/jquery.validate.min.js"></script>
<script src="js/front.js"></script>

<!--[if lt IE 9]>

<script src="js/modernizr.js"></script>
<script src="js/rem.min.js"></script>
<script src="js/respond.min.js"></script>
<script src="js/amazeui.legacy.js"></script>
<![endif]-->

<!--[if (gte IE 9)|!(IE)]><!-->
<script src="js/amazeui.min.js"></script>
<!--<![endif]-->

</body>
</html>