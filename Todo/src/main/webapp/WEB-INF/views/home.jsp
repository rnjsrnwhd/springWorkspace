<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Todo</title>
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
	float:right;
		}
		.box1 {
  	display: inline-block;
  	width: 460px;
  	height: 20px;
  	color:#FFFFFF;
  	text-align: center;
  	padding: 15px 0;
  	background-color: #004D40;
  	font-size: 15px;
    margin: 4px;
  	margin: 1em;
}
	





	
	</style>
</head>
<body>
		<div class="newTodo">
  		<a href="makeTodo" class="button">새로운 TODO 등록</a>
		</div>
		<br><br><br><br>
		<div class="box1">TODO</div>
		<div class="box1">DOING</div>
		<div class="box1">DONE</div>
</body
</html>
