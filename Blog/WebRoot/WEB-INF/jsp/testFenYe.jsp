<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>分页测试</title>
<script type="text/javascript">
	function requestPage(pageNum){
		document.testPage.action="${pageContext.request.contextPath }/posts/viewPageHelper.action?pageNum="+pageNum;
		document.testPage.submit();
	}
</script>
</head>
<body>
	<form name="testPage" method="post">
		<input type="button" value="第一页" onclick="requestPage(1)"/>
		<input type="button" value="第二页" onclick="requestPage(2)"/>
	</form>
	<h2>${name}</h2>
	<table>
		<tr>
			<td>帖子名字</td>
			<td>帖子时间</td>
		</tr>
		<c:if test="${page != null}">
			hello!
			<c:forEach items="${page.list}" var="pageList">
				<tr>
					<td>${pageList.postsname }</td>
					<td>${pageList.postscreatetime }</td>
				</tr>
			</c:forEach>
		</c:if>
	</table>
</body>
</html>