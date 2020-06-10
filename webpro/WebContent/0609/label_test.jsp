<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel = "stylesheet" href = "../css/mycss.css">
<style>
 table{
    border : 2px solid blue;
    margin-left: 30%;
     }
 td{
    width : 200px;
    height :  40px;
    padding : 2px;
    text-align: center;
    font-size:1.2em;
 }
 span{
    display : inline-block;
    margin : 3px;  
    width :150px;
    height :40px;
 
 }
</style>
</head>
<body>
<h3>클라이언트 전송시 입력한 데이타 값을 전달 받는다.</h3>
<p>request.getParametor("name이름")</p>
<%
  //클라이언트 전송시 입력한 데이타 값을 전달 받는다.
  
  	request.setCharacterEncoding("UTF-8");
	
		String name = request.getParameter("name");
		String uid = request.getParameter("id");
		String upw = request.getParameter("pass");
		String addr = request.getParameter("addr");
  
%>

<hr>


	<table border = "1">
		<tr>
			<td>이름</td>
			<td><%=name %></td>		
		</tr>
		<tr>
			<td>아이디</td>
			<td><%=uid %></td>		
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><%=upw %></td>		
		</tr>
		<tr>
			<td>주소</td>
			<td><%=addr %></td>		
		</tr>
	</table>
</body>
</html>