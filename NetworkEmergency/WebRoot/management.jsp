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
<script src="js/jquery.min.js"></script>
<script type="text/javascript">
 function condition3(){	
	
	//获取select的value值
  	var xiaqu_id =$('#xiaqu option:selected') .val();
	//获取select的文本值
 	 var xiaqu_name = $('#xiaqu option:selected').text();
     //console.log(xiaqu_id);
	location.href = "/NetworkEmergency/Conditon3.do?xiaqu_id=" + xiaqu_id;
}

 function condition2(){	
	
	//获取select的value值
  	var shijian_id =$('#shijian option:selected').val();
	//获取select的文本值
 	 var shijian_name = $('#shijian option:selected').text();

	//console.log(shijian_id);
	location.href = "/NetworkEmergency/Conditon2.do?shijian_id=" + shijian_id;
}

 function condition4(){	
	
	//获取select的value值
  	var xiaqu_id =$('#xiaqu option:selected').val();
  	//var qiye_id =$('#qiye option:selected').val();
	//获取select的文本值
 	 var qiye_name = $('#qiye option:selected').text();

	console.log(qiye_name);
	location.href = "/NetworkEmergency/Conditon4.do?qiye_name=" + qiye_name+"&xiaqu_id="+ xiaqu_id;//encodeURI(encodeURI(qiye_name));
}
$(function(){
		
         // $("#xiaqu").val(要选中的option的value值即可);
         $("#xiaqu").val(${xiaqu_id});
         
    });
    

function condition1(){	

  	var mydate_id =$('#myDate').val();
	
	console.log( mydate_id);

	location.href = "/NetworkEmergency/Conditon1.do?mydate_id=" + mydate_id;
}
</script>


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
              <div class="brand-text brand-big visible text-uppercase"><strong class="text-primary">Emergency</strong><strong>Network</strong></div>
              <div class="brand-text brand-sm"><strong class="text-primary">D</strong><strong>A</strong></div></a>
            <!-- Sidebar Toggle Btn-->
            <button class="sidebar-toggle"><i class="fa fa-long-arrow-left"></i></button>
          </div>
          <div class="right-menu list-inline no-margin-bottom">                         
            <!-- Log out               -->
            <div class="list-inline-item logout"><a id="logout" href="index.jsp" class="nav-link"> <span class="d-none d-sm-inline">Logout </span><i class="icon-logout"></i></a></div>
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
                        <input class="custom-select b-0" type="date" value="2019-06-08" style="width: 70%" id="myDate" onchange="condition1();"/>                       
                    </div>
                    <div class="ml-auto chaxun">事件:&nbsp;
                        <select class="custom-select b-0" id="shijian" onchange="condition2();">                
                            <option selected="">违处信息</option>
                            <option value="1">网络攻击</option>
                            <option value="2">恶意软件</option>
                            <option value="3">信息泄露</option>
                            <option value="4">安全威胁</option>
                        </select>
                    </div>
                    <div class="ml-auto chaxun">辖区:&nbsp;
                        <select class="custom-select b-0" id="xiaqu" onchange="condition3();">
                            <option selected="" value="0">市级一级安全信息管理用户</option>
                            <option value="1">市级各辖区安全管理用户</option>
                            <option value="2">受监管企业部门用户</option>
                            <option value="3">第三方安全服务公司</option>
                        </select>
                    </div>
                    <div class="ml-auto chaxun">企业名称:&nbsp;
                    	<select class="custom-select b-0" id="qiye" onchange="condition4();">
                    		<c:if test="${not empty unit_name}">
                    			<c:forEach items="${unit_name}" var="unit">                        
                            		<option selected="">${unit.unit_name}</option>                       
								</c:forEach>
							</c:if>
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
                    <c:forEach items="${affairs3}" var="aff3">
                    <tr>
                        <td>${aff3.aff_id}</td>
                        <td>${aff3.aff_uniName}</td>
                        <td>${aff3.aff_incTime}</td>
                        <td><c:choose>
                        		<c:when test="${aff3.aff_incType==0 }">违处信息</c:when>
                        		<c:when test="${aff3.aff_incType==1 }">网络攻击</c:when>
                        		<c:when test="${aff3.aff_incType==2 }">恶意软件</c:when>
                        		<c:when test="${aff3.aff_incType==3 }">信息泄露</c:when>
                        		<c:when test="${aff3.aff_incType==4 }">安全威胁</c:when>
                        </c:choose></td>
                        <td>
                        	<c:choose>
                        		<c:when test="${aff3.aff_incstate==0}">未处理</c:when>
                        		<c:when test="${aff3.aff_incstate==1}">处理中</c:when>
                        		<c:when test="${aff3.aff_incstate==2}">已处理</c:when>
                        	</c:choose>
                        </td>
                    </tr>
					</c:forEach>
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