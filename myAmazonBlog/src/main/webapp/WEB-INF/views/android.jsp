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
	<jsp:include page="navi.jsp" flush="false" />


	<!-- Main -->
	<div id="main">

		<h1 style="color: #004D40">#안드로이드</h1>

<c:forEach var="android" items="${mAndroid}">
<!-- One -->
		<section id="one">
			<header class="major">
				<h3>${android.title}</h3>
			</header>
			<p>${android.contents}
			</p>
			<img src="/resources/images/android/android_logo.jpg" alt=""
				style="margin: 0 auto;" />

		</section>
</c:forEach>

	<!-- 
		<section id="one">
			<header class="major">
				<h3>0. 안드로이드를 시작하며..</h3>
			</header>
			<p>
				필자는 웹에 대한 개발과 공부를 먼저 시작했고, 안드로이드에 대해 개인적으로 늦게 관심을 가졌다고 생각한다. <br>따라서
				안드로이드에 관한 깊은 내공이나, 전문적인 지식이 부족할 수 있다. 하지만 나름대로 안드로이드 실무 개발에 투입되면서 혼자
				느끼고 삽질 했던 수 많은 시간과 사수로부터 배웠던 소중한 지식을 그냥 흘려두기 아까워 이렇게 스크랩하고자 한다. <br>
				스크랩의 전체적인 내용은 안드로이드 개발을 처음 시작하는 초심자를 위한 수준의 글일 것이다.( 나도 초심자이기
				때문에...^^ ) <br>아무튼 이 글로 인해 초심자들이 안드로이드가 더 재미있어지고, 더 즐겁게 개발 할 수
				있으면 좋겠다.
			</p>
			<img src="/resources/images/android/android_logo.jpg" alt=""
				style="margin: 0 auto;" />

		</section> -->


		<!-- One -->
		<section id="one">
			<header class="major">
				<h3>1. 나만의 AAR/JAR 만들기</h3>
			</header>
			<p>
				개발을 하다보면 누군가 만들어 놓은 라이브러리를 사용하는 것이 아닌 내가 직접 라이브러리를 만들어 사용할 일이 생긴다.<br />
				따라서 안드로이드 스튜디오에서 내가 만든 프로젝트를 AAR로 만드는 방법을 소개한다.<br /> <a
					href="http://flowarc.tistory.com/entry/Android-Studio%EC%97%90%EC%84%9C-%EB%82%98%EB%A7%8C%EC%9D%98-Library-%EB%A7%8C%EB%93%A4%EC%96%B4%EB%B3%B4%EA%B8%B0">나만의
					AAR 만들기 링크</a>
			</p>
			<br />
			<h3>1-1. AAR파일 import 하기</h3>
			<p>
				이제 내가 만들었던 aar이든 누군가 만들었던 aar이든 aar 파일을 안드로이드 스튜디오에 import 하는 방법을
				알아보자. <br />첫번째로 File -> Project Structure 에서 + 버튼을 누르면 ui상으로
				import할 종류를 물어본다. aar/jar Package파일을 임포트하기가 보일것이다.<br />
			</p>
			<img style="margin-bottom: 20px" alt=""
				src="/resources/images/android/aar_import_1.JPG"> <img
				style="margin-bottom: 20px" width="900px" alt=""
				src="/resources/images/android/aar_import_2.JPG"> <img
				style="margin-bottom: 20px" width="900px" alt=""
				src="/resources/images/android/aar_import_3.JPG">
			<p>클릭하여 aar파일의 위치 경로를 잡아주고 aar파일명을 지어주자. 완료를 한다음 Project
				Structure 창을 한번 껏다 키면, app프로젝트 아래목록에 내가 지어준 aar파일명이 보일것이다. 그럼 지금까지 잘
				된 것이다.</p>
			<img style="margin-bottom: 20px" width="900px" alt=""
				src="/resources/images/android/aar_import_4.JPG">
			<p>이제 자신의 app프로젝트에서 dependency 탭으로가서 + 버튼을 눌러 module을 import 시키면
				모든 작업은 끝난다.</p>
			<img style="margin-bottom: 20px" width="900px" alt=""
				src="/resources/images/android/aar_import_5.JPG">

			<p>모든 작업은 끝났다. 이제 aar파일에있는 클래스나,인스턴스 등을 마음껏 사용하면 된다!!
		</section>


		<!-- One -->
		<section id="one">
			<header class="major">
				<h3>1-3. 하나의 안드로이드 프로젝트에 또 다른 안드로이드 프로젝트 import 시키기.(multi
					import project)</h3>
			</header>
			<p>
				하나의 안드로이드 프로젝트에서 또 다른 안드로이드 프로젝트를 동시작업 할 경우가 생긴다. 그래야하는 이유는 여러가지
				이유가있는데. 예를들어 A라는 프로젝트에서 B라는 프로젝트를 참고해서 하나의 어플리케이션이 돌아가는 경우, 기본적으로
				import 시킨 AAR파일은 수정할 수 없는 불편함을 극복하기 위해서이다. 여기서 2번째 경우를 덧붙이자면, AAR파일을
				추출해서 내보낸 프로젝트가 만약 자신이 소유하고 있다면, 그 AAR 파일을 참고하는 하나의 안드로이드 프로젝트에
				AAR파일이 아닌 AAR을 추출해내는 프로젝트를 직접 multi로 import 시켜 AAR파일을 직접 import 한
				효과를 내면서 동시에 직접 aar프로젝트를 수정할 수 있는 구조가 되기때문에 aar을 한번 배포하고 aar을 참고하는
				프로젝트에서 테스팅하고 문제가 발생해 또 aar을 수정해서 배포하고 또 임포트시켜서 테스트 하고 이런 멍청하고도 반복적인
				일을 하지않고 aar을 참고하는 프로젝트에서 aar에 문제가 발생한 경우 바로 자신의 프로젝트내에서 aar 소스를 수정하여
				즉각 반영을 통해 작업능률과 속도를 향상시킬 수 있다. 이렇게 작업을 다 하고 난 다음 최종적으로 aar을 한번만 뽑아내면
				되는 것이다. 말이 좀 길었는데 이부분은 잘 알아두면 좋을것이다.<br />( 현업에 있다보면 하나의 안드로이드 프로젝트도
				여러회사가 공동작업을 해야하는 사업이 존재하는데, 그럴 경우 A회사가 B회사에게 일부의 기능을 구현시킨
				lib,jar,aar파일을 요구하기 aar프로젝트를 multi project로 임포트 시켜 직접 수정반영하는 구조로
				작업하는 것은 굉장히 중요하다.)
			</p>
			<p>이번 파트에 서론이 길었는데, 이제 multi 임포트를 시키는 방법을 알아보자 너무 간단해서 놀랄것이다...</p>
			<p>
				<br />먼저 AAR프로젝트는 당연히 AAR를 추출할 수 있는 AAR 포멧으로 프로젝트가 되어있어야 하고,기본
				프로젝트(aar 프로젝트를 넣을 프로젝트)에 setting.gradle에 가서 아래와 같이 aar 프로젝트의 경로를 명시해
				준다. 여기서 AAR파을 경로,AAR파일명을 매핑할 매핑명 등이 있고, setting.gradle을 수정하면 위에 Sync
				Now가 뜰텐데 수정한 수 반드시 Sync를 맞춰주자.
			</p>

			<img style="margin-bottom: 20px" alt=""
				src="/resources/images/android/multi_import_1.JPG">

			<p>이제 기본프로젝트에 build.gradle에 다음과 같이 compile project를 잡아주면 끝...(여기서
				많은 어려움이 있었다면..AAR프로젝트의 앱 include도 별다른 작업을 하지 않았다면, 'app'으로 되어있을 텐데
				이부분을 먼저 수정을 한 후 이 작업을 하길 바란다. 왜냐면 같은 이름의 app이 2개라면 2개의 프로젝트가 구분이되지않아
				안드로이드 스튜디오에서 혼란을 가져다 주기때문이다.)</p>
			<img style="margin-bottom: 20px" alt=""
				src="/resources/images/android/multi_import_2.JPG">
			<p>작업을 모두 성공적으로 완료했다면, AAR 프로젝트가 Link 되어서 프로젝트 구조목록에 생겼을 것이다....</p>
			<img style="margin-bottom: 20px" alt=""
				src="/resources/images/android/multi_import_3.JPG">
		</section>




		<!-- One -->
		<section id="one">
			<header class="major">
				<h3>4. 안드로이드 기본 프로젝트 구조</h3>
			</header>
			<img src="/resources/images/android/android_project_structure.JPG"
				alt="" style="margin: 0 auto;" />

			<h5 style="margin-top: 20px">1. AndroidManifest.xml</h5>
			<ul>
				<li><p>보통 매니페스트라고 부르며, 앱의 구성요소나 권한등의 정보를 설정하고 정의함!</p></li>
				<li><p>앱에 대한 정보를 담고있음. 여기서 특히 앱 권한을 부여한다는 점을 꼭 기억</p></li>
			</ul>

			<h5>2. /java</h5>
			<ul>
				<li><p>자바 소스 파일이 들어있는 폴더로 [/app/src/main]폴더 안에 있음</p></li>
				<li><p>표준 자바와 마찬가지로 패키지명과 동일한 하위 폴더들이 만들어짐</p></li>
				<li><p>쉽게 생각해서 앱 UI를 동적으로 처리,컨트롤하고 앱의 백단 뒤에서 전반적인 처리를 함</p></li>
			</ul>

			<h5>3. /res</h5>
			<ul>
				<li><p>리소스 파일이 들어있는 폴더로 [app/src/main] 폴더 안에 있음</p></li>
				<li><p>XML 레이아웃,그림 파일,문자열을 정의한 XML 파일 등이 들어있는데 각 파일의 유형에 따른
						하위 폴더들이 만들어져 있음</p></li>
				<li><p>(레이아웃 파일[/res/layout], 그림 파일[/res/drawable], 문자열을
						정의한 XML 파일[/res/values])</p></li>
			</ul>

			<h5>4. /gradle</h5>
			<ul>
				<li><p>개발환경이 자동으로 만들어 내는 소스 파일이 들어가는 폴더</p></li>
				<li><p>*안드로이드 각종 라이브러리를 추가할 수 있음</p></li>
				<li><p>*안드로이드 빌드,타켓 버전 등을 설정할 수 있음</p></li>
			</ul>



		</section>




		<!-- One -->
		<section id="one">
			<header class="major">
				<h3>5. 화면 가로모드 세로모드 설정</h3>
			</header>

			<h4>1. AndroidManifest.xml의 activity에 다음 항목을 추가</h4>
			<p>android:configChanges="orientation|screenSize"</p>
			<p>만약 screensize가 설정되어있지 않는다면, 앱이 회전될 때마다 activity의 Oncreate함수가
				불려지면서 다시 액티비티를 호출한다.</p>
			<br>
			<h4>2. onConfigurationChanged 오버라이드를 통해 가로,세로일 때 처리</h4>
			<p>
				@Override public void onConfigurationChanged(Configuration
				newConfig) { super.onConfigurationChanged(newConfig);<br> if
				(newConfig.orientation == Configuration.ORIENTATION_PORTRAIT) // 세로
				전환시<br> { // 배경 화면 교체 처리 }<br> else if
				(newConfig.orientation == Configuration.ORIENTATION_LANDSCAPE)// 가로
				전환시<br> { // 배경 화면 교체 처리 } }
			</p>



			<br>
			<h4>3. Manifest.xml에서 화면을 고정하는 방법</h4>
			<p>android:screenOrientation="portrait" //세로모드</p>
			<p>android:screenOrientation="landscape" //가로모드</p>

			<br>
			<h4>4. Java 영역에서 화면을 고정 및 고정 센서 해체</h4>
			<p>setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_PORTRAIT);
				//세로모드 고정</p>
			<p>setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_SENSOR);
				//화면 센서 활성화</p>
		</section>






		<!-- One -->
		<section id="one">
			<header class="major">
				<h3>6. 앱 다국어 설정하는 방법</h3>
			</header>

			<p>안드로이드는 기본적으로 res디렉토리파일아래 value아래 string.xml 파일을 지니고있다. 이 string.xml파일에서 앱내에서 보여지는 모든 string들을 res파일 아래 string.xml파일에 
			한데 묶어서 관리하는 컨셉을 잡아야 다국어 앱을 만들 수 있다. 즉 string을 비지니스 로직에 직접 하드코딩하지않고 string을 따로 빼서 res/value/string.xml에 몰아서 string을 관리한다.
			이렇게하면 앱내에서 언어코드를 바꿔주는 로직만 실행하면, 자동적으로 설정된 언어 value/sring.xml을 잡는다. value 파일명을 value-zh(중국어),value-en(영어),value-ja(일본어) 이런식으로
			각 언어코드에 맞는 value 폴더를 만들어 res 폴더 아래 생성해주면 다국어 처리를 자동적으로 해준다.</p>
			
<img src="/resources/images/android/res_image.JPG"
				alt="" style="margin-top: 20px;" /><br>
				
				<img src="/resources/images/android/res_string_image.JPG"
				alt="" style="margin-top: 20px;" /><br>
				<br>
				<p>
				언어코드를 설정해주는 로직을 java영역에서 처리해주면 끝.<br>
				Locale locale = new Locale(langCode);<br>
        Locale.setDefault(locale);<br>
        Configuration config = new Configuration();<br>
        config.locale = locale;<br>
        getBaseContext().getResources().updateConfiguration(config, getBaseContext().getResources().getDisplayMetrics());<br><br>
        
        이렇게 직접 앱내에서 언어코드를 설정할 수도 있지만, 안드로이드 os영역에서 언어설정을 변경시켜줘도 상관없다. 안드로이드 폰자체적으로 언어를 바꾸는 부분은 개발은 아니기 때문에 스크랩하지않는다. 엄청 간단하기도하고...므튼 방법은 프로젝트 취지에 더 맞는 방법을 사용하면 될 것이다.</p>
				
				
				
		</section>
		
		
		
		
			<!-- One -->
		<section id="one">
			<header class="major">
				<h3>7. 캐싱 이미지처리나, 큰 이미지 처리시 메모리 누수방지.</h3>
			</header>

			<p>메모리를 할당된 양 보다 초과되어 사용하거나, 많은 데이터를 잡아먹는 높은 해상도의 이미지를 로딩할 경우 Out of memory...라는 에러를 마주쳤을 때
			Dalvik 에서 각각의 어플리케이션에게 메모리 할당을 보장해주어야하는 크기는 최소 16M인데 최대 24M까지 늘려주면 어느정도 메모리 초과 현상을 잡을 수 있다.
			이는 HonyComb 3.1부터 좀 더 큰 Heap 사이즈를 할당 시킬 수 있는데, 다음과 같이 Manifest.xml에 Heap사이즈 속성을 추가해주면 된다.<br>
			application tag 안 속성에 android:largeHeap="true"라고 추가시켜주면 된다.
			</p>

				
		</section>
		
		
				
		
			<!-- One -->
		<section id="one">
			<header class="major">
				<h3>8. Android Monkey를 이용한 UI 테스트</h3>
			</header>

			<p>우선 Monkey란? Android에서 지원하는 UI 테스팅 툴로 터치,제스쳐 등의 이벤트를 랜덤으로 발생시키거나, 스크립트 파일을 이용해서 원하는 UI Action을 수행하도록 도와주는 UI 테스팅 도구이다.
			<br>이 툴은 안드로이드 SDK를 설치해서 ADB를 동작시킬 수 있는 환경이면 사용할 수 있따.</p>

				
		</section>
		
		
		

		<!-- Three -->
		<section id="three">
			<h2>Get In Touch</h2>
			<p>Accumsan pellentesque commodo blandit enim arcu non at amet id
				arcu magna. Accumsan orci faucibus id eu lorem semper nunc nisi
				lorem vulputate lorem neque lorem ipsum dolor.</p>
			<div class="row">
				<div class="8u 12u$(small)">
					<form method="post" action="#">
						<div class="row uniform 50%">
							<div class="6u 12u$(xsmall)">
								<input type="text" name="name" id="name" placeholder="Name" />
							</div>
							<div class="6u$ 12u$(xsmall)">
								<input type="email" name="email" id="email" placeholder="Email" />
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
							</h3> 1234 Somewhere Rd.<br /> Nashville, TN 00000<br /> United
							States
						</li>
						<li>
							<h3 class="icon fa-mobile">
								<span class="label">Phone</span>
							</h3> 000-000-0000
						</li>
						<li>
							<h3 class="icon fa-envelope-o">
								<span class="label">Email</span>
							</h3> <a href="#">hello@untitled.tld</a>
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
				<ul class="copyright">
					<li>&copy; Untitled</li>
					<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
				</ul>
			</div>
		</footer>
</body>
</html>