<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h2>include 지시어 활용 페이지 통합</h2>

<%
	String name = "Ma";
%>
<%@ include file = "Top.jsp" %>

포함하는 페이지 지시어(include) 페이지
<%@ include file = "Bottom.jsp" %>