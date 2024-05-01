
<!DOCTYPE html>
<html>
<title>Billing and payments</title>
<head>
    <title>Happy Man Village
        <h2>Payment Gateway</h2></title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/billingAndPayments/billingHomeCSS.css">
</head>
<body>
<h1>Payments</h1>
<form>
    <fieldset>
        <legend>Customer Details</legend>
        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name">
        </div>
        <div class="form-group">
            <label for="address">Address:</label>
            <input type="text" id="address" name="address">
        </div>
        <div class="form-group">
            <label for="email">Email Address:</label>
            <input type="email" id="email" name="email">
        </div>
    </fieldset>
    <fieldset>
        <legend>Items</legend>
        <table>
            <tr>
                <th>Description</th>
                <th>Price</th>
                <th>Total</th>
            </tr>

        </table>
    </fieldset>
    <fieldset>
        <legend>Summary</legend>
        <div class="form-group">
            <label for="subtotal">Sub Total:</label>
            <input type="text" id="subtotal" name="subtotal" value="" class="uneditable-textbox" readonly>

            <br><br>
        </div>
        <div class="form-group">
            <label for="deposit">15% Refundable Deposit:</label>
            <input type="text" id="deposit" name="deposit" value="" class="uneditable-textbox" readonly>
            <br><br>
        </div>
        <div class="form-group">
            <label for="total">Total:</label>
            <input type="text" id="total" name="total" value="" class="uneditable-textbox" readonly>
            <br><br>
        </div>
    </fieldset>
    <fieldset>
        <legend>Payment Plan</legend>
        <div class="form-group">
            <label for="payment">Payment Method:</label>
            <select id="payment" name="payment">
                <option value="bank">Bank Transfer</option>
                <option value="online">Online Payment</option>
            </select>
        </div>
    </fieldset>
    <button type="submit" class="submit-button">Submit</button>
</form>
</body>
</html>

