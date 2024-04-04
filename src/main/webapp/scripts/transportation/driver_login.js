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

document.getElementById('register-form').addEventListener('submit', function(event){
    event.preventDefault();
    registerDriver();
});

function registerDriver() {
    const password = document.getElementById('password').value;
    const confirmPassword = document.getElementById('confirm_password').value;
    if (password !== confirmPassword) {
        alert("Passwords do not match");
        return;
    }

    const formData = {
        firstName : document.getElementById('first_name').value,
        lastName : document.getElementById('last_name').value,
        vehicleType : document.getElementById('v_type').value,
        vehicleNumber : document.getElementById('v_number').value,
        seatCount : document.getElementById('seat_count').value,
        email : document.getElementById('email').value,
        mobileNumber : document.getElementById('mobile_no').value,
        password : password
    };

    $.ajax({
        type: 'POST',
        contentType: 'application/json',
        url: 'signup',
        data: JSON.stringify(formData),
        success: function(response) {
            console.log('Registration successful');
        },
        error: function(xhr, status, error) {
            console.error('Registration failed: ' + error);
        }
    });
}
