function showRegister() {
    document.getElementById('login-page').style.display = 'none';
    document.getElementById('register-page').style.display = 'block';
}

function showLogin() {
    document.getElementById('register-page').style.display = 'none';
    document.getElementById('login-page').style.display = 'block';
}

document.getElementById('login-form').addEventListener('submit', function(event) {
    event.preventDefault();
    console.log('Login submitted');
});

window.onload(() => {
    
})