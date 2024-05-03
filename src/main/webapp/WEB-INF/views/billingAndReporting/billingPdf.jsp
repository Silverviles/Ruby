<%--Created by IntelliJ IDEA.
User: ASUS TUF
Date: 5/1/2024
Time: 8:34 PM
To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.happyman.Ruby.masterService.dao.Reservation" %>
<%@ page import="com.happyman.Ruby.masterService.dao.Payment" %>
<%@ page import="com.happyman.Ruby.billingAndReporting.dto.PaymentDTO" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>


<% String customerName = request.getParameter("name"); %>
<% String email = request.getParameter("email"); %>

<% Reservation reservation = (Reservation) request.getAttribute("reservation");  %>
<% double subTotal = Double.parseDouble(request.getParameter("subtotal")); %>
<% double deposit = Double.parseDouble(request.getParameter("deposit")); %>
<% double total = Double.parseDouble(request.getParameter("total")); %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Bill Details</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/billingAndPayments/billingPdfCSS.css">
</head>
<body>
<div id="contentToDownload">
    <div class="container">
        <div class="form">
            <h1 style="padding: 20px 100px;">Happy Man Village</h1>
            <div class="Final Bill">
                <div class="info">
                    <div class="information">
                        <h2>Customer Name:></h2>
                        <p id="customer-name"></p>
                    </div>

                    <div class="information">
                        <h2><E-mail>E-mail:</E-mail> </h2>
                        <p id="e-mail"></p>
                    </div>

                    <div class="information">
                        <h2>Sub Total: </h2>
                        <p id="subtotal"></p>
                    </div>

                    <div class="information">
                        <h2>Advance Payment (15%):</h2>
                        <p id="advance-payment"></p>
                    </div>
                    <div class="information">
                        <h2>Total:</h2>
                        <p id="total"></p>
                    </div>

                    <div class="information">
                        <img src="${pageContext.request.contextPath}/images/BillingAndReporting/email-2.png" class="icon" alt="">
                        <p>happymanVilla@gmail.com</p>
                    </div>

                    <button id="downloadPdf">Download PDF</button>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="${pageContext.request.contextPath}/scripts/billingAndPayments/billingpdf.js"></script>

</body>
</html>