<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/p5.js/0.7.3/p5.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/p5.js/0.7.3/addons/p5.dom.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/p5.js/0.7.3/addons/p5.sound.min.js"></script>
  <script src="p5.play.js"></script>
  <link rel="stylesheet" type="text/css" href="style.css">
  <meta charset="utf-8" />

</head>

<body>  
<script src="myscript.js"></script> 

<div style="text-align:center;">
        <h1>HelloWorld</h1>
        <p>5はhiddenで</p>
        <form method="get" name=form1 action="/tomcat_test/hello">
            <input type="text" name="num1" value="5"> 
            <input type="submit" value="ショップへ">
        </form>
</div>

</body>
</html>