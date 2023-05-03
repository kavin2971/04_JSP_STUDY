<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = request.getParameter("name");
	String bloodType = request.getParameter("bloodType");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>모든 혈액형의 성격입니다</h3>
	<p>
	 A형 : 내성적 성격에 소심하며,뒤끝도 좀길게 가는편.반면 세심하고 꼼꼼하여 일 추진에 잇어 상당 <br>
	 	  심사숙고 하여 추진력은 떨어지나, 일단 시작하면 성공률 높으며,직장에서 인정받음.<br>
	 	  연애에 잇어선 좋으면서도 속을 잘 안들어내어 시작하기 어려우며,일단 선택햇으면 치밀한 <br>
	 	  작전으로 거의 승리.<br>
	<br>
	 B형 : 고지식한 성격에,모 아니면 도.융통성 부족하나 바른생활의 표본,헛짓거리 잘안하며 가정적.<br>
		  한여자.한남자만 바라보며 바람필 가능성 가장적은 이상적 배우자<br>
	<br>
	 O형 : 털털하고 쿨함.특유의 활발한 성격으로,주변에 인기가 많으며 추진력강한 행동파로,<br>
		  무리의 리더가 돼기쉬우며, 좋아 하는 이성에게도 적극적임.반면 덜렁끼도 잇어서 실수가 잦고,<br>
		  일단 저지르고 보는 기분파.<br>
	<br>
	 AB형 : a형 성격과 b형성격을 다가지고 잇음.가장 파악하기 힘든 성격.천재 아니면 바보라는 말도 잇음.<br>
	 	  이글보고 계신 당신이 ab형이라면 천재인지 생각해보시고,천재가 아니라면 당신은 바보.	<br>
	
	</p>
</body>
</html>