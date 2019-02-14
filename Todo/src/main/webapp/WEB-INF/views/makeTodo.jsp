<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>할일 등록</title>
<style>
	.container-1{
 margin:50px 500px 50px 500px
  
  }
	
</style>

</head>
<body>
<div class=container-1>
<h1 class="title" align="center">할일  등록</h1>

<form action="TodoSave">
	
	<p>어떤 일 인가요? <br></p>
	<input type="text" style="width:500px; height: 30px; margin: 0px 0px 20px;"  value="swift공부하기(24자까지)">
	<p>누가 할 일인가요? <br></p>
	<input type="text" style="width:200px; height: 30px; margin: 0px 0px 20px;"  value="홍길동">
	<p>우선 순위를 선택하세요 <br></p>
	<input type="radio" name="seq" value="1순위">1순위
	<input type="radio" name="seq" value="2순위">2순위
	<input type="radio" name="seq" value="3순위">3순위
	
	<br>
	
	
	<a href="makeTodo" class="button" style="margin:40px 0px 0px 0px">새로운 TODO 등록</a>
	<style>
		.button {
    width:200px;
    background-color: #1976D2;
    border: none;
    color:#FFFFFF;
    padding: 15px 0;
    text-align: center;
	ext-decoration: none;
	display: inline-block;
    font-size: 15px;
    margin: 4px;
    cursor: pointer;
	float:left;
		}
	
	
</div>
	

</form>
</body>
</html>