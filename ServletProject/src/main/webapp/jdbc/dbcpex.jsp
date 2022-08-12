<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="java.sql.Connection" %>
    <%@ page import="javax.sql.DataSource" %>
    <%@ page import="javax.naming.InitialContext" %>
    <%@ page import="javax.naming.Context" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2> DBCP 연동 </h2>
<%
	Context initContext = new InitialContext();
	DataSource ds = (DataSource)initContext.lookup("java:/comp/env/jdbc/myoracle");
	Connection conn = ds.getConnection();
	out.print("DBCP");
%>
</body>
</html>