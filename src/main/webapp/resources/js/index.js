$(document).ready(function() {
    $('#writeReview').click(function(event) {
        var email = '<%=email%>';
        writeReview(email);
    });
});

function writeReview(email, event) {
    if (email === null || email === 'null') {
    	event.preventDefault();
        alert('로그인이 필요한 페이지입니다.');
        window.location.href = '/myreads/user/login.jsp';
    }
}
