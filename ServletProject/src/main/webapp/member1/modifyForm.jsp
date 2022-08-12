<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.member1.*" %>
    <jsp:useBean id="dao" class="com.member1.StudentDAO"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정</title>
<link rel="stylesheet" type="text/css" href="style.css">
<script type="text/javascript" src="script.js"></script>
</head>
<%
	String loginID = (String)session.getAttribute("loginID");
	StudentVO vo = dao.getMember(loginID);
	
%>
<body>
<form name="regForm" method="post" action="modifyProc.jsp">
<table border="1">
<tr>
	<td colspan="2" align="center">회원수정 정보 입력</td>
</tr>

<tr>
	<td align="right">ID : </td>
	<td>
		<%= vo.getId() %>
	</td>
</tr>

<tr>
	<td align="right">PASSWD : </td>
	<td>
		<input type="password" name="pass"value="<%=vo.getPass() %>">
	</td>
</tr>

<tr>
	<td align="right">비밀번호 확인 : </td>
	<td>
		<input type="password" name="repass" value="<%=vo.getPass() %>">
	</td>
</tr>

<tr>
	<td align="right">NAME : </td>
	<td>
		<%= vo.getName() %>
	</td>
</tr>

<tr>
	<td align="right">PHONE : </td>
	<td>
		<input type="text" name="phone1" size="4" value="<%= vo.getPhone1() %>">-
		<input type="text" name="phone2" size="4" value="<%= vo.getPhone2() %>">-
		<input type="text" name="phone3" size="4" value="<%= vo.getPhone3() %>">
		
	</td>
</tr>

<tr>
	<td align="right">E-MAIL : </td>
	<td>
		<input type="text" name="email" value="<%= vo.getEmail() %>">
	</td>
</tr>

<tr>
	<td align="right">POST NO : </td>
	<td>
		<input type="text" name="zipcode" value="<%= vo.getZipcode() %>">&nbsp;
		<input type="button" value="우편번호 검색" onclick="zipCheck()">
	</td>
</tr>

<tr>
	<td align="right">ADDRESS : </td>
	<td>
		<input type="text" name="address1" size="60" value="<%= vo.getAddress1() %>">
	</td>
</tr>

<tr>
	<td align="right">DETAIL ADDRESS : </td>
	<td>
		<input type="text" name="address2" size="30" value="<%= vo.getAddress2() %>">
	</td>
</tr>

<tr>
	<td colspan="2" align="center">
		<input type="button" value="정보수정" onclick="updateCheck()">&nbsp;&nbsp; 
		<!--  <input type ="submit" value="회원가입">-->
		<input type="reset" value="취소" onclick="javascript:window.location='login.jsp'">
	</td>

</tr>


</table>

</form>
</body>
</html>