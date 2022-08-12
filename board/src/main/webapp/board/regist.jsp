<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="board.*" %>
    <%@ page import="java.util.*" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
    <jsp:useBean id="vo" class="board.BoardVO"/>
    <jsp:useBean id="dao" class="board.BoardDao"/>
    <jsp:setProperty name="vo" property="*"/>
    <%
    	dao.insert(vo);
    
    // response.sendRedirect(request.getContextPath() + "/board/list.jsp");
    // <c:redirect url="${pageContext.request.contextPath}/board/list.jsp"></c:redirect>
    // 둘이 같은 식
   
    %>
    <c:redirect url="${pageContext.request.contextPath}/list.jsp"></c:redirect>
   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>