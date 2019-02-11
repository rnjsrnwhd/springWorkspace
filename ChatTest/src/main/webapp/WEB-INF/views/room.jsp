<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Room</title>
</head>
<script>
	function ready(){
		
		document.getElementById("message").focus();
		
	}
	setInterval(// 이함수를 몇초마다 실행시킨다
	function ajaxTest(roomSeq){
		
		
		$.ajax({
			url:"insertChat",
			data:{"roomSeq":roomSeq},
			type:"get",
			success:function(data){
				
				var content="";
				/* alert(JSON.stringify(data)); */
				for(var i=0;i<data.length;i++){
					content+=data[i].userId+":"+data[i].message+"<br>";
				
				}
				
				document.getElementById("messageList").innerHTML=content;
			}
			
			
		});
		
	}
	,1000
);
</script>
<body onload="javascript:ready()">
	<h1>채팅방</h1>

	<button onclick="ajaxTest(${roomSeq})">테스트</button>

	<div id="messageList"></div>

	<form action="insertChat" method="post">
		<input type="hidden" name="roomSeq" value="${roomSeq}">
		MESSAGE:<input type="text" id="message" name="message"> <input
			type="submit" value="전송">
	</form>


</body>
</html>