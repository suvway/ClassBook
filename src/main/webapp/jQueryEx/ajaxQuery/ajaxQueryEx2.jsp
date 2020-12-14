<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="function" uri="http://java.sun.com/jsp/jstl/functions" %>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>jQuery UI Accordion - Default functionality</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $(function() {
    $( "#accordion" ).accordion();
     $("h3").click(function () {
		//console.log(this.id);
		var ts=this;
		$.ajax({
			url:'/web/jQueryEx/ajaxData/dataValue5.jsp?id='+ts.id,
			dataType:'html',
			type:'POST',
			data:{id:ts.id,password:'1234'},
			success:function(didi){
				$("p#"+ts.id).html("<font color=gray>"+didi+"</font>").fadeOut(1000).fadeIn(1000).slideUp(1000).slideDown(1000);
			}
		});
	}); 
  });
  </script>
</head>
<body>
 
<div id="accordion">
  <h3 id="s1">Section 1</h3>
  <div>
    <p id="s1">
  
    </p>
  </div>
  <h3 id="s2">Section 2</h3>
  <div>
    <p id="s2">

    </p>
  </div>
  <h3 id="s3">Section 3</h3>
  <div>
    <p id="s3">

    </p>
    <ul>
      <li>List item one</li>
      <li>List item two</li>
      <li>List item three</li>
    </ul>
  </div>
  <h3 id="s4">Section 4</h3>
  <div>
    <p id="s4">
    Cras dictum. Pellentesque habitant morbi tristique senectus et netus
    et malesuada fames ac turpis egestas. Vestibulum ante ipsum primis in
    faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lacinia
    mauris vel est.
    </p>
    <p>
    Suspendisse eu nisl. Nullam ut libero. Integer dignissim consequat lectus.
    Class aptent taciti sociosqu ad litora torquent per conubia nostra, per
    inceptos himenaeos.
    </p>
  </div>
</div>
 
 
</body>
</html>