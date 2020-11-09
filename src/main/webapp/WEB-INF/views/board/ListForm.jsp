<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="com.gabin.VO.Manage"%>
   
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../../resources/css/table.css"/>
</head>
<body>
<h1>person person</h1>
<p><a href='add'>new person</a></p>
<p><a href='search'>person search</a></p>

	<table class="bbs" border="1" cellspacing="0">
		<caption>board의 ListForm. 이름을 누르면 수정 가능</caption>
		<colgroup>
			<col width="50">
			<col width="100">
			<col width="100">
			<col width="100">
			<col width="100">
			<col width="100">
			<col width="80">
			<col width="150">
			<col width="50">
			<col width="50">
			
		</colgroup>
		<thead>
			<tr>
				<th scope="col">번호</th>
				<th scope="col">이름</th>
				<th scope="col">비밀번호</th>
				<th scope="col">아버지</th>
				<th scope="col">어머니</th>
				<th scope="col">자녀</th>
				<th scope="col">주소</th>
				<th scope="col">전화번호</th>
				<th scope="col">가족수</th>
				<th scope="col">삭제</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="person">
				<tr>
					<td class="mpno">${person.mpno }</td>
					<td class="sname"><a href='update?mpno=${person.mpno}'>${person.sname}</a></td>
					<td class="spassword">${person.spassword}</td>
					<td class="father_name">${person.father_name}</td>
					<td class="mather_name">${person.mather_name}</td>
					<td class="descendant_name">${person.descendant_name}</td>
					<td class="juso">${person.juso}</td>
					<td class="phone">${person.phone}</td>
					<td class="family_num">${person.family_num}</td>
					<td><a href='delete?mpno=${person.mpno}'>[delete]</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>