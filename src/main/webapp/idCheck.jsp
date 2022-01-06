<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:useBean id="mMgr" class="bean.MemberMgr" />

<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
%>
<%!
	boolean check = false;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="./js/jquery-3.6.0.min" ></script>
</head>
<body>
	<%
		check = mMgr.isIdCheck(id);
		if(check) {
			out.println("<p>이미 존재하는 아이디 입니다.</p>");
		}
		else {
			out.println("<p>아이디를 사용 할 수 있습니다.</p>");	
		}
	%>
	<a class="close" href="#">닫기</a>
	
	<script>
		const closeCheck = document.querySelector('.close');
		
		let check = <%= check %>;
		let strCheck = "";
		if(check)
			strCheck = "사용불가";
		else
			strCheck = "사용가능";
		
		opener.document.querySelector('.idChkDesc').innerText = strCheck;
		window.close();
		
	</script>
</body>
</html>