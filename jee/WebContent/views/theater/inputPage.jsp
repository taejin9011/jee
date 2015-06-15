<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>입력값 받은 페이지</title>
</head>
<body>
	<div>
		나이 : <%=request.getAttribute("age") %> <br />
		상영관 : <%=request.getAttribute("theater") %> <br />
		좌석수 : <%=request.getAttribute("seat") %> <br />
		영화제목 : <%=request.getAttribute("title") %> <br />
		상영날짜 : <%=request.getAttribute("date") %> <br />
		상영시간 :  <%=request.getAttribute("time") %> <br />
		영화가격 :  <%=request.getAttribute("price") %> <br />
		포스터 : <%=request.getAttribute("poster") %> <br />
		현재상영장 : <%=request.getAttribute("nowFilm") %> 
	</div>
</body>
</html>