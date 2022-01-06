<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
%>

<jsp:useBean id="bean" class="bean.MemberDTO"></jsp:useBean>
<jsp:setProperty property="*" name="bean"/>

<jsp:useBean id="mgr" class="bean.MemberMgr"></jsp:useBean>

<%
	String chk = request.getParameter("addchk");
	System.out.println(chk);
	if(chk == null) {
		bean.setAddChk(false);
	} else {
		bean.setAddChk(true);
	}
	
	String msg = "";
	String location = "";
	
	boolean result = mgr.insertMember(bean);
	if(result){
		msg = "회원가입에 성공 하였습니다.";
		location = "signin.jsp";
	} else {
		msg = "회원가입에 실패하셨습니다.";
		location = "signup.jsp";
	}
%>

<script>
	alert("<%=msg %>");
	location.href = "<%=location %>";
</script>