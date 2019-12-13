<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Products Page - Dashboard Template</title>

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600">
    <!-- https://fonts.google.com/specimen/Open+Sans -->
    <link rel="stylesheet" href="css/fontawesome.min.css">
    <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="css/tooplate.css">
</head>

<body id="reportsPage" class="bg02">
<div class="" id="home">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <nav class="navbar navbar-expand-xl navbar-light bg-light">
                    <a class="navbar-brand" href="index.html">
                        <i class="fas fa-3x fa-tachometer-alt tm-site-icon"></i>
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
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
                                   aria-expanded="false">
                                    用户管理
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="userinfo.do?user_untype=0"> 市级一级安全管理用户</a>
                                    <a class="dropdown-item" href="userinfo.html?user_untype=1">市级各辖区安全管理用户</a>
                                    <a class="dropdown-item" href="userinfo.html?user_untype=2">受监管企业部门用户</a>
                                    <a class="dropdown-item" href="userinfo.html?user_untype=3">第三方安全服务公司用户</a>
                                </div>
                            </li>
                            <li class="nav-item active">
                                <a class="nav-link" href="log.jsp">日志</a>
                            </li>

                        </ul>
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link d-flex" href="index.jsp">
                                    <i class="far fa-user mr-2 tm-logout-icon"></i>
                                    <span>Logout</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
        <!-- row -->
        <div class="row tm-content-row tm-mt-big">

            <div class="col-xl-8 col-lg-12 tm-md-12 tm-sm-12 tm-col" style="margin: 0 auto; text-align: center">
                <div class="bg-white tm-block h-100">
                    <div class="row">
                        <div class="col-md-8 col-sm-12" style="text-align: left">
                            <h2 class="tm-block-title d-inline-block">日志记录</h2>

                        </div>

                    </div>
                    <div class="table-responsive">
                        <table class="table table-hover table-striped tm-table-striped-even mt-3">
                            <thead>
                            <tr class="tm-bg-gray">
                                <th scope="col">&nbsp;</th>
                                <th scope="col">姓名</th>
                                <th scope="col" >登陆时间</th>

                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <th scope="col">&nbsp;</th>
                                <th scope="col">杜玉</th>
                                <th scope="col" >2018-09</th>
                               </tr>


                            </tbody>
                        </table>
                    </div>

                    <div class="tm-table-mt tm-table-actions-row">
                        <div class="tm-table-actions-col-left">
                            <button class="btn btn-danger">Delete Selected Items</button>
                        </div>
                        <div class="tm-table-actions-col-right">
                            <span class="tm-pagination-label">Page</span>
                            <nav aria-label="Page navigation" class="d-inline-block">
                                <ul class="pagination tm-pagination">
                                    <li class="page-item active"><a class="page-link" href="#">1</a></li>
                                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                                    <li class="page-item">
                                        <span class="tm-dots d-block">...</span>
                                    </li>
                                    <li class="page-item"><a class="page-link" href="#">13</a></li>
                                    <li class="page-item"><a class="page-link" href="#">14</a></li>
                                </ul>
                            </nav>
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
</div>
<script src="js/jquery-3.3.1.min.js"></script>
<!-- https://jquery.com/download/ -->
<script src="js/bootstrap.min.js"></script>
<!-- https://getbootstrap.com/ -->
<script>
    $(function () {
        $('.tm-product-name').on('click', function () {
            window.location.href = "edit-product.html";
        });
    })
</script>
</body>

</html>