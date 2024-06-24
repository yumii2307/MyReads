$(document).ready(function() {
    $('#all').change(function() {
        const isChecked = $(this).prop('checked');

        $('.other-check').prop('checked', isChecked);
    });
    
	$('#check-form').submit(function(event) {
        var isChecked = $('#terms').prop('checked');
        if (!isChecked) {
            event.preventDefault();
            $('#popup').show();
        }
        var isChecked = $('#personal_data').prop('checked');
        if (!isChecked) {
            event.preventDefault();
            $('#popup').show();
        }
    });

    $('#close').click(function() {
        $('#popup').hide();
    });
    
});
