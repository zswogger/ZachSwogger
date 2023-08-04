$(document).ready(function () {

    $('#about-me').on('click', function () {
        $(window).scrollTop($("#about-me-div").offset().top);
    });

    $('#work-history').on('click', function () {
        $(window).scrollTop($("#work-history-start").offset().top);
    });

    $('#projects').on('click', function () {
        if ($('#projects-dropdown').is(':visible')) {
            $('#projects-dropdown').hide();
        } else {
            $('#projects-dropdown').show();
        }

    })
});