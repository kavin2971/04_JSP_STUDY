function idCheck(id) {
	if(id == "") {
		alert("아이디를 입력해주세요");
		regFrm.id.focus();
	}
	//    파일이름↓ 파라미터이름↓   ↓파라미터값
	url = "idCheck.jsp?id=" + id; // 파일명?넘겨줄파라미터이름=파라미터값 (띄어쓰기하면절대안됨)
	window.open(url, "IDCheck","width=300,height=150");
}
function setFocus() {
    document.getElementById("pwd").focus();
  }