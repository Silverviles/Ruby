// Ensure the script executes after the DOM content is loaded
document.addEventListener('DOMContentLoaded', function () {
    // Get the drop area element
    var dropArea = document.getElementById('drop-area');

    // Prevent default behavior for drag and drop events
    ['dragenter', 'dragover', 'dragleave', 'drop'].forEach(eventName => {
        dropArea.addEventListener(eventName, preventDefaults, false);
    });

    function preventDefaults(e) {
        e.preventDefault();
        e.stopPropagation();
    }

    // Highlight the drop area when dragging over it
    ['dragenter', 'dragover'].forEach(eventName => {
        dropArea.addEventListener(eventName, highlight, false);
    });

    ['dragleave', 'drop'].forEach(eventName => {
        dropArea.addEventListener(eventName, unhighlight, false);
    });

    function highlight(e) {
        dropArea.classList.add('highlight');
    }

    function unhighlight(e) {
        dropArea.classList.remove('highlight');
    }

    // Handle the drop event
    dropArea.addEventListener('drop', handleDrop, false);

    function handleDrop(e) {
        e.preventDefault();
        dropArea.classList.add('dropped-file');
        var files = e.dataTransfer.files;
        handleFiles(files);
    }

    // Ensure the selector targets the file input element correctly
    document.getElementById('file-input').addEventListener('change', function () {
        var files = this.files;
        handleFiles(files);
    });

    // Handle the selected files
    // Handle the selected files
    function handleFiles(files) {
        // Reset the input field
        document.getElementById('file-input').value = '';

        // Check if files array is not empty
        if (files.length > 0) {
            // Take only the first file
            var file = files[0];
            // Do something with the file, like uploading it to a server
            console.log('File:', file.name);

            // Display the file name in the drop area
            displayFileName(file);
        }
    }

// Function to display the name of the dropped file
    function displayFileName(file) {
        var fileName = file.name;
        dropArea.innerHTML = '<label for="file-input">File dropped:</label>' + fileName;
    }

});
