$(".menu > ul > li").click(function (e) {
    $(this).siblings().removeClass("active");
    $(this).toggleClass("active");
    $(this).find("ul").slideToggle();
    $(this).siblings().find("ul").slideUp();
    $(this).siblings().find("ul").find("li").removeClass("active");
});

$(document).ready(function() {
    $('.sub-contents').hide();

    $('.sub-menu > li, .dashboard-button').click(function() {
        const buttonId = $(this).attr('id');
        const roomId = buttonId.replace('_button', '');

        $('.sub-contents').hide();
        $('#' + roomId).css('display', 'block');
    });

    document.getElementById("dashboard_button").addEventListener('click', function(e) {
        $('.sub-contents').hide();
        document.getElementById("dashboard").style.display = "block";
    })

    const showDivId = getUrlParameter('showDiv');

    if (showDivId) {
        $("#" + showDivId).show();
    }

    history.replaceState({}, document.title, window.location.pathname);

    function getUrlParameter(name) {
        const regex = new RegExp('[?&]' + name + '(=([^&#]*)|&|#|$)'),
            results = regex.exec(window.location.href);
        if (!results) return null;
        if (!results[2]) return '';
        return decodeURIComponent(results[2].replace(/\+/g, ' '));
    }
});