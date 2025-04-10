<!-- sitemesh 사용을 위한 설정 파일 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">	
<meta name="description" content="">
<meta name="author" content="">

<title>모두위키</title>

<link href="/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
<link rel="stylesheet" href="https://code.jquery.com/ui/1.14.0/themes/base/jquery-ui.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link href="/css/default_decorator.css" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">

<script src="/vendor/jquery/jquery.min.js"></script>
<script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="/vendor/jquery-easing/jquery.easing.min.js"></script>	
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/ui/1.14.0/jquery-ui.js"></script>
<script src="/js/default_decorator.js"></script> 
</head>

<body>
	<!-- 상단네비 -->
	<nav class="navbar">
		<div class="logo">
			<img src="/upload/모두위키 로고(완성).png" alt="모두위키 로고" style="height: 24px;">
			<span class="logo-text">모두위키</span>
			<a href=""></a>
		</div>
		
		
		<!-- 검색관련 -->
		<div class="right">
		  <form action="/search" method="get" class="search-box">
		    <input type="text" name="q" placeholder="검색">
		    <button type="submit" class="btn"><i class="fa fa-search"></i></button>
		  </form>
		</div>

		
		<!-- 로그인 -->
		<div class="login">
			<!-- 로그인이 안된 경우 로그인 화면 / 로그인이 되어 있을경우 토클 메뉴창 -->
			<c:if test="${ empty login }">
				<a href="/member/loginForm.do" class="truewiki-login-btn">
					<svg class="svg-icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 126.76 101.4" style="width: 30px; height: auto;">
					  <g>
					    <path class="st0" d="M93.81,86.34H32.95c0,0-3.04-41.68,30.43-41.68S93.81,86.34,93.81,86.34z"/>
					    <circle class="st0" cx="63.38" cy="27.57" r="12.5"/>
					  </g>
					</svg>
				</a>
			</c:if>
			
			<!-- 로그인 된 상태 -->
			<c:if test="${!empty login }">
			  <div class="nav-item dropdown">
			    <div class="nav-link dropdown-toggle" onclick="toggleDropdown()">
			      <svg class="svg-icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 126.76 101.4" style="width: 30px; height: auto;">
			        <g>
			          <path class="st0" d="M93.81,86.34H32.95c0,0-3.04-41.68,30.43-41.68S93.81,86.34,93.81,86.34z"/>
			          <circle class="st0" cx="63.38" cy="27.57" r="12.5"/>
			        </g>
			      </svg>
			    </div>
			
			    <!-- 드롭다운 메뉴 -->
			    <div class="dropdown-menu" id="userDropdown">
			      <div class="dropdown-item">사용자:<br> ${login.mname }</div>
			      <div class="dropdown-item">내정보보기</div>
			      <div class="dropdown-item">설정</div>
			      <div class="dropdown-item">내 문서함</div>
			      <div class="dropdown-item">내 문서 편집 요청</div>
			      <div class="dropdown-item">↔ 넓은 화면으로</div>
			      <div class="dropdown-item">로그아웃</div>
			    </div>
			  </div>
			</c:if>
		</div>
	</nav>
	<!-- 상단네비의 끝 -->
	
	<!-- 하단 -->
	<footer class="footer">
		<div class="container">
			<div class="text-center">
				<span>모두위키2025</span>
			</div>
		</div>
	</footer>
	<!-- 하단의 끝 -->
</body>