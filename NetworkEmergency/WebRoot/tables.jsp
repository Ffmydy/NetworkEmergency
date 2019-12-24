<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
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
    <link rel="stylesheet" href="https://fonts.googleaaffs.com/css?family=Muli:300,400,700">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="img/favicon.ico">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="js/html5shiv.min.js"></script>
        <script src="js/respond.min.js"></script><![endif]-->
        
    <script type="text/javascript">
    console.log(${affair0.list});
    console.log(${affair1});
    console.log(${affair2});
    console.log("${affair3.list}");
     
    </script>
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
           
               
                
               
                <!-- Log out               -->
               <div class="list-inline-item logout" >   
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
          </div>
        </div>
        <!-- Sidebar Navidation Menus--><span class="heading">Main</span>
        <ul class="list-unstyled">
          <li><a href="user_main.do"> <i class="icon-home"></i>Home </a></li>
          <li class="active"><a href="#exampledropdownDropdown" aria-expanded="false" data-toggle="collapse"> <i class="icon-windows"></i>事务管理 </a>
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
      <div class="page-content">
        <!-- Page Header-->
        <div class="page-header no-margin-bottom">
          <div class="container-fluid">
            <h2 class="h5 no-margin-bottom">Tables</h2>
          </div>
        </div>
        <!-- Breadcrumb-->
        <div class="container-fluid">
          <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/indexUser.jsp">Home</a></li>
            <li class="breadcrumb-item active">Tables        </li>
          </ul>
        </div>
        
        <section class="no-padding-top">
          <div class="container-fluid">
            <div class="row">
            
              <div class="col-lg-61">
                <div class="block">
                  <div class="title"><strong>违处信息</strong></div>
                  <div class="table-responsive"> 
                    <table class="table table-striped table-sm">
                      <thead>
                        <tr>
                          <th>#</th>
                          <th>事件编号</th>
                          <th>单位名称</th>
                          <th>事件发布阶段</th>
                     
                          <th>具体事件描述</th>
                        </tr>
                      </thead>
                      <tbody>
                      <c:forEach items="${IAffair0}" var="aff" varStatus="status1">
                                                 
                                <tr> 
                                <td >${requestScope.offset+status1.index+1}</td>                            
                                       <td>${aff.aff_id }</td>
                                       <td>${aff.aff_uniName}</td>
                                       <td>${aff.aff_incTime }</td>
                                       <td>${aff.aff_incDes}</td>
                                 </tr> 
                        </c:forEach>
				        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
              <div class="col-lg-61">
                <div class="block">
                  <div class="title"><strong>网络攻击</strong></div>
                  <div class="table-responsive"> 
                    <table class="table table-striped table-sm">
                      <thead>
                        <tr>
                          <th>#</th>
                          <th>事件编号</th>
                          <th>单位名称</th>
                          <th>事件发布阶段</th>
                        
                          <th>具体事件描述</th>
                        </tr>
                      </thead>
                      <tbody>
                      <c:forEach items="${IAffair1}" var="aff" varStatus="status2">
                                                 
                                <tr> 
                                <td >${requestScope.offset+status2.index+1}</td>                             
                                        <td>${aff.aff_id }</td>
                                        <td>${aff.aff_uniName}</td>
                                        <td>${aff.aff_incTime }</td>
                                       
                                        <td>${aff.aff_incDes}</td>
                                 </tr>
                       
                        </c:forEach>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
              <div class="col-lg-61">
                <div class="block">
                  <div class="title"><strong>恶意软件</strong></div>
                  <div class="table-responsive"> 
                    <table class="table table-striped table-sm">
                      <thead>
                        <tr>
                          <th>#</th>
                          <th>事件编号</th>
                          <th>单位名称</th>
                          <th>事件发布阶段</th>
                         
                          <th>具体事件描述</th>
                        </tr>
                      </thead>
                      <tbody>
                      <c:forEach items="${IAffair2}" var="aff2" varStatus="status3">
                                                
                                <tr> 
                                <td >${requestScope.offset+status3.index+1}</td>                             
                                        <td>${aff2.aff_id }</td>
                                        <td>${aff2.aff_uniName}</td>
                                        <td>${aff2.aff_incTime }</td>
                                         
                                        <td>${aff2.aff_incDes}</td>
                                 </tr>
                        
                        </c:forEach>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
              <div class="col-lg-61">
                <div class="block">
                  <div class="title"><strong>信息泄露</strong></div>
                  <div class="table-responsive"> 
                    <table class="table table-striped table-sm">
                      <thead>
                        <tr>
                          <th>#</th>
                          <th>事件编号</th>
                          <th>单位名称</th>
                          <th>事件发布阶段</th>
                        
                          <th>具体事件描述</th>
                        </tr>
                      </thead>
                      <tbody>
                      <c:forEach items="${IAffair3}" var="aff3" varStatus="status4">
                                                
                                <tr> 
                                	 <td>${status4.index+1}</td>                             
                                       <td>${aff3.aff_id }</td>
                                       <td>${aff3.aff_uniName}</td>
                                       <td>${aff3.aff_incTime }</td>
                                       <td>${aff3.aff_incDes}</td>
                                
                     
                        </c:forEach>
                        
				        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
              <div class="col-lg-61">
                <div class="block">
                  <div class="title"><strong>安全威胁</strong></div>
                  <div class="table-responsive">
                    <table class="table table-striped table-sm">
                      <thead>
                        <tr>
                          <th>#</th>
                          <th>事件编号</th>
                          <th>单位名称</th>
                          <th>事件发布阶段</th>
                      
                          <th>具体事件描述</th>
                        </tr>
                      </thead>
                      <tbody>
                      <c:forEach items="${IAffair4}" var="aff4" varStatus="status5">
                                             
                                <tr> 
                                <td >${status5.index+1}</td>                             
                                       <td>${aff4.aff_id }</td>
                                       <td>${aff4.aff_uniName}</td>
                                       <td>${aff4.aff_incTime }</td>
                                        
                                       <td>${aff4.aff_incDes}</td>
                                 </tr>
                     
                        </c:forEach>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
        
        
        
   <footer class="footer">
          <div class="footer__block block no-margin-bottom">
            <div class="container-fluid text-center">
              <!-- Please do not remove the backlink to us unless you support us at https://bootstraaffous.com/donate. It is part of the license conditions. Thank you for understanding :)-->
              <p class="no-margin-bottom">Copyright &copy;陈利 杜玉 牛璐帅</p>
            </div>
          </div>
        </footer>
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
  </body>
</html>