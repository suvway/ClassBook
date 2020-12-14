<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="function" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/web/css/bootstrap.min.css" rel="stylesheet">
<link href="/web/css/kfonts2.css" rel="stylesheet">
<style>
body {
	padding-top: 20px;
}
</style>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="/web/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<!-- highchart link -->
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/series-label.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>
<script src="https://code.highcharts.com/modules/accessibility.js"></script>
<style type="text/css">
.highcharts-figure, .highcharts-data-table table {
    min-width: 310px; 
    max-width: 800px;
    margin: 1em auto;
}

#container {
    height: 420px;
}

.highcharts-data-table table {
	font-family: Verdana, sans-serif;
	border-collapse: collapse;
	border: 1px solid #EBEBEB;
	margin: 10px auto;
	text-align: center;
	width: 100%;
	max-width: 500px;
}
.highcharts-data-table caption {
    padding: 1em 0;
    font-size: 1.2em;
    color: #555;
}
.highcharts-data-table th {
	font-weight: 600;
    padding: 0.5em;
}
.highcharts-data-table td, .highcharts-data-table th, .highcharts-data-table caption {
    padding: 0.5em;
}
.highcharts-data-table thead tr, .highcharts-data-table tr:nth-child(even) {
    background: #f8f8f8;
}
.highcharts-data-table tr:hover {
    background: #f1f7ff;
}

</style>
<script type="text/javascript">
function ajaxDataProcess(url,dataType) {
	$.ajax({
		url:url,
		dataType:dataType,
		type:'GET',
		success:function(v){
			eval(v);
		},
		error:function(){
			alert('error');
		}
	});
}

$(function(){
   $("button").click(function () {
	if(this.id=='heightChart1'){
		ajaxDataProcess('chartStart.do','text');
		}
	});
});
</script>
</head>

<body>
      <button type="button" class="btn btn-default" id="heightChart1">Height Chart </button>

      <button type="button" class="btn btn-primary" id="googleChart1">Google Chart</button>
       
      <button type="button" class="btn btn-success">긍정적 의미의 버튼</button>
       
      <button type="button" class="btn btn-info">정보제공 버튼</button>
       
      <button type="button" class="btn btn-warning">주의를 알리는 버튼 </button>
       
      <button type="button" class="btn btn-danger">위험을 나타내는 버튼</button>
       
      <button type="button" class="btn btn-link">단순 링크로 처리하는 버튼</button>
</body>

<figure class="highcharts-figure">
    <div id="container"></div>
    <p class="highcharts-description">
        Chart demonstrating a percentage-stacked area chart, a variation of the 
        stacked area chart where each data series is visualized as a running
        percentage of the total.
    </p>
</figure>
</html>