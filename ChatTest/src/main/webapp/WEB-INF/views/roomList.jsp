<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>채팅방리스트</title>
</head>
<body>
	<h1>채팅방리스트</h1>
	
	<form action="makeRoom"><button>방만들기</button></form>
	<table>
	<c:forEach  var="Room" items="${roomList}">
	<tr>
	<td><a href="goRoom?roomSeq=${Room.roomSeq}">${Room.name}</a></td><td>${Room.userId}</td>
	<td>${Room.indate}</td>
	</tr>
	</c:forEach>
	</table>
</body>
</html>