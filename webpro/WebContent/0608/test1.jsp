<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<style>
		h1{
			color : red;
		}
		p{
			font-size : 1.5em;
		}
		span{
			color : blue;
			font-size : 2.0em;
		}
	</style>
</head>
<body>
	<h1>JSP : Java Server Page</h1>
	<h3>html 태그, css Style, Javascript와 Java 코드를 혼용하여 코딩할 수 있다</h3>
	<p>java코드를 기술할 때는 &lt; % &gt; &lt; % &gt; 사이에 기술한다</p>
	<p>클라이언트 요청 시(전송 시) form으로 입력한 데이터 값을 가져온다</p>
	<p>이미 내장되어 있는 요청 객체 request를 이용하여 가져온다</p>
	<p>request.getParameter("name")</p>
	<p>결과를 출력할 때는 out.print(변수) 또는 &lt; %= &gt; &lt; % &gt;</p>
	<p> <% %>
	<hr color = "blue"> 	
	<% 
	String sname = request.getParameter("name");
	String saddr = request.getParameter("addr");
	
	//db연결하고 CRUD처리한다.
	
	out.print(saddr + " 에 사시는 "+ sname + "님 환영합니다.");
	%>
	<br>
	<br>
	<span><%= sname %> 님 환영합니다.</span>
	<br>
	<br>
	<%= saddr %>에 사시는군요~
	
</body>
</html>