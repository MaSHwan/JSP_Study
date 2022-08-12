<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="com.member1.*" %>
    <jsp:useBean id="dao" class="com.member1.StudentDAO"/>
    <jsp:useBean id="vo" class="com.member1.StudentVO">
    	<jsp:setProperty name="vo" property="*"/>
    </jsp:useBean>
     <% String loginID = (String)session.getAttribute("loginID"); 
     	vo.setId(loginID);
     	dao.updateMember(vo);
     %>
    
<!DOCTYPE html>
<html>
<head>
<title>회원정보 수정 완료</title>
</head>
<meta http-equiv="Refresh" content="3;url=login.jsp">
<body>
<div align="center">
	<font size="5" face="궁서체">
	입력하신 내용대로 <b>회원정보가 수정되었습니다.</b><br><br>
	3초후에 login page로 이동합니다.
	</font>
</div>

</body>
</html>