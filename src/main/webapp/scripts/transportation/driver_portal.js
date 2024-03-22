// JavaScript code to switch between table divs

// Function to show available jobs and hide others
function showAvailableJobs() {
    document.getElementById('available-jobs').style.display = 'block';
    document.getElementById('in-progress-jobs').style.display = 'none';
    document.getElementById('history').style.display = 'none';
}

// Function to show in-progress jobs and hide others
function showInProgressJobs() {
    document.getElementById('available-jobs').style.display = 'none';
    document.getElementById('in-progress-jobs').style.display = 'block';
    document.getElementById('history').style.display = 'none';
}

// Function to show trip history and hide others
function showHistory() {
    document.getElementById('available-jobs').style.display = 'none';
    document.getElementById('in-progress-jobs').style.display = 'none';
    document.getElementById('history').style.display = 'block';
}

// Initial setup: show available jobs by default
showAvailableJobs();

window.onload = () => {
    document.getElementById('available_jobs_show').addEventListener('click', showAvailableJobs);
    document.getElementById('in_progress_jobs_show').addEventListener('click', showInProgressJobs);
    document.getElementById('job_history_show').addEventListener('click', showHistory);
}