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
</head>
<body>
 
<div class="container">
  <h2>Spring MVC Board</h2>
  <div class="panel panel-default">
    <div class="panel-heading">Panel Heading</div>
    <div class="panel-body">
    	<table class = "table table-hover table-bordered" style = "width:100%">
			<tr class = "active">
				<th style = "width:5%; text-align:center;">번호</th>
				<th style = "width:15%; text-align:center;">글제목</th>
				<th style = "width:53%; text-align:center;">내용</th>
				<th style = "width:10%; text-align:center;">작성자</th>
				<th style = "width:10%; text-align:center;">작성일</th>
				<th style = "width:7%; text-align:center;">조회수</th>
			</tr>
			<c:forEach var = "vo" items = "${list}">
				<tr>
					<td style = "width:5%; text-align:center;">${vo.idx}</td>
					<td style = "width:15%; text-align:center;">${vo.title}</td>
					<td style = "width:53%; padding-left:10px">${vo.contents}</td>
					<td style = "width:10%; text-align:center;">${vo.writter}</td>
					<td style = "width:10%; text-align:center;">${vo.indate}</td>
					<td style = "width:7%; text-align:center;">${vo.count}</td>
				</tr>
			</c:forEach>
		</table>
    </div>
    <div class="panel-body">Big Data 1차</div>
  </div>
</div>

</body>
</html>