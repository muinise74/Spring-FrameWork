<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SmhrdBookList</title>
<style>
	input {
		border:0px;
		width:100%;
	}
</style>
</head>
<body>
	<h1> 보유 도서 현황 </h1>
	<table border = '1' style = "width: 100%;">
		<tr>
			<th style="text-align:center;">번호</th>
			<th style="text-align:center;">제목</th>
			<th style="text-align:center;">작가</th>
			<th style="text-align:center;">출판사</th>
			<th style="text-align:center;">ISBN</th>
			<th style="text-align:center;">보유도서수</th>
		</tr>
		<c:forEach var = 'book' items = '${list}'>
			<tr>
				<td style="text-align:center;">${book.num}</td>
				<td style="padding-left:5px;">${book.title}</td>
				<td style="padding-left:5px;">${book.author}</td>
				<td style="padding-left:5px;">${book.company}</td>
				<td style="padding-left:5px;">${book.isbn}</td>
				<td style="text-align:center;">${book.count}</td>
			</tr>
		</c:forEach>
	</table>
	<h1> 도서 입력 </h1>
	<form action = "bookInsert.do" method = "post">
		<table border = '1' style = "width: 100%;">
			<tr>
				<th style="text-align:center;">제목</th>
				<td><input type = 'text' name = 'title' ></td>
			</tr>
			<tr>
				<th style="text-align:center;">작가</th>
				<td><input type = 'text' name = 'author'></td>
			</tr>
			<tr>
				<th style="text-align:center;">출판사</th>
				<td><input type = 'text' name = 'company'></td>
			</tr>
			<tr>
				<th style="text-align:center;">ISBN</th>
				<td><input type = 'text' name = 'isbn'></td>
			</tr>
			<tr>
				<th style="text-align:center;">보유도서 수</th>
				<td><input type = 'text' name = 'count'></td>
			</tr>
			<tr>
				<td colspan = "2">
					<input type = 'submit' value = '등록'>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>