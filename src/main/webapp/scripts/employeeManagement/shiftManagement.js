


    $(".menu > ul > li").click(function (e) {
        //remove active from already active
        $(this).siblings().removeClass("active");
        //add active to clicked
        $(this).toggleClass("active");
        //if has submenu open it
        $(this).find("ul").slideToggle();
        //close other sub menu if any open
        $(this).siblings().find("ul").slideUp();
        //remove active class of the submenu icon
        $(this).siblings().find("ul").find("li").removeClass("active");
    });

$(".menu-btn").click(function () {
    $(".sidebar").toggleClass("active");
});



    document.getElementById("shiftForm").addEventListener("submit", function(event) {
    event.preventDefault();
    const formData = new FormData(event.target);
    const employeeName = formData.get("employeeName");
    const shift = formData.get("shift");
    alert(`Employee Name: ${employeeName}\nShift: ${shift}`);
    // Here you can add code to handle form submission, such as sending data to a server
});
