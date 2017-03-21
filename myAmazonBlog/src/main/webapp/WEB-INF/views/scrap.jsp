<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>Limky의 삽질블로그</title>
<meta charset="utf-8" />
<meta name="description" content="실무 개발 전선에서 직접 개발하며 삽질하며 느끼고 얻은 경험과 자산들을 축적해놓은 개발블로그입니다. "/>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!-- 		<script src="/resources/assets/js/ie/html5shiv.js"></script> -->
<link rel="stylesheet" href="/resources/assets/css/main.css" />
<!-- 		<link rel="stylesheet" href="/resources/assets/css/ie8.css" /> -->
</head>
<body id="top">
	<jsp:include page="header.jsp" flush="false" />


	<!-- Main -->
	<div id="main">

		<h1 style="color: #004D40">#${subject}</h1>

<c:forEach var="scrap" items="${scrapList}">
<!-- One -->
<c:url var="addUrl" value="modifyscrap" />
<form method="post" action="${addUrl}" id="form1" runat="server">
		<hr>
		<section id="${scrap.num}" >
	
			<header>
				<h3>${scrap.num}. ${scrap.title}</h3><p>${scrap.date}</p>
			</header>
			<p>${scrap.contents}
			</p>
			
			<%

				String rcv_nav = (String) session.getAttribute("loginCheck");
				if(rcv_nav!=null){
			%>
					<ul class="actions" style="margin-top:50px; padding-left: 740px">
					
					<li>
					<input type="hidden" value="${scrap.num}" name="pk" id="pk"/>
					<input type="submit" value="edit"/></li>
		
					</ul>
					
			<% } %>
			
		</section>
</form>
</c:forEach>

		<jsp:include page="footer.jsp" flush="false" />

	
</body>
</html>