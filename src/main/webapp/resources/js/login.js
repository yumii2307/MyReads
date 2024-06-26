$(document).ready(function() {
	$('#login-form').submit(function(event) {
	    event.preventDefault();
	
	    $.ajax({
	        type: 'post',
	        url: 'login',
	        data: {
	        	email: $('#email').val(),
	        	password: $('#password').val()
	        },
	        success: function(response) {
	            if (response) {
	                alert('독서를 사랑하는 ' + response.nickname + '님, 환영합니다.');
	                window.location.replace('/myreads/index.jsp');
	            } else {
	                alert('이메일 혹은 비밀번호가 틀립니다.');
	            }
	        },
	        error: function() {
	            alert('서버 오류가 발생했습니다.');
	        }
	    });
	});
});
