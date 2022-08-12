<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="board.*" %>
    <%@ page import="java.util.*" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
     <jsp:useBean id="dao" class="board.BoardDao"></jsp:useBean> <!-- BoardDao dao = new BoardDao();  -->
     <%
     	int num = Integer.parseInt(request.getParameter("num"));
     	BoardVO vo = dao.selectOne(num);
     	pageContext.setAttribute("vo", vo);
     %>															 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글내용</title>
</head>
<body>
<h3>글정보</h3>
<p>번호:${vo.num}</p>
<p>제목:${vo.title}</p>
<p>작성자:${vo.writer}</p>
<p>내용:${vo.content}</p>
<p>등록일자:${vo.regdate}</p>
<p>조회수:${vo.cnt}</p>
</body>
</html>