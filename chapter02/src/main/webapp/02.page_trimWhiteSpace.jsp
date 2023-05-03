<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <!-- ↑ 위에 명시된게 기본적인 페이지 지시 -->  

<%-- <%@ page info= "JSP 현재 페이지 정보" import= "java.util.*"%>
 <!-- 기본적인 페이지 지시자는 왠만해서 건들지(합치지) 않는다 -->   --%>
 
<%-- 
	* 지시자 : JSP 페이지가 실행될 때 필요한 정보를 JSP 컨테이너에게 알리는 역할
		- JSP : 동적 컨텐츠를 생성하는 웹 컴포넌트
		- 웹 컴포넌트 : 웹 페이지 혹은 웹 앱에서 재사용화 / 커스텀화 / 캡슐화 된 HTML태그를 만들수 있는 웹 플랫폼 API들의 집합
		- 컨테이너 : 웹 컴포넌트를 저장하는 저장소의 역할, 메모리 로딩, 객체생성 및 초기화 등 서블릿의 생명주기를 관리하고,
				  JSP를 서블릿으로 변환하는 기능을 수행
				  
    * 지시자의 종류
       1. page 지시자 : JSP 페이지에 지원되는 속성의 정의
       2. include 지시자 : 별도의 파일을 JSP 파일에 삽입
       3. taglib(taglibrary) 지시자 : JSP에서 지원하지 않는 부분들을 사용자가 직접 작성하여 그 태그를 호출하여 사용
       
       
       	1) page 지시자   		
       		- language : 현재 페이지에 사용할 언어
       		- contentType : JSP 페이지의 내용을 어떤 형태로 출력할 것인지 MIME형식으로 브라우저에 알려주는 역할
      						MIME 형식 : text/jpg, text/xml, text/plain ...
			- pageEncoding : 페이지의 문자 인코딩값 (UTF-8 이런것)
       		- info : 현재 페이지를 설명해주는 문자열
       		- session (기본값: "true") : httpSession을 사용할지 여부
				   true : 세션을 계속 유지
    			  false : 세션이 연결되지 않음
      		- buffer (기본값: 8kb : 출력크기를 kb 단위로 지정
      		- autoFlush (기본값: true) : 버퍼가 가득 찼을때 저장된 내용들을 어떻게 처리할 것인지
      			   true : 가득차면 자동으로 비워짐    <- 대부분 true로 놔두는게 좋다
      			  false : 가득차면 작업중지, 예외발생됨
 			- import : 다른 class API를 사용하고자 할때 import후 사용
 			   ㄴ import는 중복사용가능
 			
 			- extends : 다른 class를 상속받아 사용할때
 			- trimDirective Whitespaces : 글자의 맨 앞과 맨 뒤의 공백제거
 			
 			- errorPage : 사용자 정의로 error페이지를 별도로 만들어 사용할때
 				ㄴ isErrorPage : errorPage를 사용할 경우 반드시 isErrorPage로 ErrorPage임을 표시 
 							
 			  위에 errorPage, isErrorPage 해당 두개 항목은 쌍으로 사용된다.
       		
 --%> 
<%@ page info= "JSP 현재 페이지 정보" session="false" buffer="16kb"
	autoFlush="true" import="java.util.*"%>
	
<%-- 

<%@ page session="false"%>		
<%@ page buffer="16kb"%>		
<%@ page autoFlush="true"%>		
<%@ page import="java.util.*"%>

--%>

<style>
 body{font-size:50px;}
 h1{font-size:100px;}
</style>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>페이지 지시자 인포</title>
</head>
<body>
<h1> Page 지시자 info </h1>
<%=this.getServletInfo() %>

<h1>page 지시자 import</h1>
<%
	Date date = new Date();
%>
현재 시간과 날짜? <%=date.toLocaleString() %>








</body>
</html>