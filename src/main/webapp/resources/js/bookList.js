$(document).ready(function() {
    let orgCounts = [0, 0, 0];

    function updateButtonStates(bookList, orgIndex) {
        const orgCount = orgCounts[orgIndex];

        bookList.siblings('.next-btn').prop('disabled', orgCount >= 6);
        bookList.siblings('.prev-btn').prop('disabled', orgCount <= 0);
        console.log(orgCounts);
        
    }

    $('.next-btn, .prev-btn').click(function() {
        const bookList = $(this).siblings('.book-list-form');
        const orgIndex = $(this).parent().index()-1;

        orgCounts[orgIndex] += $(this).hasClass('next-btn') ? 1 : -1;

        updateButtonStates(bookList, orgIndex);
        bookList.find('.book-list').animate({marginLeft : $(this).hasClass('next-btn') ? '-=240' : '+=240'});
    });
});
