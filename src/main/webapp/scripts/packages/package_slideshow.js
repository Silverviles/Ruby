let slideIndex = 0;
showSlides();

function showSlides() {
    let slides = document.getElementsByClassName("slideshow");

    // Hide all slides initially
    for (let i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }

    // Increment slideIndex for the next slide
    slideIndex++;

    // Reset slideIndex to 0 if it exceeds the total number of slides
    if (slideIndex >= slides.length) {
        slideIndex = 0;
    }

    // Display the current slide
    slides[slideIndex].style.display = "block";

    // Call showSlides again after 2 seconds
    setTimeout(showSlides, 2500);
}
