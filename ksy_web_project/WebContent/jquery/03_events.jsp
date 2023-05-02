<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9000/ksy_web_project/jquery/jquery-3.6.4.min.js"></script>
<script>
	$(document).ready(function(){
		/*$(선택자).이벤트핸들러메소드();*/
		$("#btn1").click(function(){
			alert("button1 클릭~");
		});
	});
</script>
</head>
<body>
	<h1>Events</h1>
	<button type="button id="btn1">Button1</button>
	<button type="button id="btn2">Button1</button>
</body>
</html>