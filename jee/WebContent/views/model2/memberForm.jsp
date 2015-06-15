<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>회원가입 및 로그인 폼</title>
	<style>
		@IMPORT url("../../css/model2/kaup.css");
	</style>
</head>
<body>
	
	<form action="<%=request.getContextPath()%>/model2/join.do" method="post">  <!-- 개인정보이기 때문에 메소드를 post로 바꿈 -->
	<fieldset>
		<legend>회원 가입</legend>
		<table>
			<tr>
				<td>이름</td>
				<td>
					<input type="text" id="name" name="name" placeholder="이름을 입력하세요" />
				</td>
			</tr>
			<tr>
				<td>ID</td>
				<td><input type="text" id="id" name="id" placeholder="ID 값을 입력하세요" /></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" id="password" name="password" /></td>
			</tr>
			<tr>
				<td>나이</td>
				<td><input type="text" id="age" name="age" placeholder="나이를 입력하세요."/></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type="text" id="address" name="address" placeholder="서울시" /></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit"  value="회원가입"/>
				</td>
			</tr>
		</table>
		</fieldset>
	</form>
	
	<form action="<%=request.getContextPath()%>/model2/login.do" method="post">
	<fieldset>
		<legend>로그인</legend>
		<table>
			<tr>
				<td>아이디</td>
				<td>
					<input type="text" id="id" name="id" placeholder="ID 입력하세요." />
				</td>
			</tr>
			<tr>
				<td>패스워드</td>
				<td><input type="password" id="password" name="password" /></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit"  value="로그인"/>
				</td>
			</tr>
		</table>
		</fieldset>
	</form>
</body>
</html>