function showRegister() {
    document.getElementById('login-page').style.display = 'none';
    document.getElementById('register-page').style.display = 'block';
}

function showLogin() {
    document.getElementById('register-page').style.display = 'none';
    document.getElementById('login-page').style.display = 'block';
}

document.getElementById('login-form').addEventListener('submit', function(event) {
    event.preventDefault(); // Prevent form submission for demonstration
    // Add your login logic here
    console.log('Login submitted');
});

document.getElementById('register-form').addEventListener('submit', function(event) {
    event.preventDefault(); // Prevent form submission for demonstration
    // Add your registration logic here
    console.log('Registration submitted');
});

window.onload(() => {
    
})