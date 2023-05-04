<%@page import="poll.PollListBean"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<% 
request.setCharacterEncoding("UTF-8"); 
%> 
<jsp:useBean id="pMgr" class="poll.PollMgr" />
<html>
<head>
	<title>JSP Poll</title>
	<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#FFFFCC">
	<div align = "center"><br/>
		<h2>투표 프로그램</h2>
		<hr width="60%" />
		<b>설문폼</b>
		<jsp:include page="pollForm.jsp" />
		<hr width="60%" />
		<b>설문리스트</b>
<table>
	<tr>
		<td>
		<table  border="1">
			<tr>
				<th width="50">번호</th>
				<th width="250" align="left">질문</th>
				<th width="200">시작일~종료일</th>
			</tr>
		<!-- 설문 리스트 Start -->
		<%
			ArrayList<PollListBean> alist = pMgr.getAllList();
			for(int i=0; i<alist.size(); i++){
				PollListBean plBean = alist.get(i);
				int num=plBean.getNum();
				String question = plBean.getQuestion();
				String sdate = plBean.getSdate();
				String edate = plBean.getEdate();
		%>
			<tr align="center">
				<td><%=alist.size()-i %></td>
				<td align="left">
					<a href="pollList.jsp?num=<%=num%>"><%=question %>
				</td>
				<td><%=sdate.substring(0, 10)+"~"+edate.substring(0, 10)%></td>
			</tr>
			<%} //--for %>
		<!-- 설문 리스트 End -->
		</table>
		</td>
	</tr>
	<tr>
		<td align="center">
			<a href="pollInsert.jsp">설문작성하기</a>
		</td>
	</tr>
</table>
</div>
</body>
</html>