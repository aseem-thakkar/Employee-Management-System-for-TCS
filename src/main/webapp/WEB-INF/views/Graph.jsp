<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html> 
	<head> 
		<title>My first chart using FusionCharts Suite XT</title> 
		<script type="text/javascript" src="http://static.fusioncharts.com/code/latest/fusioncharts.js"></script> 
		<script type="text/javascript" src="http://static.fusioncharts.com/code/latest/themes/fusioncharts.theme.fint.js?cacheBust=56"></script> 
		
		<script type="text/javascript"> 
			FusionCharts.ready(function(){
				var fusioncharts = new FusionCharts({ 
					type: 'column2d', 
					renderAt: 'chart-container', 
					id: 'myChart', 
					width: '500', 
					height: '300', 
					dataFormat: 'json', 
					dataSource: {
						"chart": { 
							"caption": "concentration of Pollutants", 
							"subcaption": "${airQuality.regionName}", 
							"xaxisname": "pollutant", 
							"yaxisname": "Concentration", 
							"numberprefix": "", 
							"theme": "fint" 
						}, 
						
						"data": 
							[{ "label": "Q1", "value": "${airQuality.pm10}" }, 
							{ "label": "Q2", "value": "${airQuality.pm2dot5}" }, 
							{ "label": "Q3", "value": "${airQuality.co}" }, 
							{ "label": "Q4", "value": "${airQuality.o3}" }]
					} 
				} ); 
				
				fusioncharts.render(); 
				}); 
			</script> 
		</head> 
		<body> 
			<div id="chart-container">FusionCharts XT will load here!</div> 
			
		</body> 
	</html>
