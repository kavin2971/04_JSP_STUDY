<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
 	let count = 1;
 	let addCount = 1;

 	
 	//행추가
 	function addInputBox() {
 		for(let i=1; i<=count; i++){
 			if(document.getElementsByName("test" + i)[0]) {
 				addCount = count;
 				break;
 			} else {
 				addCount = i;
 			}
 		}
 		let addStr = "<tr>"
 				   + 	"<td><input type=checkbox name=checkList value=" + addCount + "></td>"  
 				   + 	"<td><input type=file name=test" + addCount + "></td>"
 				   + "</tr>";
	  	let table = document.getElementById("dynamic_table");
 		let newRow = table.insertRow();
 		let newCell = newRow.insertCell();
 		newCell.innerHTML = addStr;
 		count++;
 	}
 	
 	//행삭제
 	function deleteInputBox() {
		let table = document.getElementById("dynamic_table");
		let rows = table.rows.length;
		let chk= 0;
		
		if(rows > 1) {
			
			for(let i=0; i<fileForm.checkList.length; i++){
							//rows로 해도 동일하다
				if(fileForm.checkList[i].checked == true) {
					table.deleteRow(i);
					i--;
					count--;				
					chk++;
				}
			}
				if(chk <= 0){
					alert("선택된 행이 없습니다. 삭제할 행을 선택해주세요.")
				}			
		} else {
			alert("🚨 더이상 삭제할 수 없습니다.🚨")
		}
 	}
</script>

</head>
<body>
<h4>파일을 업로드 하려면 행추가 버튼을 누르세요</h4>
<input type="button" value="행추가" onclick="addInputBox();"> &emsp;
<input type="button" value="행삭제" onclick="deleteInputBox();">
<form name="fileForm" method="post" enctype="multipart/form-data" action="03.2.multiView.jsp">
	<table border="1" id="dynamic_table">

	</table><p/>
	<input type="submit" value="DONE">
</form>
</body>
</html>
