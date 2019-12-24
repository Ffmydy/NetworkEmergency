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
     <style>
        .indexUser tr th{
            width: 14%;
        }
        .timeStyle{
          width:150%;
        }
    </style>
</head>
<body>
<c:if test="${not empty transpondSuc }">
	<script type="text/javascript">
		alert('${transpondSuc}')
	</script>
</c:if>
<c:if test="${not empty transpondFail }">
	<script type="text/javascript">
		alert('${transpondFail}')
	</script>
</c:if>
<c:if test="${not empty publishSuc }">
	<script type="text/javascript">
		alert('${publishSuc}')
	</script>
</c:if>
<c:if test="${not empty publishFail }">
	<script type="text/javascript">
		alert('${publishFail}')
	</script>
</c:if>
<c:if test="${not empty publishFail2 }">
	<script type="text/javascript">
		alert('${publishFail2}')
	</script>
</c:if>
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
           
               
                
               
                <!-- Log out               -->
                <div class="list-inline-item logout">   
	                <a id="logout" href="index.jsp" class="nav-link"> 
		                <span class="d-none d-sm-inline">Logout </span>
		                <i class="icon-logout"></i>
	                </a>
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
                <h1 class="h5"><%=request.getSession().getAttribute("User_name") %></h1>
                <p style="color:white;"><%=request.getSession().getAttribute("User_unit") %><p>
            </div>
        </div>
        <!-- Sidebar Navidation Menus--><span class="heading">Main</span>
        <ul class="list-unstyled">
            <li class="active"><a href="user_main.do"> <i class="icon-home"></i>Home </a></li>
            <li><a href="#exampledropdownDropdown" aria-expanded="false" data-toggle="collapse"> <i class="icon-windows"></i>事务管理 </a>
                <ul id="exampledropdownDropdown" class="collapse list-unstyled ">
                   	<li><a href="table.do?aff_incstate=0" onclick="dabai();">代办事物</a></li>
              		<li><a href="table.do?aff_incstate=1" onclick="dabai();">处理中事物</a></li>
                 	<li><a href="table.do?aff_incstate=2" onclick="dabai();">已完成事物</a></li>
                </ul>
            </li>

           <li><a href="management.do"> <i class="icon-grid"></i>事件管理 </a></li>
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
                <a href="publishaffair.jsp" class="btn waves-effect waves-light btn-danger pull-right hidden-sm-down">发布事件</a>
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
                                <h3 class="card-title m-b-5"><span style="color:#398bf7"><%=request.getSession().getAttribute("User_unit") %></span>相关事件 </h3>
                            </div>
                        </div>
                       <!--  <div id="sales-overview2" class="p-relative" style="height:360px;"></div> -->
						<div>
						<table>
							<thead class="indexUser">
						   <tr>
                       			<th>事件编号</th>
                       			<th>事件类型</th>
                       			<th>事件状态</th>
                       			<th class="timeStyle">发布时间</th>
                       			<th>事件描述</th>
                       			<th>操作</th>
                       		</tr>
						</thead>
						 <tbody>
                            <c:forEach items="${list_ownaffair}" var="list">
                               <tr>
                                <th scope="col">${list.aff_id}</th>
                                <th scope="col"><c:choose>
                                	<c:when test="${list.aff_incType==0}">违处信息</c:when>
                                	<c:when test="${list.aff_incType==1}">网络攻击</c:when>
                                	<c:when test="${list.aff_incType==2}">恶意软件</c:when>
                                	<c:when test="${list.aff_incType==3}">信息泄露</c:when>
                                	<c:when test="${list.aff_incType==4}">安全威胁</c:when>
                                </c:choose>
                                </th>
                                 <th scope="col"><c:choose>
                                	<c:when test="${list.aff_incstate==0 }">未处理</c:when>
                                	<c:when test="${list.aff_incstate==1 }">处理中</c:when>
                                	<c:when test="${list.aff_incstate==2 }">已处理</c:when>
                                </c:choose></th>
                                <th scope="col">${list.aff_incTime}</th>
                                <th scope="col">${list.aff_incDes }</th>
                                <th scope="col">
                                
                                <form action="detal.do">
                                <a href="transpond.jsp?aff_id=${list.aff_id }&aff_incstate=${list.aff_incstate }">转发</a>
                                <select name="aff_incstate">
                                	<option value="0">未处理</option>
                                	<option value="1">处理中</option>
                                	<option value="2">已处理</option>
                                </select>
                                <input name="aff_id" type="hidden" value="${list.aff_id }">
                                <input type="submit" value="提交">
                                </form>
                                </th>
                               </tr>
                             </c:forEach>	
                         </tbody>
						</table>
                       	 </div>	
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
       <!--  <div class="row"> -->

           
            <!-- contact -->
           <!--  <div class="col-lg-3 col-md-12"  > -->
              <div class="row" style="position: relative;margin-left: 76%;width:100%;margin-top: 0%">


                <!-- contact -->
                <div class="col-lg-3 col-md-12">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title"><span class="lstick"></span>事件状态统计</h4>
                            <div id="main" style="height:250px; width:100%;"></div>
                            <table class="table vm font-14">
                                <tr>
                                    <td class="b-0">待处理事件</td>
                                    <td class="text-right font-medium b-0">${x_state[0]}件</td>
                                </tr>
                                <tr>
                                    <td class="b-0">处理中事件</td>
                                    <td class="text-right font-medium b-0">${x_state[1]}件</td>
                                </tr>
                                <tr>
                                    <td class="b-0">已完成事件</td>
                                    <td class="text-right font-medium b-0">${x_state[2]}件</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>

            </div>
            <!-- </div> -->

        <!-- </div> -->
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
<script src="js/echarts.min.js"></script>
</script>  
      <script type="text/javascript">
     var myChart = echarts.init(document.getElementById('main'));
    option = {
        title : {

            x:'center'                 //标题位置   居中
        },
        tooltip : {
            trigger: 'item',           //数据项图形触发，主要在散点图，饼图等无类目轴的图表中使用。
            formatter: "{a} <br/>{b} : {c} ({d}%)"   //{a}（系列名称），{b}（数据项名称），{c}（数值）, {d}（百分比）用于鼠标悬浮时对应的显示格式和内容
        },
        legend: {                           //图例组件。
            orient: 'vertical',             //图例列表的布局朝向
            left: 'left',
            data: ['未处理事件','处理中事件','已完成事件']
        },
        series : [              //系列列表。每个系列通过 type 决定自己的图表类型
            {
                name: '状态类型',
                type: 'pie',
                radius : '55%',
                center: ['50%', '60%'],
                data:[
                    {value:"${x_state[0]}", name:'未处理事件'},
                    {value:"${x_state[1]}", name:'处理中事件'},
                    {value:"${x_state[2]}", name:'已完成事件'},
                    
                ],
                itemStyle: {
                    emphasis: {
                        shadowBlur: 10,
                        shadowOffsetX: 0,
                        shadowColor: 'rgba(0, 0, 0, 0.5)'
                    }
                }
            }
        ]
    };
    myChart.setOption(option);
    </script>
</body>
</html>