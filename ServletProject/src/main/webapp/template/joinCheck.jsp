<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("utf-8"); %>
    <jsp:useBean id="join" class="com.join.JoinBean"/>
    <jsp:setProperty property="*" name="join"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 입력 정보 확인</title>
<style type="text/css">
table{
	width: 400px;
	
}
h1{
	text-align: center;
}
</style>
</head>
<body>
	<table> <tr>
	 	<td><b>ID : </b></td>
	 	<td>
	 		<jsp:getProperty property="id" name="join"/>
	 	</td>
	 </tr>
	 <tr>
	 	<td><b>PASSWORD : </b></td>
	 	<td>
	 		<jsp:getProperty property="pass" name="join"/>
	 	</td>
	 </tr>
	 <tr>
	 	<td><b>NAME : </b></td>
	 	<td>
	 		<jsp:getProperty property="name" name="join"/>
	 	</td>
	 </tr>
	 <tr>
	 	<td><b>GENDER : </b></td>
	 	<td>
	 		<jsp:getProperty property="gender" name="join"/>
	 	</td>
	 </tr>
	 <tr>
	 	<td><b>AGE : </b></td>
	 	<td>
	 		<jsp:getProperty property="age" name="join"/>
	 	</td>
	 </tr>
	 <tr>
	 	<td><b>EMAIL : </b></td>
	 	<td>
	 		<jsp:getProperty property="email" name="join"/>
	 	</td>
	 </tr>
	 </table>
</body>
</html>