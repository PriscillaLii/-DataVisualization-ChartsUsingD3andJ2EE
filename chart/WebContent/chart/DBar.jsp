<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta charset="UTF-8">
		<title></title>
        <script type="text/javascript" src="../js/jquery.js"></script>
		<script src="https://d3js.org/d3.v4.min.js"></script>		
		<style type="text/css">
		.area {
		  fill: green;
		  clip-path: url(#clip);
		}
		
		.bar rect {
		  fill: palevioletred;
		}
		
		.bar text {
		  fill: #fff;
		  font: 10px sans-serif;
		}


		.selected {
		  fill: red;
		  stroke: brown;
		}
		</style>
	</head>
	<body style = "text-align:center;">
		<svg width="960" height="500" id="svg2" style="float: left;"></svg>
		<script>
			var data=[];
			var resultStr = "<%=session.getAttribute("listBar")%>"; 
			var resultStr1 = resultStr.replace(/\[/g,'');
			console.log(resultStr1);
			var resultStr2 = resultStr1.replace(/\]/g,'');
			console.log(resultStr2);
			var resultStr3 = resultStr2.replace(" ",'');
			console.log(resultStr3);
			var resultArr = resultStr3.split(",");
			console.log(resultArr);
			for(var i=0;i<resultArr.length;i=i+4){
				 var obj1 = new Object();
				obj1.month = trim(resultArr[i]);
				obj1.apples = trim(resultArr[i+1]);
				obj1.bananas = trim(resultArr[i+2]);
				obj1.cherries = trim(resultArr[i+3]);
				data.push(obj1);
				console.log(obj1);
		 	}
			
			
			console.log(data);
			var series = d3.stack()
		    .keys(["apples", "bananas", "cherries"])
		    .offset(d3.stackOffsetDiverging)
		    (data);
			console.log(series);
		var svg2 = d3.select("#svg2"),
		    margin2 = {top: 20, right: 30, bottom: 30, left: 60},
		    width2 = +svg2.attr("width"),
		    height2 = +svg2.attr("height");

		var x = d3.scaleBand()
		    .domain(data.map(function(d) { return d.month; }))
		    .rangeRound([margin2.left, width2 - margin2.right])
		    .padding(0.1);

		var y = d3.scaleLinear()
		    .domain([d3.min(series, stackMin), d3.max(series, stackMax)])
		    .rangeRound([height2 - margin2.bottom, margin2.top]);

		var z = d3.scaleOrdinal(d3.schemeCategory10);

		svg2.append("g")
		.selectAll("g")
		.data(series)
		.enter().append("g")
		    .attr("fill", function(d) { return z(d.key); })
		.selectAll("rect")
		.data(function(d) { return d; })
		.enter().append("rect")
		    .attr("width", x.bandwidth)
		    .attr("x", function(d) { return x(d.data.month); })
		    .attr("y", function(d) { return y(d[1]); })
		    .attr("height", function(d) { return y(d[0]) - y(d[1]); })

		svg2.append("g")
		    .attr("transform", "translate(0," + y(0) + ")")
		    .call(d3.axisBottom(x));

		svg2.append("g")
		    .attr("transform", "translate(" + margin2.left + ",0)")
		    .call(d3.axisLeft(y));


		function stackMin(serie) {
		return d3.min(serie, function(d) { return d[0]; });
		}

		function stackMax(serie) {
		return d3.max(serie, function(d) { return d[1]; });
		}
		
		function trim(str){ //delete right and left Space
		　　     return str.replace(/(^\s*)|(\s*$)/g, "");
		}
		</script>
	</body>
</html>