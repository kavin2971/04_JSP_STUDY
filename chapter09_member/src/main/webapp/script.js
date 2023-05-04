
 	function inputIdChk() {
		regFrm.idBtnCheck.value = "idUnCheck";
	} 
	function idCheck(id) {	
	regFrm.idBtnCheck.value = "idCheck";
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
	
	function inputCheck() {
	if(regFrm.id.value == "") {
		alert("아이디를 입력해 주세요");
		regFrm.id.focus();
		return;
	}
	if(regFrm.idBtnCheck.value != "idCheck"){
		alert("아이디 중복체크를 해주세요");
		return;
	}
	
	if(regFrm.pwd.value == "") {
		alert("비밀번호를 입력해 주세요");
		regFrm.pwd.focus();
		return;
	}
	
	if(regFrm.repwd.value == "") {
		alert("위와 동일한 비밀번호를 입력해 주세요");
		regFrm.repwd.focus();
		return;
	}
	
	if(regFrm.pwd.value != regFrm.repwd.value) {
		alert("비밀번호가 일치하지 않습니다");
		regFrm.repwd.value="";
		regFrm.repwd.focus();
		return;
	}
	
	if(regFrm.name.value == "") {
		alert("이름을 입력해 주세요");
		regFrm.name.focus();
		return;
	}
	regFrm.submit();
}  

	function loginCursor() {
		regFrm.loginId.focus();
}

