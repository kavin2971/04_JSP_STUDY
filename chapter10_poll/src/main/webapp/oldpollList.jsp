<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table, tr, th, td {border: 1px solid black;}
    table{
        background-color: white;
    }
    body{
        background-color: lightyellow;
        text-align: center;
        display: flex;
        flex-direction: column;
        align-items: center;
    }
    
    hr{
    	width:800px;
    }
    span {
        float: right;
    }
    span:hover{
        color: blue;
        cursor: pointer;
    }
</style>
</head>
<body align="center">
<form method="post" >
        <h2>투표프로그램</h2>
        <hr>
        <h3>설문폼</h3>
        <table border="1" align="center">
            <tr>
                <th colspan="2" height="30px" width="350px">Q:null</th>
            </tr>
            <tr>
                <th width="250px">투표</th>
                <td width="250px"><input type="submit" name="결과" value="결과" size="10px"></td>
            </tr>
        </table>
        <hr>
        <h3>설문리스트</h3>
        <div>
        <table border="1" height="40px"  align="center">
            <tr>
                <th width="200px">번호</th>
                <th width="200px">제목</th>
                <th width="350px">시작일~종료일</th>
            </tr>
            <tr>
                <td>1</td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>2</td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>3</td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>4</td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>5</td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>6</td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>7</td>
                <td></td>
                <td></td>
            </tr>
        </table>

            <span href="">설문작성하기</span>
        </div>
    </form>
</body>
</html>