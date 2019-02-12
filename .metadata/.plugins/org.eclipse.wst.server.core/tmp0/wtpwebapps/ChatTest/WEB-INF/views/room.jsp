<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Room</title>
</head>
<script>
	setInterval(
	function ajaxTest(){	
		 $.ajax({     
			 url: "selectChat",
			 data: { "roomSeq": ${roomSeq}},
			 type: "get",
			 success: function(data){
				 	var content="";
					for(var i=0;i<data.length;i++){
						content+=data[i].userId+" : "+data[i].message+"<br>";
					}
					document.getElementById("messageList").innerHTML=content;
			 }
		 });
	}
	,1000
	);
	
	function formSubmit(){
	 $.ajax({     
		 url: "insertChat",
		 data: { "roomSeq": ${roomSeq},
			         "message":document.getElementById("message").value},
		 type: "post",
		 success:function(){
			 document.getElementById("message").focus();
			 document.getElementById("message").value="";
		 }
	 });
	}
</script>
<body>
	<h1>채팅방</h1>
	<%-- 
	<button onclick="ajaxTest(${roomSeq})">테스트</button>
	 --%>
	<div id="messageList">
	
	</div>
	
	<input type="hidden" name="roomSeq" value="${roomSeq}">
	MESSAGE:<input type="text" id="message" name="message">
	<input type="button" onclick="javascript:formSubmit()" value="전송">
	
	
</body>
</html>