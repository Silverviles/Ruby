function Payment() {
    document.getElementById('payments').style.display = 'block';
    document.getElementById('refunds').style.display = 'none';
}

function Refund() {
    document.getElementById('payments').style.display = 'none';
    document.getElementById('refunds').style.display = 'block';
}

window.onload = () => {
    document.getElementById('payment_button').addEventListener('click', Payment);
    document.getElementById('refund_button').addEventListener('click', Refund);
    document.getElementById('refunds').style.display = 'none';
}
