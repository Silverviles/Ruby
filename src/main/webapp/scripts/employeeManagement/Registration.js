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

//     // Function to generate and display the next employee ID
//     function generateEmployeeID() {
//     // Get the input field for employee ID
//     var empIDInput = document.getElementById('empID');
//
//     // Get the last generated employee ID (if any) from local storage
//     var lastEmpID = localStorage.getItem('lastEmpID');
//
//     // If no previous ID found, start from 1
//     var nextEmpID = 1;
//
//     // If lastEmpID exists, parse it to integer and increment
//     if (lastEmpID) {
//     nextEmpID = parseInt(lastEmpID) + 1;
// }
//
//     // Update the input field with the next employee ID
//     empIDInput.value = nextEmpID;
//
//     // Save the last generated employee ID to local storage for future use
//     localStorage.setItem('lastEmpID', nextEmpID);
// }

    // Call the function to generate employee ID when the page loads
    window.onload = generateEmployeeID;


