$(document).ready(function () {
    if (/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent)) {
        $('.slick').slick({
            autoplay: true,
            pauseOnHover: true,
            adaptiveHeight: true,
            autoplaySpeed: 5000
        });
    }
    else {
        $('.slick').slick({
            autoplay: true,
            pauseOnHover: true,
            autoplaySpeed: 5000
        });
    }
});