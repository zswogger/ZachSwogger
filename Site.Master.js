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

    $('.toast').toast({
        delay: 3000
    });

    $('#contactModal').on('hidden.bs.modal', function () {
        $('#emailContact').val('');
        $('#emailMessage').val('');
    });

    $('#contactBtn').on('click', function () {
        $(window).scrollTop($(".toast").offset().top);
        $('.toast').toast('hide');
        $('#contactSpinner').show();
        $('#contactBtn').attr('disabled', true);

        var data = ({
            message: $('#emailMessage').val(),
            contact: $('#emailContact').val()
        });

        $.ajax({
            type: "POST",
            url: '/Default.aspx/contactMe',
            contentType: "application/json; charset=utf-8",
            data: JSON.stringify(data),
            dataType: "json",
            async: false,
            success: function (data) {
                if (data.d.success) {
                    setTimeout(
                        function () {
                            $('.toast-header').removeClass('toast-error');
                            $('.toast-header').addClass('toast-success');
                            $('#toast-header-message').text('Success!');
                            $('#toast-body-message').text(data.d.message);
                            $('.toast').toast('show');

                            $('#contactSpinner').hide();
                            $('#contactBtn').attr('disabled', false);
                        }, 800)
                    
                } else {
                    setTimeout(
                        function () {
                            $('.toast-header').removeClass('toast-success');
                            $('.toast-header').addClass('toast-error');
                            $('#toast-header-message').text('Error!');
                            $('#toast-body-message').text(data.d.message);
                            $('.toast').toast('show');

                            $('#contactSpinner').hide();
                            $('#contactBtn').attr('disabled', false);
                        }, 800);
                }
            }
        });
    });
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

$('#contact').on('click', function () {
    $('#contactModal').modal('show');
});



function testAjax() {
    $.ajax({
        type: "GET",
        url: window.location.pathname + '/test',
        data: {},
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        beforeSend: function () {
            alert('before');
        },
        success: function (response) {
            alert('success');
        },
        complete: function () {
            alert('complete');
        },
        failure: function (jqXHR, textStatus, errorThrown) {
            alert("HTTP Status: " + jqXHR.status + "; Error Text: " + jqXHR.responseText); // Display error message  
        }
    });
}