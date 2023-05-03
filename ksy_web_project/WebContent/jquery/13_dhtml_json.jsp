<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ScoreList</title>
<script src="http://localhost:9000/ksy_web_project/jquery/jquery-3.6.4.min.js"></script>
<script>
	$(document).ready(function(){
		const gangnam = {title:"강남고등학교", address:"서울시 강남구 강남대로123", grade:{gtitle:"2학년 1반", 
						  list:[{name:"홍길동", kor:100, eng:100, math:100},
								{name:"홍길서", kor:90, eng:90, math:90},
								{name:"홍길남", kor:80, eng:80, math:80},
								{name:"홍길북", kor:70, eng:70, math:70},
								{name:"청길동", kor:60, eng:60, math:60}] }};
		/*json 객체인 gangnam 데이터를 테이블 형식으로 출력
		  title - h1
		  address, gtitle - h3
		  list - 테이블 형식
		*/
		
	});
</script>
</head>
<body>

</body>
</html>