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

		<!-- Three -->
		<section id="three">
			<h2>Get In Touch</h2>
			<p>개발에 관련되거나,개인적으로 문의드릴 것이 있다면 언제든 메일주세요.</p>
			<div class="row">
				<div class="8u 12u$(small)">
					<form method="post" action="#">
						<div class="row uniform 50%">
							<div class="6u 12u$(xsmall)">
								<input type="text" name="name" id="name" placeholder="Your name" />
							</div>
							<div class="6u$ 12u$(xsmall)">
								<input type="email" name="email" id="email" placeholder="Your email address" />
							</div>
							<div class="12u$">
								<textarea name="message" id="message" placeholder="Message"
									rows="4"></textarea>
							</div>
						</div>
					</form>
					<ul class="actions">
						<li><input type="submit" value="Send Message" /></li>
					</ul>
				</div>
				<div class="4u$ 12u$(small)">
					<ul class="labeled-icons">
						<li>
							<h3 class="icon fa-home">
								<span class="label">Address</span>
							</h3>Republic of Korea Gyeonggi-do Uiwang City Shinan Apartment 2-1203<br/>
						
						</li>
						<li>
							<h3 class="icon fa-mobile">
								<span class="label">Phone</span>
							</h3> 010-9249-8118
						</li>
						<li>
							<h3 class="icon fa-envelope-o">
								<span class="label">Email</span>
							</h3> <a href="#">Limky@sqisoft.com</a>
						</li>
					</ul>
				</div>
			</div>
		</section>


		<!-- Footer -->
		<footer id="footer">
			<div class="inner">
				<ul class="icons">
					<li><a href="#" class="icon fa-twitter"><span
							class="label">Twitter</span></a></li>
					<li><a href="#" class="icon fa-github"><span class="label">Github</span></a></li>
					<li><a href="#" class="icon fa-dribbble"><span
							class="label">Dribbble</span></a></li>
					<li><a href="#" class="icon fa-envelope-o"><span
							class="label">Email</span></a></li>
				</ul>
				<%
					String rcv = (String) session.getAttribute("loginCheck");
					if (rcv == null) {
				%>
				
				
				<ul class="copyright">
					<li>&copy; <a href="#" data-toggle="modal" data-target="#login-modal"> Login</a></li>
					<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
				</ul>
				
				<%
				
					}else{
				
				%>
					<ul class="copyright">
					<li>&copy; <a href="/cms">CMS</a></li>
					<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
				</ul>
				
				
				<% 
					}
				%>
				
			</div>
		</footer>
		
		

		
