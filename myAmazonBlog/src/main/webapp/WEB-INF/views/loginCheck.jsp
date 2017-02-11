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

	<%
		String rcv = (String) session.getAttribute("loginCheck");
		if (rcv == null) {
	%>
	<jsp:include page="home.jsp" flush="false" />
	<%
		} else {
	%>

	<jsp:include page="android.jsp" flush="false" />

	<%
		}
	%>

</body>
</html>