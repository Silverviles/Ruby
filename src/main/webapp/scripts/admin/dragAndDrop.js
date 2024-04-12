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
    var files = e.dataTransfer.files;
    handleFiles(files);
}

// Handle the selected files
document.getElementById('file-input').addEventListener('change', function () {
    var files = this.files;
    handleFiles(files);
});

// Function to handle the selected files
function handleFiles(files) {
    // Reset the input field
    document.getElementById('file-input').value = '';

    // Loop through the files
    for (var i = 0; i < files.length; i++) {
        var file = files[i];
        // Do something with the file, like uploading it to a server
        console.log('File:', file.name);
    }
}
