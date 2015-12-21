<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<c:set var="ctp" value="${pageContext.request.contextPath }"></c:set>
</head>
<body>
	<div id="userTable">
		<table align="center" border="1">
			<tr>
				<td>id</td>
				<td>name</td>
				<td>create_at</td>
				<td>update_at</td>
				<td>操作</td>
			</tr>	
			<c:forEach items="${users}" var="user">
				<tr>
					<td>${user.id }</td>
					<td>${user.name }</td>
					<td>
					<jsp:useBean id="myDate" class="java.util.Date"/>
					<c:set target="${myDate}" property="time" value="${user.create_at}"/>
					<fmt:formatDate value="${myDate}" pattern="yyyy-MM-dd"/>
					</td>
					<td>	
					<c:set target="${myDate}" property="time" value="${user.update_at}"/>
					<fmt:formatDate value="${myDate}" pattern="yyyy-MM-dd"/>	
					</td>
					<td>编辑&nbsp;&nbsp;删除</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	
	
		<a href="${ctp }/user">新增
		</a>



</body>
</html>