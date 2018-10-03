<%@ page language="java" contentType="text/html;"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html" />
<meta name="author" content="Priscilla Sibei Li" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>charts</title>
</head>
<body>

<div class="btn btn-primary"style="width:100%">
	Charts List
</div>
<div style="text-align: center;">
<div id="demo" class="collapse in" style = "padding-left:10px; display: inline">

	<a href="${pageContext.request.contextPath }/D3Pie" target="right" style = "margin:5px; margin-right: 3vw; ">D3_pie</a>
	<a href="${pageContext.request.contextPath }/D3Bar" target="right" style = "margin:5px; margin-right: 3vw">D3_bar</a>
	<a href="${pageContext.request.contextPath }/D3Line" target="right" style = "margin:5px; margin-right: 3vw">D3_line</a>
	<a href="${pageContext.request.contextPath }/HBar" target="right" style = "margin:5px; margin-right: 3vw">highChart_bar</a>
	<a href="${pageContext.request.contextPath }/HLine" target="right" style = "margin:5px; margin-right: 3vw">highChart_line</a>
	<a href="${pageContext.request.contextPath }/HLine2" target="right" style = "margin:5px; margin-right: 3vw">highChart_line2</a>
</div>
</div>
</body>
</html>