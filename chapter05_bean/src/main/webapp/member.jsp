<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    
    <form name="regFrm" method="post" action="memberProc.jsp">
        <table border="1">
            <tr>
                <td>아이디</td>
                <td>
                    <input name="id"> &ensp;
                    <input type="button" value="ID중복확인">
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
                    <input type="radio" id="1" name="gender" checked>
                    <label for="1">남</label> 
                    <input type="radio" id="2" name="gender">
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
                    <input type="button" value="우편번호검색">
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
                    <input type="checkbox" value="인터넷" id="a" name="hobby" checked>
                    <label for="a">인터넷</label>
                    <input type="checkbox" value="여행" id="b" name="hobby">
                    <label for="b">여행</label>
                    <input type="checkbox" value="게임" id="c" name="hobby">
                    <label for="c">게임</label>
                    <input type="checkbox" value="영화" id="d" name="hobby">
                    <label for="d">영화</label>
                    <input type="checkbox" value="운동" id="e" name="hobby">
                    <label for="e">운동</label>
                </td>
                <td>취미를 선택하세요</td>

            </tr>
            <tr>
                <td>직업</td>
                <td><select name="job">
                    <option value="0" selected></option>
                    <option value="학생"></option>
                    <option value="교사"></option>
                    <option value="군인"></option>
                    <option value="주부"></option>
                    <option value="회계"></option>
                    <option value="건설"></option>
                    <option value="기타"></option>
                </select></td>
                <td>직업을 선택하세요</td>
            </tr>
            <tr>
                <th colspan="3">
                    <input type="button" value="회원가입"> &emsp; 
                    <input type="reset" value="다시쓰기"> &emsp;
                    <input type="button" value="로그인">
                </th>
            </tr>

        </table>

    </form>
</body>
</html>