<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	request.setCharacterEncoding("utf-8");
    %>
    
    <jsp:useBean id="dao" class="com.member1.StudentDAO"/>
    <jsp:useBean id="vo" class="com.member1.StudentVO"/>
    <jsp:setProperty property="*" name="vo"/>
    
    <%
    	boolean flag = dao.memberInsert(vo);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 확인</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body bgcolor="#FFFFCC">
<br><br>
<div align="center">

<%
	if(flag){
		out.println("<b>회원가입을 진심으로 축하 드립니다.<b><br>");
		out.println("<a href=login.jsp>로그인</a>");
	}else{
		out.println("<b>다시입력하여 주십시오.<b><br>");
		out.println("<a href=regForm.jsp>다시가입</a>");
	}
%>
</div>
</body>
</html>