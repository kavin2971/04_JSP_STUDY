<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>for Ex</h1>
	<!--  1~10까지의 합 -->
	
	<hr>
	<%
	int sum = 0;
		for (int i=0; i<=10; i++) {
			sum += i;
		}
	%>
	1~10까지숫자의 합은? <%=sum%><br>
	
	<hr>
<%-- * 프로그램을 하면서 브라우저로 출력하려면
	 방법 1) out.print(출력할 구문작성);
	 방법 2) 중간을 끊어서 HTML로 넣어줌
	 	<%                        <% %> 실행구문
	 	   프로그램 하다가
 	    %>
 	       HTML구문 작성
 	    <%
	 	   프로그램 이어서 작성
 	    %>
 --%>	
	<%
	int sum2 = 0;
		for (int i=1; i<=10; i++) {
			if(i<10) 
				out.print( i + " + ");
			else					
				out.print( i + " = ");					
			sum2 += i;			
		
		}
	%>
	<%=sum2%><br>
	
	<hr>
	<%--프로그램을 끊었다가 다시 프로그램을 이어서할 경우 if,for.. 1wnfdldjeh 반드시 {}넣어야함 --%>
	<%
	int sum3 = 0;
		for (int i=1; i<=10; i++) {
			if(i<10){
	%>
			<%=( i + " + ")%>
	<% 
			}else{	
	%>
			
			<%=( i + " = ")%>					
	<%
			}
			sum3 += i;			
		}
	
	%>
	<%=sum3 %>
	
	<hr>
	
	<%
	int random = 0;
	
		for (int i=0; i<3; i++){
		 random = (int)(Math.random()*45);
		}
	
	%>
	랜덤숫자 <%=random%>
	
	<hr>
	
	<%
	int [] arr = new int [10];
	int sum4 = 0;
	for(int i=0; i<arr.length; i++) {
		arr[i] = i+1;
	%>
		<%=arr[i] + " " %>
	<%
		sum4 += arr[i];
	}
	%>
	= <%=sum4%></p>
	<hr>	
	
	
</body>
</html>