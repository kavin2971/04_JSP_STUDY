<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="script.js?ver=3" type="text/javascript" charset="utf-8"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
function findAddr() {
	  new daum.Postcode({
	    oncomplete: function(data) {
	      let roadAddr = data.roadAddress; // 도로명 주소 변수
	      let jibunAddr = data.jibunAddress; // 지번 주소 변수
	      let extraAddr = ''; // 여분의 주소 변수
	      document.getElementById("postcode").value = data.zonecode;
		      if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택한 경우
		        if (roadAddr !== '') {
		          // 도로명 주소가 있을 경우 추가 정보를 조합한다.
		          if (data.bname !== '') {
		            extraAddr += data.bname;
		          }
		          if (data.buildingName !== '') {
		            extraAddr += (extraAddr !== '') ? ', ' + data.buildingName : data.buildingName;
		          }
		          roadAddr += (extraAddr !== '') ? ' (' + extraAddr + ')' : '';
		          // 주소 필드에 도로명 주소를 입력한다.
		          document.getElementById("addr").value = roadAddr;
		        }// 사용자가 지번 주소를 선택한 경우
		     	 } else if (jibunAddr !== '') {
		          // 지번 주소가 있을 경우 주소 필드에 지번 주소를 입력한다.
		          document.getElementById("addr").value = jibunAddr;
		        }
	      
	      // 상세주소 입력 필드에 포커스를 맞춘다.
	      document.getElementById("detailAddr").focus();
	    }
	  }).open();
	}
</script>
</head>
<body>
    <form name="regFrm" method="post" action="memberProc.jsp">
        <table border="1">
            <tr>
                <td>아이디</td>
                <td>
                    <input name="id" onkeydown="inputIdChk();"> &ensp;
                    <input type="button" value="ID중복확인" onclick="idCheck(this.form.id.value);">
                    <input type="hidden" name="idBtnCheck" value="idUnCheck">
                </td>
                <td>영문과 숫자로만 입력</td>
            </tr>
            <tr>
                <td>비밀번호</td>
                <td><input name="pwd" type="password"></td>
                <td>특수기호,영문,숫자 각 1개이상씩 들어가야하며 8글자이상</td>
            </tr>
            <tr>
                <td>비밀번호확인</td>
                <td><input name="repwd" type="password"></td>
           
                <td>위의 비밀번호를 한번 더 입력하세요</td>
            </tr>
            <tr>
                <td>이름</td>
                <td><input name="name"></td>
                <td>한글로 입력하세요</td>
     
            </tr>
            <tr>
                <td>성별</td>
                <td>
                    <input type="radio" id="1" name="gender" value="1" checked>
                    <label for="1">남</label> 
                    <input type="radio" id="2" name="gender" value="2">
                    <label for="2">여</label>
                </td>
                <td>성별을 입력하세요</td>
     
            </tr>
            <tr>
                <td>생년월일</td>
                <td><input name="birthday"></td>
             <td>6글자로 입력 ex) 970312</td>
            
            </tr>
            <tr>
                <td>E-mail</td>
                <td><input name="email"></td>
         
                <td>ex) hong123@google.com</td>
            </tr>
            <tr>
                <td>우편번호</td>
                <td><input name="zipcode" size="30" id="postcode" readonly> &ensp;
                    <input type="button" value="우편번호검색" onclick="findAddr();">
                </td>
                <td>우편번호를 검색하세요</td>

            </tr>
            <tr>
                <td rowspan="2">주소</td>
                <td><input name="address" size="60px" id="addr" readonly>    
                </td>
                <td rowspan="2">상세주소를 입력하세요</td>
              
            </tr>
            <tr>
                <td ><input name="detailAddress" id="detailAddr"></td>
            </tr>
            <tr>
                <td>취미</td>
                <td>
                    <input type="checkbox" value="인터넷" id="a" name="hobby">
                    <label for="a">인터넷</label> &emsp;
                    <input type="checkbox" value="여행" id="b" name="hobby">
                    <label for="b">여행</label> &emsp;
                    <input type="checkbox" value="게임" id="c" name="hobby">
                    <label for="c">게임</label> &emsp;
                    <input type="checkbox" value="영화" id="d" name="hobby">
                    <label for="d">영화</label> &emsp;
                    <input type="checkbox" value="운동" id="e" name="hobby">
                    <label for="e">운동</label>
                </td>
                <td>취미를 선택하세요</td>

            </tr>
            <tr>
                <td>직업</td>
                <td>
	                <select name="job">
	                    <option value="0" selected>선택하세요</option>
	                    <option value="학생">학생</option>
	                    <option value="교사">교사</option>
	                    <option value="군인">군인</option>
	                    <option value="의료">의료</option>
	                    <option value="경찰">경찰</option>
	                    <option value="건설">건설</option>
	                    <option value="기타">기타</option>
	                </select>
                </td>
                <td>직업을 선택하세요</td>
            </tr>
            <tr>
                <th colspan="3">
                    <input type="button" value="회원가입" onclick="inputCheck();"> &emsp; 
                    <input type="reset" value="다시쓰기"> &emsp;
                    <input type="button" value="로그인" onclick="location.href='login.jsp'">
                </th>
            </tr>

        </table>

    </form>
</body>
</html>