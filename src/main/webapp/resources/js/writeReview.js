$(document).ready(function() {
    // 찾기 버튼 클릭 시 팝업 표시
    $('#searchButton').click(function() {
        $('.popup-background').show();
        $('.popup').show();
    });

    // 닫기 버튼 클릭 시 팝업 숨기기
    $('#closePopupButton').click(function() {
        $('.popup-background').hide();
        $('.popup').hide();
    });

    // 팝업 배경 클릭 시 팝업 숨기기
    $('.popup-background').click(function() {
        $('.popup-background').hide();
        $('.popup').hide();
    });
});