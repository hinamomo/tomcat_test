<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="style.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>お店</title>
</head>
<body>
　　<script src="shop.js"></script> 
	<h1>ショップへようこそ</h1>
	<h2>コインを全てゲットできたね！</h2>
	<h2>お部屋に置きたいグッズを３つ選ぼう！</h2>

	<input type="hidden" value=${requestScope.num }>

	<form method="get" name=form1 action="/tomcat_test/home">
		<input type="text" id="num1" value="1"> 
		<input type="text" id="num2" value="2"> 
		<input type="text" id="num3" value="3"> 
	<input type="submit" value="お部屋へ">
	</form>
	
	<div id="main">
      <ul class="image_list">
        <li>
          <div class="image_box">
            <img class="thumbnail" src="item_1.png" alt="foo" />
            <input class="disabled_checkbox" type="checkbox" checked />
          </div>
        </li>
        <li>
          <div class="image_box">
            <img class="thumbnail" src="item_2.png" alt="foo" />
            <input class="disabled_checkbox" type="checkbox" checked />
          </div>
        </li>
        <li>
          <div class="image_box">
            <img class="thumbnail" src="item_3.png" alt="foo" />
            <input class="disabled_checkbox" type="checkbox" checked />
          </div>
        </li>
        <li>
          <div class="image_box">
            <img class="thumbnail" src="item_4.png" alt="foo" />
            <input class="disabled_checkbox" type="checkbox" checked />
          </div>
        </li>
        <li>
          <div class="image_box">
            <img class="thumbnail" src="item_5.png" alt="foo" />
            <input class="disabled_checkbox" type="checkbox" checked />
          </div>
        </li>
        <li>
          <div class="image_box">
            <img class="thumbnail" src="item_6.png" alt="foo" />
            <input class="disabled_checkbox" type="checkbox" checked />
          </div>
        </li>
        
        
      </ul>
    </div>


	<!-- <div id="area1" class="item_type1">
		<img src="item_1.png">
	</div>

	<div id="area2" class="not-selected">
		<img src="item_2.png">
	</div>

	<div id="area3" class="not-selected">
		<img src="item_3.png">
	</div>

	<div id="area4" class="not-selected">
		<img src="item_4.png">
	</div>

	<div id="area5" class="not-selected">
		<img src="item_5.png">
	</div>

	<div id="area6" class="not-selected">
		<img src="item_6.png">
	</div> -->



</body>
</html>