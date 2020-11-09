<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>추가</title>
</head>
<body>
	<h1>board의 AddForm.jsp</h1>
	<form action="add" method="post">
		이름 : <input type = "text" name="sname"><br>
		패스워드 : <input type="number" name="spassword"><br>
		아버지성함 : <input type="text" name="father_name"><br>
		어머니성함 : <input type="text" name="mather_name"><br>
		자녀이름 : <input type="text" name="descendant_name"><br>
		주소 : <input type="text" name="juso"><br>
		핸드폰번호 : <input type="text" name="phone"><br>
		가족수  : <input type="number" name="family_num"><br>
		<input type="submit" value="작성완료"><br>
		<input type="reset" value="다시작성">
	</form>
</body>
</html>