<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="style.css">
<title>お店</title>
</head>
<body>
	<h1>ショップへようこそ</h1>
	<h2>コインを全てゲットできたね！</h2>
	<h2>お部屋に置きたいグッズを３つ選ぼう！</h2>

	<input type="hidden" value=${requestScope.num }>

	<form method="get" name=form1 action="/tomcat_test/home">
		<input type="text" name="num1" value="1"> 
		<input type="text" name="num2" value="2"> 
		<input type="text" name="num3" value="3"> 
	<input type="submit" value="お部屋へ">
	</form>

	<div class="item_type1">
		<img src="item_1.png">
	</div>

	<div class="item_type1">
		<img src="item_2.png">
	</div>

	<div class="item_type1">
		<img src="item_3.png">
	</div>

	<div class="item_type1">
		<img src="item_4.png">
	</div>

	<div class="item_type1">
		<img src="item_5.png">
	</div>

	<div class="item_type1">
		<img src="item_6.png">
	</div>



</body>
</html>