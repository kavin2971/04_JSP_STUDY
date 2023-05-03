function inputCheck() {
    if(regFrm.id.value == ""){
        alert("아이디를 입력하세요")
        regFrm.id.focus();
        return;
    }

    if(regFrm.pwd.value == ""){
        alert("비밀번호를 입력하세요")
        regFrm.pwd.focus();
        return;
    }

    if(regFrm.checkpwd.value == ""){
        alert("비밀번호를 입력하세요")
        regFrm.checkpwd.focus();
        return;
    }
    if(regFrm.pwd.value != regFrm.checkpwd.value){
        alert("비밀번호가 일치하지 않습니다")
        regFrm.checkpwd.focus();
        return;
    }
    if(regFrm.name.value == ""){
        alert("이름을 입력해주세요")
        regFrm.name.focus();
        return;
    }
    regFrm.submit();
}