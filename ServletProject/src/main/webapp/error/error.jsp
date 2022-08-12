<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page isErrorPage="true" %>
    <%response.setStatus(HttpServletResponse.SC_OK); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예외 발생</title>
</head>
<body>
고객님께서 요청하신 처리과정에서 예외 발생하였습니다.<br><br>
빠른 시간내에 문제를 해결할게<br>
<br>
에러타입 : <%=exception.getClass().getName() %><br>
에러 메시지 : <%=exception.getMessage() %><br>
</body>
</html>