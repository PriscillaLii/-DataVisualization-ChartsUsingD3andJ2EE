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
		<div id="container" style="max-width:800px;height:400px; margin: auto;"></div>
		<script>
			//define options
			var options = {
				chart: {
					renderTo: 'container',
	                type: 'line'
		        },
			    title: {
			        text: '1~12 Month sales'
			    },
			    yAxis: {
			        title: {
			            text: 'counts'
			        }
			    },
			    legend: {
			        layout: 'vertical',
			        align: 'right',
			        verticalAlign: 'middle'
			    },
			    plotOptions: {
			        series: {
			            label: {
			                connectorAllowed: false
			            },
			            pointStart: 1//start years
			        }
			    },
			    series: [],
			    responsive: {
			        rules: [{
			            condition: {
			                maxWidth: 500
			            },
			            chartOptions: {
			                legend: {
			                    layout: 'horizontal',
			                    align: 'center',
			                    verticalAlign: 'bottom'
			                }
			            }
			        }]
			    }
			};

		            var obj1 = new Object();
		            var obj2 = new Object();
		            var arrData1 = [];
					var arrData2 = [];
				    var resultStr = "<%=session.getAttribute("listLine2")%>"; 
				    var resultStr1 = resultStr.replace(/\[/g,'');
					console.log(resultStr1);
					var resultStr2 = resultStr1.replace(/\]/g,'');
					console.log(resultStr2);
					var resultStr3 = resultStr2.replace(" ",'');
					console.log(resultStr3);
					var resultArr = resultStr3.split(",");
					console.log(resultArr);
					for(var i=0;i<resultArr.length;i=i+2){
						arrData1.push(parseInt(resultArr[i]));
						arrData2.push(parseInt(resultArr[i+1]));
				 	}
					
					obj1.data = arrData1;
					obj1.name = "value1";
					obj2.data = arrData2;
					obj2.name = "value2";
					console.log(obj1);
					console.log(obj2);
		            //push series into options.series
			    	options.series.push(obj1);
			    	options.series.push(obj2);
			    
			     //Create the chart
		        var chart = new Highcharts.Chart(options);
		</script>
	</body>
</html>