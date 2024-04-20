const inputs = document.querySelectorAll(".input");

function focusFunc() {
    let parent = this.parentNode;
    parent.classList.add("focus");
}

function blurFunc() {
    let parent = this.parentNode;
    if (this.value == "") {
        parent.classList.remove("focus");
    }
}

inputs.forEach((input) => {
    input.addEventListener("focus", focusFunc);
    input.addEventListener("blur", blurFunc);
});

document.getElementById("submitButton").addEventListener("click", function(event) {
    event.preventDefault(); // Prevent the default form submission behavior

    // Show the success message
    document.getElementById("successMessage").classList.remove("hidden");

    // Optionally, you can hide the button after it's clicked
    event.target.style.display = "none";
});