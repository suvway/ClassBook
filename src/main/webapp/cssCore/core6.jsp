<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="function"  uri="http://java.sun.com/jsp/jstl/functions"%>   
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
<title>Insert title here</title>
<link href="/web/css/bootstrap.min.css" rel="stylesheet">
<link href="/web/css/kfonts2.css" rel="stylesheet">
<style>
  *{
    margin: 0;
    padding: 0;
  }
  div#wrap{
   display: flex;
   flex-flow: row wrap;
   width: 90%;
   margin: 0 auto;
  
  }
  .header{
    display: flex;
    order: 1;
    justify-content: flex-end;
    position: relative;
    width: 100%;    
  }
  .header h1{
    position: absolute;
    top: 0;
    left: 0;
    width: 12.5%;
    height: 142px;
    background: #ff6b57;
    
  }
  .header nav{
   
    width: 87.5%;
    min-height:80px;    
    background: #ff6b57;
    
  }
  .slider_section{
     order: 2;
     width: 50%;
     background:pink;
    
  }
  .gallery_section{
    order: 3;
    width: 27.33333333333333%;
    height: 440px;
    background: red;
  }
  .rankup_section{
    order: 4;
    width: 22.91666666666666666%;  
    background:blue;
  }
  .latest_post_section{
    order: 5;
    width: 30%;  
    background:black;
  }
  .popular_post_section{
    order: 6;
    width: 30%;  
    background:oranle;
  }
  .banner_section{
    display:flex;
    order: 7;
    flex-flow:column nowrap;
    width: 22.91666666666%;  
    
  }
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="/web/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(function() {   
});
</script>
</head>
<body>
  <div id="wrap">
        <header class="header">
        <h1></h1>
        <nav></nav>
        </header>
        <section class="slider_section" ></section>
        <section class="gallery_section" ></section>
        <section class="rankup_section"></section>
        <section class="latest_post_section" ></section>
        <section class="popular_post_section" ></section>
        <section class="banner_section" >
          <div class="banner_box_01"></div>
          <div class="banner_box_02"></div>
        </section>
        <section class="social_section" ></section>
        <footer class="footer"></footer> 
        
  </div>
   
</body>
</html>


















