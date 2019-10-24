<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="style.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
<title>答え</title>
</head>
<body>
<script src="home.js"></script> 
<h1>answer</h1>
    <h1>選んだアイテムをお部屋に飾ってみよう！</h1>
    ${requestScope.num }
    <img src="room.png" />
    <div class="drag-and-drop" id="red-box">
    <img src="item_1.png" />
    </div>
<div class="drag-and-drop" id="blue-box">
<img src="item_2.png" />
</div>
<div class="drag-and-drop" id="yellow-box">
<img src="item_3.png" />
</div>

</body>
</html>