<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table, tr, th, td {border: 1px solid white;}
    table{
        background-color: gray;
    }
    body{
        background-color: beige;
        text-align: center;
        display: flex;
        flex-direction: column;
        align-items: center;
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
<body>
	<div>
        <h2>투표프로그램</h2>
         <hr>
         <h3>설문작성</h3>
         <hr>
        <form method="post" action="pollInsertProc.jsp">
         
         <table border="1" align="center" width="480px">
             <tr>
                 <th height="30px">질문</th>
                 <td colspan="2">q: <input name="question" size="53px"></td>
             </tr>
             <tr>
                 <th rowspan="7">항목</th>
            
             <%
             	for(int i=1; i<=4; i++) {
            
             		out.print("    <td>" + (i * 2 - 1) + ": <input name='item'></td>");
             		out.print("    <td>" + (i * 2) + ": <input name='item'></td>");
             		out.print("</tr>");
             		if(i<4)
             			out.print("<tr>");
             	}
             %>
             <!-- 
             <tr>
                 <th rowspan="8">항목</th>
                 <td>1: <input name="item" size="21px"></td>
                 <td>2: <input name="item" size="21px"></td>
             </tr>
             <tr>
                 <td>3: <input name="item" size="21px"></td>
                 <td>4: <input name="item" size="21px"></td>
            </tr>
            <tr>
                 <td>5: <input name="item" size="21px"></td>
                 <td>6: <input name="item" size="21px"></td>
            </tr>
            <tr>
                 <td>7: <input name="item" size="21px"></td>
                 <td>8: <input name="item" size="21px"></td>
            </tr>             
            -->
            <tr>
                <td>시작일</td>
                <td>
                    <select name="sdateY">
                        <option value="2023">2023</option>
                        <option value="2022">2022</option>
                    </select>년
                    <select name="sdateM">
                        <%
                            for (int i=1; i<=12; i++){
                                out.println("<option value='" + i + "'>" + i);
                            }
                        %>
                    </select>월
                    <select name="sdateD">
                        <%
                        for (int i=1; i<=31; i++){
                            out.println("<option value='" + i + "'>" + i);
                        }
                        %>
                    </select>일
                </td>
            </tr>
            
           <!--  
           <tr>
                <td>시작일</td>
                <td>
                    <select name="년" id="year">
                        <option value="2022">2022</option>
                        <option value="2023">2023</option>
                    </select>년
                    <select name="월" id="month">
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="7">7</option>
                        <option value="8">8</option>
                        <option value="9">9</option>
                        <option value="10">10</option>
                        <option value="11">11</option>
                        <option value="12">12</option>
                    </select>월
                    <select name="일" id="day">
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="7">7</option>
                        <option value="8">8</option>
                        <option value="9">9</option>
                        <option value="10">10</option>
                        <option value="11">11</option>
                        <option value="12">12</option>
                        <option value="13">13</option>
                        <option value="14">14</option>
                        <option value="15">15</option>
                        <option value="16">16</option>
                        <option value="17">17</option>
                        <option value="18">18</option>
                        <option value="19">19</option>
                        <option value="20">20</option>
                        <option value="21">21</option>
                        <option value="22">22</option>
                        <option value="23">23</option>
                        <option value="24">24</option>
                        <option value="25">25</option>
                        <option value="26">26</option>
                        <option value="27">27</option>
                        <option value="28">28</option>
                        <option value="29">29</option>
                        <option value="30">30</option>
                        <option value="31">31</option>
                    </select>일
                </td>
            </tr> 
            -->
            <tr>
                <td>종료일</td>
                <td>
                    <select name="edateY">
                        <option value="2023">2023</option>
                        <option value="2022">2022</option>
                    </select>년
                    <select name="edateM">
                        <%
                            for (int i=1; i<=12; i++){
                                out.println("<option value='" + i + "'>" + i);
                            }
                        %>
                    </select>월
                    <select name="edateD">
                        <%
                        for (int i=1; i<=31; i++){
                            out.println("<option value='" + i + "'>" + i);
                        }
                        %>
                    </select>일
                </td>
            </tr>
            <!-- <tr>
                <td>종료일</td>        
                    <td>
                        <select name="년" id="year">
                            <option value="2022">2022</option>
                            <option value="2023">2023</option>
                        </select>년
                        <select name="월" id="month">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8">8</option>
                            <option value="9">9</option>
                            <option value="10">10</option>
                            <option value="11">11</option>
                            <option value="12">12</option>
                        </select>월
                        <select name="일" id="day">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8">8</option>
                            <option value="9">9</option>
                            <option value="10">10</option>
                            <option value="11">11</option>
                            <option value="12">12</option>
                            <option value="13">13</option>
                            <option value="14">14</option>
                            <option value="15">15</option>
                            <option value="16">16</option>
                            <option value="17">17</option>
                            <option value="18">18</option>
                            <option value="19">19</option>
                            <option value="20">20</option>
                            <option value="21">21</option>
                            <option value="22">22</option>
                            <option value="23">23</option>
                            <option value="24">24</option>
                            <option value="25">25</option>
                            <option value="26">26</option>
                            <option value="27">27</option>
                            <option value="28">28</option>
                            <option value="29">29</option>
                            <option value="30">30</option>
                            <option value="31">31</option>
                        </select>일
                    </td>                
            </tr> -->
            <tr>
                <td>이중답변</td>
                <td><input type="radio" name="a" value="1" id="n" checked>
                	<label for="n">YES</label>
                    <input type="radio" name="a" value="2" id="m">
                    <label for="m">NO</label>
                </td>
            </tr>
            <tr>
                <th colspan="3">
                    <input type="submit" value="작성하기">
                    <input type="reset" value="초기화">
                    <input type="button" value="리스트보기" onclick="location.href='pollList.jsp'">
                </th>
            </tr>
         </table>
         <br>
         <hr>
     </form>   
     </div>
</body>
</html>