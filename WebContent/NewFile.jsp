<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div id="myCarousel" class="carousel slide">
	<!-- �ֲ���Carousel��ָ�� -->
	<ol class="carousel-indicators">
		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		<li data-target="#myCarousel" data-slide-to="1"></li>
		<li data-target="#myCarousel" data-slide-to="2"></li>
	</ol>   
	<!-- �ֲ���Carousel����Ŀ -->
	<div class="carousel-inner">
		<div class="item active">
			<img src="/wp-content/uploads/2014/07/slide1.png" alt="First slide">
			<div class="carousel-caption">���� 1</div>
		</div>
		<div class="item">
			<img src="/wp-content/uploads/2014/07/slide2.png" alt="Second slide">
			<div class="carousel-caption">���� 2</div>
		</div>
		<div class="item">
			<img src="/wp-content/uploads/2014/07/slide3.png" alt="Third slide">
			<div class="carousel-caption">���� 3</div>
		</div>
	</div>
	<!-- �ֲ���Carousel������ -->
	<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
	    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
	    <span class="sr-only">Previous</span>
	</a>
	<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
	    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
	    <span class="sr-only">Next</span>
	</a>
</div> 
</body>
</html>