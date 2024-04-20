<%@ page import="com.happyman.Ruby.masterService.dao.Payment" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: ASUS TUF
  Date: 4/20/2024
  Time: 9:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% List<Payment> paymentList = (List<Payment>) request.getAttribute("payments"); %>
<!DOCTYPE>
<html lang="en">

</html>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<head><title>Billing & Payment</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/styles/billingAndPayments/paymentAdmin1CSS.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/billingAndPayments/paymentAdminCSS.css">
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
            <tbody id="mealBody">
            <% if (paymentList != null && !paymentList.isEmpty()) {%>
            <% for (Payment payment : paymentList) { %>
            <tr>
                <td><%= payment.getId()%></td>
                <td><%= payment.getCustomerName()%></td>
                <td><%= payment.getCustomerEmail()%></td>
                <td><%= payment.getBillAmount()%></td>
                <td>
                <select id="paymentStatus" name="paymentStatus">
                    <option value="1" <%= payment.getPaymentStatus() == 1 ? "selected" : "" %>>Completed</option>
                    <option value="0" <%= payment.getPaymentStatus() == 0 ? "selected" : "" %>>Pending</option>
                </select>
                </td>
                <td>
                    <form id="submitForm" method="post" action="${pageContext.request.contextPath}/payments/updatePayment">
                        <input type="hidden" id="hiddenStatus" name="paymentStatus" value="">
                        <button class="edit-button" onclick="" name="paymentId" value="<%= payment.getId()%>">Edit</button>
                    </form>
                    <script>
                        function setPayment(event) {
                            event.preventDefault();
                            var form = document.getElementById("submitForm");
                            document.getElementById("hiddenStatus").value = document.getElementById("paymentStatus").value;
                            form.submit();
                        }
                    </script>
                    <form method="post" action="${pageContext.request.contextPath}/payments/deletePayment">
                        <button class="delete-button" name="paymentId" value="<%= payment.getId()%>">Delete</button>
                    </form>
                </td>
            </tr>
            <% }%>
            <% } %>
            </tbody>
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
