<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
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
	<jsp:include page="header.jsp" flush="false" />


	<!-- Main -->
	<div id="main">

		<h1 style="color: #004D40">#스크랩하기</h1>
				<div class="row">
				<div style="width: 1100px">
				
				<c:url var="addUrl" value="insertscrap" />
					<form method="post" action="${addUrl}" id="form1" runat="server">
						<div class="row uniform 50%">
							<div class="6u 12u$(xsmall)">
								<input type="text" name="title" id="title" placeholder="title" />
							</div>
							<div class="6u$ 12u$(xsmall)">
								<input type="text" name="subject" id="subject" placeholder="subject" />
							</div>
							<div class="12u$">
								<textarea name="contents" id="contents" placeholder="contents"
									rows="4"></textarea>
							</div>
						</div>
					
					<ul class="actions" style="margin-top: 30px">
						<li><input type="submit" value="Send Scrap"/></li>
					</ul>
					</form>
					
				</div>
			</div>

		
</body>
</html>