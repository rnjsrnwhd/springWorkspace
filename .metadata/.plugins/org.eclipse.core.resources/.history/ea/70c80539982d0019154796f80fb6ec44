<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta charset="UTF-8">
	<title>Home</title>
</head>
<body>

	<c:if test="${sessionScope.userId==null}">
	
	<h1>로그인/회원가입</h1>

	<form action="login" method="post">
	  ID:<input type="text" name="id">
	  PW:<input type="password" name="pw">
	<input type="submit" value="로그인">
	</form>
	<font color="red">${message}</font>

	<h3><a href="memberJoin">회원가입</a></h3>
	
	</c:if>
	<c:if test="${sessionScope.userId!=null}">
	
	<h2>${sessionScope.userId}님 환영합니다.</h2>
	
	<h3><a href="goChat">채팅방으로 입장</a></h3>
	<h3><a href="logout">로그아웃</a></h3>
	
	</c:if>


</body>
</html>
