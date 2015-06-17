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
	<script type="text/javascript">
	function searchId(){    /* 팝업창  searchid,pass */
		window.open("<%=request.getContextPath()%>/member/searchIdForm.do",
				"searchId",
				"scrollbars,toolbar=no,location=no,directories=no,status=no,menu=yes,resizable=yes,width=600,height=400,top=200,left=400");
	}
	function searchPass() {
		window.open("<%=request.getContextPath()%>/member/searchPassForm.do",
				"searchPass",
				"scrollbars,toolbar=no,location=no,directories=no,status=no,menu=yes,resizable=yes,width=600,height=400,top=200,left=400");
	}
	
	function join(){
		document.frmJoin.submit();
	}
	
	function login(){
			document.frmLogin.submit();
		}	
	</script>
</head>
<body>
	
	<form action="<%=request.getContextPath()%>/model2/join.do" method="post" name="frmJoin">  <!-- 개인정보이기 때문에 메소드를 post로 바꿈 -->
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
					<!-- <input type="submit"  value="회원가입"/> -->
					<img src="<%=request.getContextPath()%>/images/btnJoin.gif" style="cursor: pointer" alt="" onclick="return join()"/>
				</td>
			</tr>
		</table>
		</fieldset>
	</form>
	
	<form action="<%=request.getContextPath()%>/model2/login.do" method="post" name="frmLogin">
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
					<!-- <input type="submit"  value="로그인"/> -->
					<img src="<%=request.getContextPath()%>/images/btnLogin.gif" style="cursor: pointer" alt="" onclick="return login()"/>
					
				</td>
			</tr>
		</table>
		</fieldset>
	</form>
	
	<div>
		<span>
			<a href="#" onclick="searchId()">아이디 찾기</a>
		</span>
		<span>
			<a href="#" onclick="searchPass()">비밀번호 찾기</a>
		</span>
	</div>
	
</body>
</html>