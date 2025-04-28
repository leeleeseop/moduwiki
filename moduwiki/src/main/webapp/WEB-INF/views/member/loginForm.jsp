<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<div class="container">
		<div class="login-box">
			<h3>로그인</h3>
			<form action="login.do" method="post">
				<div class="form-group">
					<label for="id">아이디</label>
					<input type="text" class="form-control" placeholder="ID 입력" id="Mid" name="Mid"
					autocomplete="off" required>
				</div>
				
				<div class="form-group">
					<label for="pw">비밀번호</label>
					<input type="password" 
					 class="form-control" placeholder="비밀번호 입력" id="Mpw" name="Mpw" required>
				</div>
				
				<button type="submit" class="btn">로그인</button>
				<a href="searchForm.do" class="btn">로그인 찾기</a>
				<a href="pwSearchForm.do" class="btn">비밀번호 찾기</a>
			</form>
		</div>
	</div>
</body>
</html>