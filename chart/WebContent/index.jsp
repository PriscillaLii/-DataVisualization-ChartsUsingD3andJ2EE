<%@ page language="java" contentType="text/html;"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html" />
<meta name="author" content="Priscilla Sibei Li" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>Final</title>
</head>
<frameset rows="80,*" cols="*" frameborder="no" border="0" framespacing="0">
	<frame src="index/top.jsp" name="top" scrolling="no" noresize="noresize" id="topFrame" >
	<frameset rows="80,*" frameborder="yes" border="2px" framespacing="0">
		<frame src="index/list.jsp" scrolling="no" noresize="noresize">
		<frame src="index/chartArea.jsp" name="right" scrolling="auto" style="height:80px;width:100%;">
	</frameset>
</frameset>
</html>