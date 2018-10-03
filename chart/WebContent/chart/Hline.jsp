<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta charset="utf-8" />
		<title></title>
		
		<script src="../js/jquery-2.1.1.js" type="text/javascript"></script>
		<script src="../js/highcharts.js" type="text/javascript"></script>
	</head>
	<body>
		<div id="container" style="width: 100%; height: 400px; margin: auto"></div>
		<script>
			//define options
			var options = {
			    chart: {
			        renderTo: 'container',
			        type: 'area'
			    },
			    title: {
			        text: 'Units'
			    },
			    xAxis: {
			        allowDecimals: false
			    },
			    yAxis: {
			        title: {
			            text: 'categories'
			        }
			    },
			    series: []//defalut null
			};
			    var resultStr = "<%=session.getAttribute("listLine")%>"; 
				var resultStr1 = resultStr.replace(/\[/g,'');
				console.log(resultStr1);
				var resultStr2 = resultStr1.replace(/\]/g,'');
				console.log(resultStr2);
				var resultStr3 = resultStr2.replace(" ",'');
				console.log(resultStr3);
				var resultArr = resultStr3.split(",");
				console.log(resultArr);
				var obj1 = new Object();
				var obj2 = new Object();
				obj1.name = "banana";
				obj2.name = "apple";
				var data1 = [];
				var data2 = [];
				for(var i=0;i<resultArr.length;i=i+2){
					data1.push(parseInt(resultArr[i]));
					data2.push(parseInt(resultArr[i+1]));
					obj1.data = data1;
					obj2.data = data2;
			 	}

				console.log(obj1);
				console.log(obj2);
				options.series.push(obj1);
				options.series.push(obj2);
			    // Create the chart
		        var chart = new Highcharts.Chart(options);
		</script>
	</body>
</html>