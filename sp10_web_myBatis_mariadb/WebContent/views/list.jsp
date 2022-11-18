<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list.jsp  List Page</title>
</head>
<body>
<h1> List Page </h1>
<table border="1" width="850">
		<tr>
			<th>번호</th>			
			<th>제목</th>			
			<th>시작</th>			
			<th>끝</th>			
			<th>삭제</th>
		</tr>
		<c:forEach  var="list"  items="${ list }">
			<tr>
				<td>${ list.gno }</td>
				<td>${ list.gname }</td>
				<td>${ list.g_start }</td>
				<td><a href="javascript:location.href='board?cmd=detail&seq=${ list.gname }' ">${ list.gname }</a></td>
				<td>${ list.g_end }</td>
				<%-- <td><a href="javascript:location.href='cmd=detail&seq=${ list.seq }' ">상세보기</a></td> --%>
				<td><a href="javascript:location.href='board?cmd=delete&seq=${ list.gno }' ">삭제하기</a></td>
			</tr>
		</c:forEach>
</table><br>
<a href="views/writeForm.jsp">글쓰기</a>

<br/>
<a href="javascript:location.href='board?cmd=search'">검색</a>
</body>
</html>