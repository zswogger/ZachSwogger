$(document).ready(function () {

    // Check for dark mode preference
    const currentTheme = localStorage.getItem('theme') ? localStorage.getItem('theme') : null;

    // Set dark mode preference
    if (currentTheme) {

        $(document.documentElement).attr('data-theme', currentTheme);

        if (currentTheme === 'light') {
            $('#dark-mode-toggle').prop('checked', true);
        }
    }
});

// Control dark mode toggle
$('#dark-mode-toggle').on('click', function () {
    if ($('#dark-mode-toggle').is(':checked')) {
        $(document.documentElement).attr('data-theme', 'light');
        localStorage.setItem('theme', 'light');
    }
    else {
        $(document.documentElement).attr('data-theme', 'dark');
        localStorage.setItem('theme', 'dark');
    }
});