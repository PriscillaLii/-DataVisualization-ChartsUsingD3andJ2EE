<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta charset="UTF-8">
		<title></title>
		<style>
			.axis text {
			  font: 10px sans-serif;
			}
			.axis line,
			.axis path {
			  fill: none;
			  stroke: #000;
			  shape-rendering: crispEdges;
			}
			</style>
	</head>
	<body style = "text-align:center;">
		<script src="//d3js.org/d3.v4.min.js"></script>
		<script type="text/javascript" src="../js/jquery.js"></script>
		<script>
		var dispatch = d3.dispatch("load", "statechange");
		//define var groups
		var groups = [
		  "data1",
		  "data2",
		  "data3"
		];
		
		d3.csv("", type, function() {//get data from file
		  var stateById = d3.map();
		  var states = [];
		  
		   var resultStr = "<%=session.getAttribute("listPie")%>"; 
			var resultStr1 = resultStr.replace(/\[/g,'');
			console.log(resultStr1);
			var resultStr2 = resultStr1.replace(/\]/g,'');
			console.log(resultStr2);
			var resultStr3 = resultStr2.replace(" ",'');
			console.log(resultStr3);
			var resultArr = resultStr3.split(",");
			console.log(resultArr);
			var j = 1;
			for(var i=0;i<resultArr.length;i=i+3){
				 var obj1 = new Object();
				var arrData = [];
				obj1.id = j;
				obj1.data1 = resultArr[i];
				obj1.data2 = resultArr[i+1];
				obj1.data3 = resultArr[i+2];
				obj1.total = parseInt(resultArr[i])+parseInt(resultArr[i+1])+parseInt(resultArr[i+2]);
				states.push(obj1);
				j++;
				console.log(obj1);
		 	}
			console.log(states);
		  
		  states.forEach(function(d) { 
			  stateById.set(d.id, d); 
			  console.log(d);
		  });
		  dispatch.call("load", this, stateById);
		  dispatch.call("statechange", this, stateById.get("1"));//default display data
		});
		
		dispatch.on("load.menu", function(stateById) {
		  var select = d3.select("body")
		    .append("div")
		    .append("select")
		      .on("change", function() { dispatch.call("statechange", this, stateById.get(this.value)); });
		
		  
		  select.selectAll("option")
		      .data(stateById.values())
		    .enter().append("option")
		      .attr("value", function(d) { return d.id; })
		      .text(function(d) { return d.id; });
		
		  dispatch.on("statechange.menu", function(state) {
		    select.property("value", state.id);
		  });
		});
		
		
		dispatch.on("load.bar", function(stateById) {// A bar chart to show total value;
		  var margin = {top: 20, right: 20, bottom: 30, left: 40},
		      width = 80 - margin.left - margin.right,
		      height = 460 - margin.top - margin.bottom;
		
		  var y = d3.scaleLinear()//define x
		      .domain([0, d3.max(stateById.values(), function(d) { return d.total; })])
		      .rangeRound([height, 0])
		      .nice();
		
		  var yAxis = d3.axisLeft(y)//add yAxis
		      .tickFormat(d3.format(".2s"));
		
		  var svg = d3.select("body").append("svg")//append a svg and set its attribute
		      .attr("width", width + margin.left + margin.right)
		      .attr("height", height + margin.top + margin.bottom)
		    .append("g")
		      .attr("transform", "translate(" + margin.left + "," + margin.top + ")");
		
		  svg.append("g")//add g element
		      .attr("class", "y axis")
		      .call(yAxis);
		
		  var rect = svg.append("rect")
		      .attr("x", 4)
		      .attr("width", width - 4)
		      .attr("y", height)
		      .attr("height", 0)
		      .style("fill", "#aaa");
		
		  dispatch.on("statechange.bar", function(d) {
		    rect.transition()
		        .attr("y", y(d.total))
		        .attr("height", y(0) - y(d.total));
		  });
		});
		
		dispatch.on("load.pie", function(stateById) {
		  var width = 880,
		      height = 460,
		      radius = Math.min(width, height) / 2;
		
		  var color = d3.scaleOrdinal()//color groups
		      .domain(groups)
		      .range(["#98abc5", "#8a89a6", "#7b6888"]);
		
		  var arc = d3.arc()
		      .outerRadius(radius - 10)
		      .innerRadius(radius - 70);
		
		  var pie = d3.pie()
		      .sort(null);
		
		  var svg = d3.select("body").append("svg")//append a svg
		      .attr("width", width)
		      .attr("height", height)
		    .append("g")
		      .attr("transform", "translate(" + width / 2 + "," + height / 2 + ")");
		
		  var path = svg.selectAll("path")
		      .data(groups)
		    .enter().append("path")
		      .style("fill", color)
		      .each(function() { this._current = {startAngle: 0, endAngle: 0}; });
		
		  dispatch.on("statechange.pie", function(d) {
		    path.data(pie.value(function(g) { return d[g]; })(groups)).transition()
		        .attrTween("d", function(d) {
		          var interpolate = d3.interpolate(this._current, d);
		          this._current = interpolate(0);
		          return function(t) {
		            return arc(interpolate(t));
		          };
		        });
		  });
		});
		function type(d) {
		  d.total = d3.sum(groups, function(k) { return d[k] = +d[k]; });
		  return d;
		}
		</script>
	</body>
</html>