<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*, java.util.ArrayList, com.beans.ksy_web_project.EmpVo" %>
    <%@ page import= "com.beans.ksy_web_project.EmpDao" %>
    
<% 

	EmpDao empDao = new EmpDao();
	ArrayList<EmpVo> list = empDao.getList();

/* 	//DB연동 테스트
	//0. 드라이버 준비 : 프로젝트에 jdbc 드라이버 임포트
	//1. 드라이버 로딩
	Class.forName("oracle.jdbc.driver.OracleDriver");
	System.out.println("---> 1.드라이버 로딩 성공");
	
	//2. Connection 객체 생성
	String url = "jdbc:oracle:thin:@localhost:1521";
	String user = "scott";
	String pass = "tiger";
	Connection conn = DriverManager.getConnection(url, user, pass);
	System.out.println("---> 2. Connection 성공");
	
	//3. PreparedStatement 객체 생성
	String sql = "select empno, ename, deptno from emp";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	//4. ResultSet 객체 생성
	ResultSet rs = pstmt.executeQuery();
	
	//5. 데이터 출력
	ArrayList<EmpVo> list = new ArrayList<EmpVo>();
	while(rs.next()){
		EmpVo empVo = new EmpVo();
		empVo.setEmpno(rs.getInt(1));
		empVo.setEname(rs.getString(2));
		empVo.setDeptno(rs.getInt(3));
		list.add(empVo);
		
		/* out.write("<h1>" + rs.getInt(1) + "</h1>");
		out.write(rs.getString(2));
		out.write(rs.getInt(3)); 
	}
	
	//6. close
	if(rs != null) rs.close();
	if(pstmt != null) pstmt.close();
	if(conn != null) conn.close();
	
	*/
%> 
   
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Emp 사원 정보</h1>
	<table>
		<tr>
			<th>사원번호</th>
			<th>사원명</th>
			<th>부서번호</th>
		</tr>
		<%for(EmpVo empVo : list){ %>
		<tr>
			<td><%= empVo.getEmpno() %></td>
			<td><%= empVo.getEname() %></td>
			<td><%= empVo.getDeptno() %></td>
		</tr>
		<% } %>
	</table>
</body>
</html>