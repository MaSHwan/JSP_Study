<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    // pageContext Scope에 속성 값 저장(해당 JSP페이지 내에서만 유효)
    pageContext.setAttribute("pageAttribute", "홍길동");
    // pageContext.setAttribute("pageAttribute", "홍길동", PageContext.PAGE_SCOPE);
    
    // request Scope에 속성 저장하기(client request객체가 유지되는 동안)
    request.setAttribute("requestAttribute", "010-1234-1234");
    // pageContext.setAttribute("pageAttribute", "010-1234-1234", PageContext.REQUEST_SCOPE);
    
    // session Scope 속성 저장하기
    session.setAttribute("sessionAttribute", "hong@naver.com");
    // pageContext.setAttribute("pageAttribute", "hong@naver.com", PageContext.SESSION_SCOPE);
    
    // application Scope속성 저장하기
    application.setAttribute("applicationAttribute", "SAMSUNG");
    // pageContext.setAttribute("pageAttribute", "SAMSUNG", PageContext.APPLICATION_SCOPE);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<ul>
<li>이름 :<%= pageContext.getAttribute("pageAttribute") %>
<li>전화번호 :<%= request.getAttribute("requestAttribute") %>
<li>메일 :<%= session.getAttribute("sessionAttribute") %>
<li>회사 :<%= application.getAttribute("applicationAttribute") %>
</ul>
<%-- <jsp:useBean id="빈 이름" scope="유효범위" class="빈의 저장위치"/>
id : 객체를 식별하는 이름(인스턴스)
scope : 객체의 참조 유효범위를 의미함(기본범위 : page)
class : 완전한 형태의 클래스 이름 --%>

</body>
</html>