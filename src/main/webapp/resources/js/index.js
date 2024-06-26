$(document).ready(function() {
    $('#writeReview').click(function(event) {
        event.preventDefault();
        var email = '<%=email%>';
        writeReview(email);
    });
});

function writeReview(email) {
    if (email === null || email === 'null') {
        alert('로그인이 필요한 페이지입니다.');
        window.location.href = '/myreads/user/login.jsp';
    }
}
