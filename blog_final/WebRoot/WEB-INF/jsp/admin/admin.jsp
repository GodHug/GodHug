<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">   
    <meta name="viewport" content="width=device-width, initial-scale=1">  
    <meta name="Author" content="Dreamer-1.">

    <!-- 引入各种CSS样式表 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/font-awesome.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/index-admin.css">    <!-- 修改自Bootstrap官方Demon，你可以按自己的喜好制定CSS样式 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/font-change.css">    <!-- 将默认字体从宋体换成微软雅黑（个人比较喜欢微软雅黑，移动端和桌面端显示效果比较接近） -->

    <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
   	<script type="text/javascript" src="${pageContext.request.contextPath }/js/summernote.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/admin.js"></script>

    <title>- 后台管理系统 -</title>
</head>

<body>
<!-- 顶部菜单（来自bootstrap官方Demon）==================================== -->
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" >
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="${pageContext.request.contextPath }/posts/index.action">sunruxue.cn</a>
        </div>

        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="${pageContext.request.contextPath }/posts/index.action"><i class="fa fa-users"></i> 回到首页</a></li>
                <li><a href="###" onclick="showAtRight('productList.jsp')"><i class="fa fa-list-alt"></i> 帮助</a></li>
                <li><a href="${pageContext.request.contextPath }/user/logout.action"><i class="fa fa-list"></i> 注销</a></li>
            </ul>

        </div>
    </div>
</nav>

<!-- 左侧菜单选项========================================= -->
<div class="container-fluid">
    <div class="row-fluie">
        <div class="col-sm-3 col-md-2 sidebar">
            <ul class="nav nav-sidebar">
                <!-- 一级菜单 -->
                <li><a href="" onclick="showAtRight('${pageContext.request.contextPath }/posts/editPage.action')" class="nav-header menu-first collapsed release" data-toggle="collapse">
                    <i class="fa fa-file-text"></i>&nbsp; 发布作品 <span class="sr-only">(current)</span></a>
                </li>
                <li class="active"><a href="#userMeun" class="nav-header menu-first collapsed" data-toggle="collapse">
                    <i class="fa fa-file-text"></i>&nbsp; 作品管理 <span class="sr-only">(current)</span></a>
                </li>
                <!-- 二级菜单 -->
                <!-- 注意一级菜单中<a>标签内的href="#……"里面的内容要与二级菜单中<ul>标签内的id="……"里面的内容一致 -->
                <ul id="userMeun" class="nav nav-list collapse menu-second">
                    <li><a href="###" onclick="showAtRight('${pageContext.request.contextPath }/posts/viewAllPosts.action')"><i class="fa fa-users"></i> 作品管理</a></li>
                    <li><a href="###" onclick="showAtRight()"><i class="fa fa-users"></i> 基本信息</a></li>

                </ul>

                <li><a href="#productMeun" class="nav-header menu-first collapsed" data-toggle="collapse">
                    <i class="fa fa-user"></i>&nbsp; 个人管理 <span class="sr-only">(current)</span></a>
                </li>
                <ul id="productMeun" class="nav nav-list collapse menu-second">
                    <li><a href="###" onclick="showAtRight()"><i class="fa fa-list-alt"></i> 基本信息</a></li>
                    <li><a href="###" onclick="showAtRight()"><i class="fa fa-users"></i> 修改信息</a></li>
                    <li><a href="###" onclick="showAtRight()"><i class="fa fa-users"></i> 修改密码</a></li>
                </ul>

                <li><a href="#recordMeun" class="nav-header menu-first collapsed" data-toggle="collapse">
                    <i class="fa fa-globe"></i>&nbsp; 其余 <span class="sr-only">(current)</span></a>
                </li>
                <ul id="recordMeun" class="nav nav-list collapse menu-second">
                    <li><a href="###" onclick="showAtRight('recordList.jsp')" ><i class="fa fa-list"></i> 使用帮助</a></li>
                    <li><a href="###" onclick="showAtRight('recordList.jsp')" ><i class="fa fa-list"></i> 联系电话</a></li>
                    <li><a href="###" onclick="showAtRight('recordList.jsp')" ><i class="fa fa-list"></i> 设置其它</a></li>
                </ul>

            </ul>

        </div>
    </div>
</div>

<!-- 右侧内容展示==================================================   -->
<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
    <h1 class="page-header"><i class="fa fa-cog fa-spin"></i>&nbsp;Blog控制台<small>&nbsp;&nbsp;&nbsp;欢迎使用Blog后台管理系统</small></h1>

    <!-- 载入左侧菜单指向的jsp（或html等）页面内容 -->
    <div id="content">

        
    </div>
</div>
</body>
</html>