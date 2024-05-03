
    const filterButtons = document.querySelectorAll('.filter button');
    const packageContainer = document.querySelector('.package_container');

    filterButtons.forEach(button => {
    button.addEventListener('click', function() {
        const selectedPackageType = this.textContent.trim().toLowerCase(); // Get the package type from button text
        filterPackages(selectedPackageType); // Call filter function with the package type
    });
});

    function filterPackages(packageType) {
    let filteredPackages = [];

    // Filter the packageAll list based on packageType
    if (packageType === 'all') {
    filteredPackages = packageAll; // Show all packages if "all" is clicked
} else {
    filteredPackages = packageAll.filter(pkg => pkg.getPackageType().toLowerCase() === packageType);
}

    // Update the package container content with filtered packages
    updatePackageContainer(filteredPackages);
}

    function updatePackageContainer(packages) {
    // Clear existing package elements
    packageContainer.innerHTML = ''; // Remove previous content

    // Loop through filtered packages and create HTML elements dynamically
    packages.forEach(pkg => {
    // Create package box elements with package data
    const packageBox = createPackageBox(pkg); // Call a function to create the package box element
    packageContainer.appendChild(packageBox); // Add the package box to the container
});
}

    // Function to create a package box element (implementation details omitted for brevity)
    function createPackageBox(packageData) {
    // ... code to create and populate the package box element based on package data ...
    return packageBox;
}

