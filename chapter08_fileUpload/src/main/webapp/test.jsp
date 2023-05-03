<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>

<script>
//행 삭제 후 새로운 행 추가 시 중복되지 않는 name 생성
	let count = 1;
 	let addCount = 1;

function generateNewName(deletedRows) {
  let usedNames = [];
  for (let i = 1; i <= count; i++) {
    if (document.getElementsByName("test" + i)[0]) {
      usedNames.push("test" + i);
    }
  }
  for (let i = 0; i < deletedRows.length; i++) {
    let index = usedNames.indexOf(deletedRows[i]);
    if (index !== -1) {
      usedNames.splice(index, 1);
    }
  }
  let addCount = 1;
  while (usedNames.includes("test" + addCount)) {
    addCount++;
  }
  return "test" + addCount;
}

// 행 삭제
function deleteInputBox() {
  let table = document.getElementById("dynamic_table");
  let rows = table.rows.length;
  let deletedRows = [];
  let chk = 0;

  if (rows > 1) {
    for (let i = 0; i < fileForm.checkList.length; i++) {
      if (fileForm.checkList[i].checked == true) {
        let name = "test" + (i + 1);
        let row = fileForm.checkList[i].parentNode.parentNode;
        row.parentNode.removeChild(row);
        deletedRows.push(name);
        i--;
        count--;
        chk++;
      }
    }
    if (chk <= 0) {
      alert("선택된 행이 없습니다. 삭제할 행을 선택해주세요.");
    } else {
      let addStr = "<tr>" +
        "<td><input type=checkbox name=checkList value=" + count + "></td>" +
        "<td><input type=file name=" + generateNewName(deletedRows) + "></td>" +
        "</tr>";
      let newRow = table.insertRow();
      let newCell = newRow.insertCell();
      newCell.innerHTML = addStr;
      count++;
    }
  } else {
    alert("🚨 더이상 삭제할 수 없습니다.🚨");
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