<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Javawatch | 로그인 페이지</title>
</head>
<body>
	<div>
	
<%-- scriptlet 사용한 방법
		
<%
		String msg = request.getParameter("msg");
		if (msg != null) {
			out.println(msg);
		}
%>
		
--%>
		
		<c:if test="${ !(empty param.msg) }">  <!-- getParameter랑 같은의미 -->
			${ param.msg }
		</c:if>
		
	</div>

	<form name="frmLogin" method="post" action="loginCheck.jsp" encType="utf-8">
		아이디 : <input type="text" name="user_id"><br>
		비밀번호 : <input type="password" name="user_pw"><br>
		<input type="submit" value="로그인">
		<input type="reset" value="다시 입력">
	</form>
	
	<%
		request.setAttribute("user_id", "user_id");
	
	%>
</body>
</html>