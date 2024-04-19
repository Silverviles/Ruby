$(document).ready(function() {

    $(".sub-contents").hide();


    $("#Feedback").click(function() {

        $(".sub-contents").not("#feedback").hide();

        $("#feedback").toggle();
    });

});
