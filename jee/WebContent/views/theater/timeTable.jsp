<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>시간표</title>
	<style>
		@IMPORT url("<%=request.getContextPath()%>/css/tableTag.css");
		@IMPORT url("<%=request.getContextPath()%>/css/menu.css");
	</style>
</head>
<body>

<!-- 극장관리의 메뉴바 -->
<div class="box">
		<ul class="mainMenu">
			<li class="actice" >
				<a href="timeTable.jsp">시간표</a>
			</li>
			<li>상영관정보</li>
			<li>상영예정</li>
			<li>영화관정보</li>
			<li>오시는길</li>
		</ul>
</div> <br />
<!-- 극장관리 메뉴바 종료 -->

<!-- 예약하는 폼 -->
<form action="<%=request.getContextPath()%>/theater.do">
		
		<fieldset >
			<legend>영화, 상영관, 시간을 선택하세요. </legend>
				<select name="title">
				  	<option value="jurassicWorld">쥬라기공원</option>
				  	<option value="madMax">매드맥스</option>
				 	<option value="sanAndreas">샌 안드레아스</option>
					</select>
					<select name="theater">
				  	<option value="ATheater">A관</option>
				  	<option value="BTheater">B관</option>
				 	<option value="CTheater">C관</option>
				 	<option value="DTheater">D관</option>
					</select>
					<select name="time" >
				  	<option value="am10">10:00</option>
				  	<option value="pm12">12:00</option>
				 	<option value="pm03">15:00</option>
				</select> <br />
			<input type="submit" value="예 매" />
			<input type="reset" value="취 소" />
			
		</fieldset>
	</form>
<!-- 예약폼 종료 -->

<!-- 보고싶은 날짜를 선택하는 폼 -->
<div class="box">
		<ul class="mainMenu">
			<li>06월 17일</li>
			<li>06월 18일</li>
			<li>06월 19일</li>
			<li>06월 20일</li>
			<li>06월 21일</li>
			<li>06월 22일</li>
		</ul>
</div> 
<!-- 날짜폼 종료 -->

<div>
	<table class="tableTag " summary="테이블 요약 설명">
		<caption><h1>상영 시간표</h1></caption>
		<colgroup>  <!-- column 한 셀에 대한 가로값을 입력 -->
			<col width="40%" />
			<col width="20%"/>
			<col width="40%"/>
		</colgroup>
		
		<thead>  <!-- table head : 테이블 속 컬럼명을 지정 -->
			<tr >
				<th>영화</th>
				<th>상영관</th>
				<th>상영시간</th>
			</tr>
		</thead>
		
		<tbody style="text-align: center">  <!-- table body : 테이블를 랜더링 하는 집합체  -->
			
			<tr >
				<td rowspan="2"  >
					<img src="<%=request.getContextPath()%>/images/theater/Jurassic World.PNG" alt="" /> <br />
					쥬라기 공원 
				</td>
				<td>A관</td> <!-- ABC관은 123관으로 우선적으로 받은수 스위치 케이스문으로 123을 ABC로 바꿔주도록 한다 -->
				<td>
					<h3>10:00 	12:00	15:00</h3>
					<%-- <a href="<%="reservation.jsp" %>" >15:00</a> --%> &nbsp;
				 </td>
			</tr>
			<tr>
				<td>B관</td>
				<td>
					<a href="<%="reservation.jsp" %>" >10:00</a> &nbsp;
					<a href="<%="reservation.jsp" %>" >12:00</a> &nbsp;
					<a href="<%="reservation.jsp" %>" >15:00</a> &nbsp;
				</td>
			</tr>
			
		<tr>
				<td rowspan="2" >
					<img src="<%=request.getContextPath()%>/images/theater/Mad Max.PNG" alt="" /> <br />
					매드 맥스
				</td>
				<td>C관</td>
				<td>
					<a href="<%="reservation.jsp" %>" >10:00</a> &nbsp;
					<a href="<%="reservation.jsp" %>" >12:00</a> &nbsp;
					<a href="<%="reservation.jsp" %>" >15:00</a> &nbsp;
				</td>
			</tr>
			<tr>
				<td>D관</td>
				<td>
					<a href="<%="reservation.jsp" %>" >10:00</a> &nbsp;
					<a href="<%="reservation.jsp" %>" >12:00</a> &nbsp;
					<a href="<%="reservation.jsp" %>" >15:00</a> &nbsp;
				</td>
			</tr>
			
			<tr>
				<td rowspan="2" >
					<img src="<%=request.getContextPath()%>/images/theater/San Andreas.PNG" alt="" /> <br />
					샌 안드레아스
				</td>
				<td>A관</td>
				<td>
					<a href="<%="reservation.jsp" %>" >10:00</a> &nbsp;
					<a href="<%="reservation.jsp" %>" >12:00</a> &nbsp;
					<a href="<%="reservation.jsp" %>" >15:00</a> &nbsp;
				</td>
			</tr>
			<tr>
				<td>D관</td>
				<td>
					<a href="<%="reservation.jsp" %>" >10:00</a> &nbsp;
					<a href="<%="reservation.jsp" %>" >12:00</a> &nbsp;
					<a href="<%="reservation.jsp" %>" >15:00</a> &nbsp;
				</td>
			</tr>
			
		</tbody>
	</table>
	</div>
	

</body>
</html>