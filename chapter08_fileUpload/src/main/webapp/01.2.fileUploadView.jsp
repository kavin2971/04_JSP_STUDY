<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>   
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import="java.util.*, java.io.*" %>

<%
/*
	new MultipartRequest(request 객체,
						 저장할 폴더 경로  (\경우 \\로변경 또는 /로 변경),
						 파일의 최대크기 (1024 = 1키로바이트 * 1024 = 1메가바이트 * 5 = 5메가바이트;),
						 인코딩타입,
						 기존의 파일명과 겹칠경우 덮어쓰기 방지 설정)
*/

String saveFolder = "D:/kjm/04_JSP/chapter08_fileUpload/src/main/webapp/filestorage";
String encType = "UTF-8";
int maxSize = 1024*1024*1024*5;

	try {
		MultipartRequest multi = new MultipartRequest(request, saveFolder, maxSize, encType,
								 new DefaultFileRenamePolicy());

		// 폼요소중에서 <input type="file">인 요소의 파라미터들의 이름
		 Enumeration files = multi.getFileNames();
		 while(files.hasMoreElements()) {
			String name = (String)files.nextElement();
			String fileName = multi.getFilesystemName(name);
			String originName = multi.getOriginalFileName(name);
			String type = multi.getContentType(name);
			File f = multi.getFile(name);
			
			out.print("파라미터의 이름 : " + name + "<p/>");
			out.print("저장된 파일의 이름 : " + fileName + "<p/>");
			out.print("실제 파일의 이름 : " + originName + "<p/>");
			out.print("파일의 타입 : " + type + "<p/>");
			
			if(f != null) {
				out.print("파일의 크기 : " + f.length() + "Byte" );
			}
		}
	} catch(Exception e){
		System.out.println(e);
}

%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	업로드된 파일
</body>
</html>