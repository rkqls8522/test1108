<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="com.gabin.VO.Manage"%>
   
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>person person</h1>
<p><a href='add'>new person</a></p>
<p><a href='search'>person search</a></p>

	<table class="bbs" border="1" cellspacing="0">
		<caption>리스트</caption>
		<colgroup>
			<col width="100">
			<col width="100">
			
		</colgroup>
		<thead>
			<tr>
				<th scope="col">주소</th>
				<th scope="col">사람수</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="person">
				<tr>
					<td class="juso">${person.juso}</td>
					<td class="count">${person.count}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>