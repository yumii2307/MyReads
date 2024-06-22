<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyReads - Everything about reading</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/agree.css" type="text/css">
<script src="${pageContext.request.contextPath}/resources/js/agree.js" defer type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.js"></script>
</head>
<body>

	<div class="bodywrap">
		<div class="agree-form">
			<h1><a href="../index.jsp">MyReads</a></h1>
			<hr>
			<div class="agree-detail">
			    <form action="process_registration.php" method="post" id="check-form">
			    	<div>
			            <input type="checkbox" id="all" name="all">
			            <label for="all"><span>전체 약관 동의</span></label>
			        </div>
			        <br>
			        <div>
			            <input type="checkbox" id="terms" name="terms" class="other-check">
			            <label for="terms"><span><span style="color: red">[필수]</span> 이용 약관 동의</span></label>
			            <p>
				            1. 목적<br>
							본 약관은 MyReads(이하 "사이트")의 이용과 관련하여 사이트와 회원 간의 권리, 의무, 책임사항 및 기타 필요한 사항을 규정합니다.<br><br>
							2. 회원의 의무<br>
							회원은 본 약관 및 관련 법령을 준수해야 하며, 사이트의 운영을 방해하지 않아야 합니다.<br>
							회원은 타인의 권리를 침해하지 않아야 하며, 허위 정보 제공, 명예 훼손, 불법 행위를 하지 않아야 합니다.<br>
							회원은 도서 리뷰 작성 시, 타인의 저작권을 침해하지 않으며, 정직하고 객관적인 리뷰를 작성해야 합니다.<br><br>
							3. 서비스의 제공 및 변경<br>
							사이트는 회원에게 도서 정보 제공, 도서 리뷰 등록, 커뮤니티 활동 등의 다양한 서비스를 제공합니다.<br>
							사이트는 서비스의 내용을 변경하거나 중단할 수 있으며, 이를 회원에게 사전 통지합니다. 단, 사전 통지가 어려운 긴급한 상황에서는 사후에 통지할 수 있습니다.<br><br>
							4. 계약 해지 및 이용 제한<br>
							회원이 약관을 위반할 경우, 사이트는 회원의 서비스 이용을 제한하거나 계약을 해지할 수 있습니다.<br>
							회원은 언제든지 탈퇴를 요청할 수 있으며, 사이트는 이를 즉시 처리합니다.<br><br>
							5. 게시물의 관리<br>
							회원이 작성한 리뷰 및 게시물은 회원의 동의 없이 다른 목적으로 사용되지 않습니다.<br>
							사이트는 회원이 게시한 리뷰 및 게시물이 본 약관이나 법령을 위반하는 경우, 사전 통지 없이 삭제할 수 있습니다.<br><br>
							6. 책임의 한계<br>
							사이트는 회원이 제공한 정보, 자료, 사실의 신뢰도, 정확성 등에 대해 책임을 지지 않습니다.<br>
							사이트는 천재지변, 전쟁, 기간 통신사업자의 서비스 중지 등 불가항력으로 인하여 서비스를 제공할 수 없는 경우, 책임을 면합니다.
						</p>
			        </div>
			        <div>
			            <input type="checkbox" id="personal_data" name="personal_data" class="other-check">
			            <label for="personal_data"><span><span style="color: red">[필수]</span> 개인정보 수집 및 이용 동의</span></label>
			        	<p>
							1. 수집하는 개인정보 항목<br>
							사이트는 회원가입, 서비스 이용, 상담 등을 위해 다음과 같은 개인정보를 수집합니다: 이름, 이메일 주소, 비밀번호, 닉네임 등.<br><br>
							2. 개인정보의 수집 및 이용 목적<br>
							회원 관리: 회원제 서비스 이용에 따른 본인 확인, 개인 식별, 불량 회원의 부정 이용 방지와 비인가 사용 방지.<br>
							커뮤니티 활동: 도서 리뷰 등록, 댓글 작성 등 커뮤니티 활동을 위한 본인 확인 및 관리.<br>
							마케팅 및 광고에 활용: 이벤트 등 광고성 정보 전달, 접속 빈도 파악 또는 회원의 서비스 이용에 대한 통계.<br><br>
							3. 개인정보의 보유 및 이용 기간<br>
							회원의 개인정보는 회원가입일로부터 서비스 제공기간 동안 보유 및 이용됩니다.<br>
							회원 탈퇴 시 사이트는 회원의 개인정보를 지체 없이 파기합니다.<br><br>
							4. 개인정보의 파기 절차 및 방법<br>
							전자적 파일 형태의 정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다.<br>
							종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각하여 파기합니다.
						</p>
			        </div>
			        <div>
			            <input type="checkbox" id="notifications" name="notifications" class="other-check">
			            <label for="notifications"><span>[선택] 정보 수신 동의</span></label>
			        	<p>
							1. 정보 수신 범위<br>
							사이트는 회원에게 서비스 이용과 관련된 각종 정보 및 광고를 이메일, SMS, 앱 푸시 등의 방법으로 제공합니다.<br><br>
							2. 정보 수신 동의 철회<br>
							회원은 언제든지 정보 수신에 대한 동의를 철회할 수 있습니다.<br>
							동의 철회는 회원정보 수정 페이지에서 설정을 변경하거나, 제공된 수신 거부 방법을 통해 처리할 수 있습니다.<br><br>
							3. 정보의 종류<br>
							서비스 이용 안내: 서비스 관련 공지사항, 이용 가이드, 이벤트 및 프로모션 안내.<br>
							광고성 정보: 신상품 안내, 할인 쿠폰 제공, 제휴 서비스 소개.<br><br>
							4. 정보의 이용 목적<br>
							회원에게 맞춤형 서비스 및 혜택을 제공하고, 서비스 품질을 향상시키기 위함입니다.<br>
							회원의 관심사에 맞는 유용한 정보를 제공하기 위함입니다.
						</p>
			        </div>
			        <div class="next">
			            <button type="submit">Next ›</button>
			        </div>
			    </form>
			    <div id="popup" class="popup">
				    <p><span style="color: red">[필수]</span> 항목에 모두 동의해주세요.</p>
				    <button id="close">닫기</button>
				</div>
		    </div>
	    </div>
	
	</div>

	<%@ include file="../footer.jsp" %>

</body>
</html>