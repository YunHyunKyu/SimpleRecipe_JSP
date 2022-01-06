<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
%>

<jsp:useBean id="bean" class="bean.MemberMgr"></jsp:useBean>

<%
	boolean check =	bean.loginMember(id, pw);
	String url = "";
	
	if(check) {
		url = "main.jsp";
		session.setAttribute("idKey", id);
	}
	else
		url = "signin.jsp";
%>

<script>

	location.href = "<%=url %>";

</script>