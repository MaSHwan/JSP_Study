<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP File</title>
</head>
<body>
<h2>JSP Script</h2>
<%!
	//declation = 변수선언
	String declation = "선언문";

	// 메소드 선언
	public String declationMethod(){
		return declation;
	}
	%>

<% // 연산과 처리
	String scriptlet = "스크립트릿";
	String comment = "주석";
	out.println("내장 객체를 이용한 출력: " + declation + "<br><br>");
	%>
	
	선언문 출력(변수) : <%=declation %><br><br>
	선언문 출력(메소드) : <%=declationMethod() %><br><br>
	스크립트릿 출력 : <%=scriptlet %><br><br>
	
	<!-- JSP에서 사용하는 HTML주석  -->
	<!-- HTML 주석 : <%=comment%>  --><br><br>
	<%-- JSP 주석 --%>
</body>
</html>