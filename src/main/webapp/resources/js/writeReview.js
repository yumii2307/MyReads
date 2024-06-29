function search() {
	var queryType = $("#queryType").val();
	var query = $("#query").val();
	
    $.ajax({
        type: "POST",
        url: "writeReview",
        data: {
            queryType: queryType,
            query: query
        },
        success: function(data) {
            var tbody = $(data).find("#result").html();
            $('#result').html(tbody);
        }
    })
};
$(document).ready(function() {
	$('#book-review-form').submit(function(event) {
	    if ($('#book-info-hidden').css('display') === 'none') {
		    event.preventDefault();
            alert('책 정보를 등록해주세요.');
        }
        
	    $.ajax({
	        type: 'post',
	        url: 'writeReviewDone',
	        data: {
	        	email: $('#email').text(),
	        	itemId: $('#selectItemId').text(),
	        	quotation: $('#autoWidthInput').val(),
	        	review: $('#review').val()
	        },
	        success: function(response) {
	            if (response) {
	                alert('리뷰 등록이 완료되었습니다.');
	                window.location.replace('/myreads/index.jsp');
	            } else {
	                alert('리뷰 등록에 실패하였습니다.');
	            }
	        },
	        error: function() {
	            alert('서버 오류가 발생했습니다.');
	        }
	    });
	});
	
    $('#searchButton').click(function() {
        $('.popup-background').show();
        $('.popup').show();
    });

    $('.popup-background').click(function() {
        $('.popup-background').hide();
        $('.popup').hide();
    });
    
	$('#result').on('click', 'tr', function() {
        var coverSrc = $(this).find('img').attr('src');
        var title = $(this).find('#title').text();
        var author = $(this).find('#author').text();
        var publisher = $(this).find('#publisher').text();
        var itemId = $(this).find('#itemId').text();

        $('#selectImg').attr('src', coverSrc);
        $('#selectTitle').text(title);
        $('#selectAuthor').text(author);
        $('#selectPublisher').text(publisher);
        $('#selectItemId').text(itemId);

        $('#book-info-hidden').show();
        $('.book-mark').css('height', '186px');
        $('.book-info-form').css('height', '186px');
        $('.bodywrap').css('margin-bottom', '120px');
        $('.popup-background').hide();
        $('.popup').hide();
    });
    
    const $input = $('#autoWidthInput');
    const $hiddenSpan = $('#hiddenSpan');

    function updateWidth() {
        $hiddenSpan.text($input.val());
        $input.width($hiddenSpan.width());
    }

    $input.on('input', updateWidth);

    updateWidth();

});
