<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix='fn' uri = "http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
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
	<style>
		a {
			color : black;
		}
		
		input {
			border : 0;
			width : 100%;
		}
		
		form {
			width : 500px;
			margin :auto;
			text-align : center;
		}
	</style>
</head>
<body>
<div class="container">
  <h2><a href = 'login.do'><i class="bi bi-chevron-left"></i></a> Spring MVC Board</h2>
  <div class="panel panel-default">
    <div class="panel-heading">Join</div>
    <div class="panel-body">
    	<form action = "joinInsert.do" method = "post">
    		<table class = "table table-hover table-bordered" style = "width:100%">
    			<tr>
    				<th>ID</th>
    				<td><input required="required" type = "text" name = "id" placeholder = "Enter ID"></td>
    			</tr>
    			<tr>
    				<th>PW</th>
    				<td><input required="required" type = "password" name = "pw" placeholder = "Enter PW"></td>
    			</tr>
    			<tr>
    				<th>Nick</th>
    				<td><input required="required" type = "text" name = "nick" placeholder = "Enter Nick"></td>
    			</tr>
    			<tr>
    				<th>Tel</th>
    				<td><input required="required" type = "tel" name = "tel" placeholder = "Enter Tel"></td>
    			</tr>
    			<tr>
    				<th>Address</th>
    				<td><input required="required" type = "text" name = "address" placeholder = "Enter Address"></td>
    			</tr>
    		</table>
    		<div>
	    		<button type = 'submit' class = 'btn'>Submit</button>
	    		<button type = 'reset' class = 'btn'>Reset</button>
	    	</div>
    	</form>
    </div>
    <div class="panel-body">Big Data 1차</div>
  </div>
</div>
</body>
</html>