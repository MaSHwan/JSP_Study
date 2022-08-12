<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    request.setCharacterEncoding("utf-8");
    String message = request.getParameter("message");
    %>
    <jsp:useBean id="msg" class="com.simpledata.Simpledata"/>
    
    <%-- <%   
    Simpledata msg = new Simpledata();
    %> --%>
    
    <jsp:setProperty property="message" name="msg"/>
    
    <%-- <% msg.setMessage(""); %> 자바 코딩일 때 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>자바 빈즈 프로그램</h1>
<hr color="red"><br><br>
<font size="5">
메시지 : <jsp:getProperty property="message" name="msg"/>
<%-- <%= msg.getMessage() %> --%>
</font>
</body>
</html>