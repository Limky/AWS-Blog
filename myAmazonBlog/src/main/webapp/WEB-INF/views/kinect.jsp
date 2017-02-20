<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>Limky</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!-- 		<script src="/resources/assets/js/ie/html5shiv.js"></script> -->
<link rel="stylesheet" href="/resources/assets/css/main.css" />
<!-- 		<link rel="stylesheet" href="/resources/assets/css/ie8.css" /> -->
</head>
<body id="top">
	<jsp:include page="navi.jsp" flush="false" />


	<!-- Main -->
	<div id="main">

		<h1 style="color: #004D40">#키넥트 & C#</h1>

<c:forEach var="kinect" items="${mKinect}">
<!-- One -->


		<section id="${kinect.num}" >
	
			<header>
				<h3>${kinect.num}. ${kinect.title}</h3><p>${kinect.date}</p>
			</header>
			<p>${kinect.contents}
			</p>
			
			<%

				String rcv_nav = (String) session.getAttribute("loginCheck");
				if(rcv_nav!=null){
			%>
					<ul class="actions" style="margin-top:50px; padding-left: 740px">
						<li><input type="submit" value="Edit"/></li>
					</ul>
					
			<% } %>
		</section>
		
</c:forEach>

		<jsp:include page="footer.jsp" flush="false" />

	
</body>
</html>