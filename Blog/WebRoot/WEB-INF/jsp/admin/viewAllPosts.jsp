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
    <!-- 重复引用bootstrap会出现意想不到的 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/viewAllPosts.css">
    <title>- viewAllPosts -</title>

</head>
<body>
	<div class="container">
        <div class="row">
            <div class="col-xs-1 tit"><a onclick="requestPosts(1,'${pageContext.request.contextPath}/posts/publishedPosts.action')">全部</a></div>
            <div class="col-xs-1 tit"><a onclick="requestPosts(2,'${pageContext.request.contextPath}/posts/publishedPosts.action')">已发表</a></div>
            <div class="col-xs-1"><a onclick="requestPosts(3,'${pageContext.request.contextPath}/posts/publishedPosts.action')">草稿</a></div>
        </div>
    </div>
    <div class="allPosts">
        <div class="article">
        	<c:if test="${postsList != null }">
        		<c:forEach items="${postsList}" var="posts">
					<h3><a>${posts.postsname }</a></h3>
					<p><span>${posts.mdName }</span>
		            <span><fmt:formatDate value="${posts.postscreatetime }"
							pattern="yyyy-MM-dd" /></span>
		            <span>已发表</span>
		            <span><a>置顶</a></span>
		            <span><a href="###" onclick="showAtRight('${pageContext.request.contextPath }/posts/editPage.action?id=${posts.id }')">编辑</a></span>
		            <span><a href="###" onclick="deletePosts(1,${posts.id},'${pageContext.request.contextPath}/posts/publishedPosts.action')">删除</a></span>
           		 </p>
	             <p><span>阅读量：0</span>
	                <span>评论：31</span>
	                <span>收藏：5</span>
	                <span>转发：0</span>
	                <a>分享</a>
	            </p>
				</c:forEach>
        	</c:if>
        </div>
    </div>
    <script type="text/javascript">
    	/* 此页面的js要放在admin.js中 */
    </script>
</body>
</html>