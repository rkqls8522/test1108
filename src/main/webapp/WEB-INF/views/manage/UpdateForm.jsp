<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="person" scope="request" class="com.gabin.VO.Manage" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>수정할 정보를 입력</title>
</head>
<body>
	<h1>사람 정보</h1>
	<form action="update" method="post">
		번호 : <input type="text" name= "mpno" value="<%=person.getMpno()%>" readonly="readonly"><br> 
		이름 : <input type="text" name="sname" value="<%=person.getSname()%>"><br> 
		패스워드 : <input type="number" name="spassword" value="<%=person.getSpassword()%>"><br>
		아버지성함 : <input type="text" name="father_name" value="<%=person.getFather_name()%>"><br>
		어머니성함 : <input type="text" name="mather_name" value="<%=person.getMather_name()%>"><br>
		자녀성함 : <input type="text" name="descendant_name" value="<%=person.getDescendant_name()%>"><br>
		주소 : <input type="text" name="juso" value="<%=person.getJuso()%>"><br>
		핸드폰번호 : <input type="text" name="phone" value="<%=person.getPhone()%>"><br>
		가족수 : <input type="number" name="family_num" value="<%=person.getFamily_num()%>"><br>
		<input type="submit" value="저장">
		<input type="reset" value="다시 작성">
	</form>
</body>
</html>
