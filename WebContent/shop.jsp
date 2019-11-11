<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="style.css">
 <meta charset="utf-8" />
<title>お店</title>
</head>
<body>
　　<script src="shop.js"></script> 
	<!-- <h1>ショップへようこそ</h1>
	<h2>コインを全てゲットできたね！</h2>
	<h2>お部屋に置きたいグッズを３つ選ぼう！</h2> -->
	
　
	<input type="hidden" value=${requestScope.num }>
	
	<div style="text-align:right;">
	<form method="get" name=form1 action="/tomcat_test/home">
		<input type="hidden" name="num1" id="num1" value="item_1.png"> 
		<input type="hidden" name="num2" id="num2" value=""> 
		<input type="hidden" name="num3" id="num3" value=""> 
	<input id="submit_button" type="submit" value="Go room">
	</form>
	</div>
	
	<div style="float:left;">
    <img src="lofmof_2.png"  />
    </div>
	
	<div id="main" class="layerImage" style="float:left;">
	<div class="layerTransparent" style="float:left;">
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
    </div>
    
</body>
</html>