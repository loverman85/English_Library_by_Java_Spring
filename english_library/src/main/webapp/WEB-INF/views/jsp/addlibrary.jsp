<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
/* Set height of the grid so .sidenav can be 100% (adjust if needed) */
.row.content {
	height: 500px;
}

/* Set gray background color and 100% height */
.sidenav {
	background-color: gray;
	font-style-color: black;
	height: 100%;
	border-radius: 5px;
	height: 100%
}

/* Set black background color, white text and some padding */
nav {
	background-color: blue;
	color: white;
	padding: 15px;
}

a { /*사이드 글자 색상*/
	color: black;
}
/* On small screens, set height to 'auto' for sidenav and grid */
@media screen and (max-width: 767px) {
	.sidenav {
		height: auto;
		padding: 15px;
	}
	.row.content {
		height: auto;
	}
}

.navbar {
	padding-top: 150px;
	/* height: 100px; */
}

.container-fluid {
	/* background-color: white; */
	
}
</style>
</head>
<body>
	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav navbar-right">

				<li><a href="<c:url value="/"/>"> <span
						class="glyphicon glyphicon-log-in"></span> home
				</a></li>
			</ul>
		</div>
	</div>
	</nav>


	<div class="container-fluid text-green">
		<div class="row content">
			<div class="col-sm-3 sidenav">
				<ul class="nav nav-pills nav-stacked">
					<li class="active"><a href="<c:url value="/libraryAdd"/>">도서관
							등록</a></li>

				</ul>
				<br>
			</div>

			<div class="col-sm-9">
				<h4>
					<small>도서관 관리자 등록</small>
				</h4>
				<!-- 도서관 등록 폼 시작 -->

				<form action="<c:url value="/libraryAdd"/>" method="post">
					<div>
						아이디 : <input type="text" name="libraryId">
					</div>
					<div>
						비밀번호 : <input type="password" name="libraryPw">
					</div>
					<div>
						지역 : <select name="local">
							<option value="">::지역선택::</option>
							<c:forEach var="l" items="${localList}">
								<option value="${l.localNo}">${l.localName}</option>
							</c:forEach>
						</select>
					</div>
					<p>
						<input type="submit" class="btn btn-success btn-large" value="등록" />
						<input type="reset" class="btn btn-danger btn-large" value="리셋" />
					</p>

				</form>
			</div>
		</div>
	</div>
</body>
</html>
