<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>


<html lang="en">
<head>
<title>Bootstrap Example</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css'>
	<Style>
		th, td {
			text-align:center;
		}
		
		a {
			color : black;
		}
	</Style>
</head>
<body>
 
<div class="container">
  <h2><a href = 'boardList.do'><i class="bi bi-chevron-left"></i></a> Spring MVC Board</h2>
  <div class="panel panel-default">
    <div class="panel-heading">Board List</div>
    <div class="panel-body">
    	<table class = "table table-hover table-bordered" style = "width:100%">
			<tr class = "active">
				<th>번호</th>
				<th>글제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>조회수</th>
			</tr>
			<c:set var = "no" value = "1"/>
			<c:forEach var = "vo" items = "${list}">
				<tr>
					<td>${no}</td>
					<td><a href = "board.do?idx=${vo.idx}">${vo.title}</a></td>
					<td>${vo.writter}</td>
					<td>${vo.indate}</td>
					<td>${vo.count}</td>
				</tr>
				<c:set var = "no" value = "${no+1}"/>
			</c:forEach>
		</table>
		<a href = 'boardInsertForm.do'><button class = 'btn'>글 작성</button></a>
    </div>
    <div class="panel-body">Big Data 1차</div>
  </div>
</div>

</body>
</html>