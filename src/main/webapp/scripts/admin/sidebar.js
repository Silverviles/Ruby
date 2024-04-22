$(".menu > ul > li").click(function (e) {
    $(this).siblings().removeClass("active");
    $(this).toggleClass("active");
    $(this).find("ul").slideToggle();
    $(this).siblings().find("ul").slideUp();
    $(this).siblings().find("ul").find("li").removeClass("active");
});

$(document).ready(function() {
    $('.sub-contents').hide();

    $('.sub-menu > li').click(function() {
        const buttonId = $(this).attr('id');
        const roomId = buttonId.replace('_button', '');

        $('.sub-contents').hide();
        $('#' + roomId).css('display', 'block');
    });
});