<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="style.css">
<meta charset="utf-8" />
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> -->
<title>room</title>
</head>

<body>
<script src="home.js"></script> 
    <!-- <h1>Let's decorate the selected item in the room!</h1> -->
    
    <img src="room.png" />
    <img src="lofmof_3.png"  />
    
    <ul class="example">
    <li>
    <div class="drag-and-drop " >
    <img src=${requestScope.items[0] } />
    </div>
    </li>
    
    <li>
    <div class="drag-and-drop " >
    <img src=${requestScope.items[1] } />
    </div>
    </li>
    
    <li>
    <div class="drag-and-drop " >
    <img src=${requestScope.items[2] } />
    </div>
    </li>
   
</body>
</html>