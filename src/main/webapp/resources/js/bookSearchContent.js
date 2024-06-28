function search(page) {
	var queryType = $("#queryType").val();
	var query = $("#query").val();
	
    $.ajax({
        type: "POST",
        url: "bookSearchContent",
        data: {
            queryType: queryType,
            query: query
        },
        success: function(data) {
            var tbody = $(data).find("tbody").html();
            $('#result').html(tbody);
        }
    })
};