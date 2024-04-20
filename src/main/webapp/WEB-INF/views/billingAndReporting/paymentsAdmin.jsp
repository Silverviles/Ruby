<%--
  Created by IntelliJ IDEA.
  User: ASUS TUF
  Date: 4/20/2024
  Time: 9:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE>
<html lang="en">

</html>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<head><title>Billing & Payment</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/styles/billingAndPayments/paymentAdmin1CSS.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/billingAndPayments/paymentAdmin2CSS.css">
</head>

<body>
<div class="sidebar">
    <div class="Payment_portal_navigate">
        <p id="payment_button">Payment</p>
        <p id="refund_button">Refund</p>
    </div>
</div>

<div class="content">
    <div id="payments" class="payment">
        <h2>Payments</h2>
        <table>
            <!-- Table for available jobs -->
            <!-- Sample data -->
            <tr>
                <th>BID</th>
                <th>Customer Name</th>
                <th>Email </th>
                <th>Booking Amount</th>
                <th>Payment Status</th>
                <th>Update</th>
                <th>Delete</th>
            </tr>
            <!-- Sample data rows -->
            <tr>
                <td>1</td>
                <td>Jerome</td>
                <td>jeromee@gmail.com</td>
                <td>Rs.24 500</td>
                <td><select id="status" name="status">
                    <option value="status">Pending</option>
                    <option value="status">Completed</option>
                </select></td>
                <td> <button type="submit" class="update-button">update</button></td>
                <td> <button type="submit" class="Delete-button">Delete</button></td>

            </tr>
        </table>
    </div>

    <div id="refunds" class="payment">
        <h2>Refund</h2>
        <table>
            <!-- Table for in-progress jobs -->
            <!-- Sample data -->
            <tr>
                <th>BID</th>
                <th>Customer Name</th>
                <th>Refund Details</th>
                <th>Amount</th>
                <th>Refund Status</th>
                <th>Update</th>
                <th>Delete</th>
            </tr>
            <!-- Sample data rows -->
            <tr>
                <td>12</td>
                <td>Jola</td>
                <td>Booking cancel</td>
                <td>rs.24 500</td>
                <td><select id="status1" name="status">
                    <option value="status">Pending</option>
                    <option value="status">Completed</option>
                </select></td>
                <td> <button type="submit" class="update-button">update</button></td>
                <td> <button type="submit" class="Delete-button">Delete</button></td>

            </tr>
        </table>
    </div>
</div>
<script src="${pageContext.request.contextPath}/scripts/billingAndPayments/paymentAdmin.js"></script>
</body>

</html>
