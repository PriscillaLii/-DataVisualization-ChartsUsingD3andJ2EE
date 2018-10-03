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
			        defaultSeriesType: 'column'
			    },
			    title: {
			        text: 'Fruit Consumption'
			    },
			    xAxis: {
			        categories: []
			    },
			    yAxis: {
			        title: {
			            text: 'Units'
			        }
			    },
			    series: []
			};
			    var resultStr = "<%=session.getAttribute("listBar")%>"; 
				var resultStr1 = resultStr.replace(/\[/g,'');
				console.log(resultStr1);
				var resultStr2 = resultStr1.replace(/\]/g,'');
				console.log(resultStr2);
				var resultStr3 = resultStr2.replace(" ",'');
				console.log(resultStr3);
				var resultArr = resultStr3.split(",");
				console.log(resultArr);
				for(var i=0;i<resultArr.length;i=i+3){
					var obj1 = new Object();
					var data1 = [];
					obj1.name = resultArr[i];
					data1.push(parseInt(resultArr[i+1]));
					data1.push(parseInt(resultArr[i+2]));
					obj1.data = data1;
					console.log(obj1);
					options.series.push(obj1);
			 	}
			    
			    
			    // Create the chart
			    var chart = new Highcharts.Chart(options);
		</script>
	</body>
</html>