<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Accounts Page - Dashboard Template</title>
    
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600">
    <!-- https://fonts.google.com/specimen/Open+Sans -->
    <link rel="stylesheet" href="css/fontawesome.min.css">
    <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="css/tooplate.css">
    <link rel="stylesheet" href="css/icons.css">
</head>

<body class="bg03">
    <div class="container">
         <div class="row">
                <div class="col-12">
                    <nav class="navbar navbar-expand-xl navbar-light bg-light">
                        <a class="navbar-brand" href="">
                            <i class="css-icon-person"></i>
                            <h1 class="tm-site-title mb-0">网络应急系统管理员平台</h1>
                        </a>
                        <button class="navbar-toggler ml-auto mr-0" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav mx-auto">
                                <li class="nav-item">
                                    <a class="nav-link" href="unitinfo.do">单位管理
                                        <span class="sr-only">(current)</span>
                                    </a>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle active" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
                                        aria-expanded="false">
                                        用户管理
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="userinfo.do?user_untype=0"> 市级一级安全管理用户</a>
                                        <a class="dropdown-item" href="userinfo.do?user_untype=1">市级各辖区安全管理用户</a>
                                        <a class="dropdown-item" href="userinfo.do?user_untype=2">受监管企业部门用户</a>
                                        <a class="dropdown-item" href="userinfo.do?user_untype=3">第三方安全服务公司用户</a>
                                    </div>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="log.do">日志</a>
                                </li>

                            </ul>
                            <ul class="navbar-nav">
                                <li class="nav-item">
                                    <a class="nav-link d-flex" href="index.jsp">
                                    	<span>Logout</span>
                                        <i class="css-icon-right-circle"></i>  
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        <!-- row -->
        <div class="row tm-content-row tm-mt-big">
            <div class="tm-col tm-col-small">
                <div class="bg-white tm-block">
                    <h2 class="tm-block-title">Profile Image</h2>
                    <img src="img/profile-image.png" alt="Profile Image" class="img-fluid">
                    <div class="custom-file mt-3 mb-3">
                        <input id="fileInput" type="file" style="display:none;" />
                        <input type="button" class="btn btn-primary d-block mx-xl-auto" value="Upload New..." onclick="document.getElementById('fileInput').click();"
                                />
                    </div>
                </div>
            </div>

            <div class="tm-col tm-col-big">
                <div class="bg-white tm-block">
                    <div class="row">
                        <div class="col-12">
                            <h2 class="tm-block-title">Edit Account</h2>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <form action="updateuser.do" class="tm-signup-form">  
                                <div class="form-group">
                                    <label for="name">Name</label>
                                    <input id="name" name="user_name" type="text" class="form-control validate" value="<%=request.getParameter("user_name")%>" required="required" readonly="readonly">
                                </div>
                                <div class="form-group">
                                    <label for="email">Account Email</label>
                                    <input placeholder="please input email" id="email" name="user_email" type="email" class="form-control validate" required="required">
                                </div>
                                <div class="form-group">
                                    <label for="phone">Phone</label>
                                    <input placeholder="please input phone" id="phone" name="user_tele" type="tel" class="form-control validate" required="required">
                                </div>
                                 <div class="form-group">
                                    <label for="phone">WeChat</label>
                                    <input placeholder="please input wechat" id="phone" name="user_wechat" type="tel" class="form-control validate" required="required">
                                </div>
                                <div class="form-group">
                                    <label for="phone">所属单位类型</label>
                                    <select name=user_untype class="form-control validate" style="height:80%;position:relative;">
                                    	<option value=0>市级单位</option>
                                    	<option value=1>市级各辖区单位</option>
                                    	<option value=2>受监管企业单位</option>
                                    	<option value=3>签约技术支持/安全服务单位</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="phone">单位名称</label>
                                    <input placeholder="" id="" name="user_unit" type="text" class="form-control validate" required="required">
                                </div>
                                <div class="row">
                                    <div class="col-12 col-sm-4">
                                        <button type="submit" class="btn btn-primary">Update
                                        </button>
                                    </div>
                                    <div class="col-12 col-sm-8 tm-btn-right">
                                    <a class="btn btn-danger" href="deleuser.do?user_tele=<%=request.getParameter("user_tele")%> " onclick="javascript:return confirm('确认删除该用户信息？');">Delete Account</a>
                                    </div>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <footer class="row tm-mt-small">
            <div class="col-12 font-weight-light">
            </div>
        </footer>
    </div>

    <script src="js/jquery-3.3.1.min.js"></script>
    <!-- https://jquery.com/download/ -->
    <script src="js/bootstrap.min.js"></script>
    <!-- https://getbootstrap.com/ -->
</body>

</html>
