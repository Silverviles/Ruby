<%@ page import="com.happyman.Ruby.masterService.dao.Reservation" %><%--
  Created by IntelliJ IDEA.
  User: ASUS TUF
  Date: 5/1/2024
  Time: 8:34 PM
  To change this template use File | Settings | File Templates.
--%>
<% Reservation reservation = (Reservation) request.getAttribute("bill"); %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Bill Details</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/billingAndPayments/billingPdfCSS.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.4.0/jspdf.umd.min.js"></script>
</head>
<body>
<div id="contentToDownload">
    <div class="container">
        <div class="form">
            <h1 style="padding: 20px 100px;">Happy Man Village</h1>
            <div class="Final Bill">
                <div class="info">
                    <div class="information">
                        <h2>Customer Name: </h2>
                        <p id="customer-name"></p>
                    </div>

                    <div class="information">
                        <h2><E-mail>E-mail:</E-mail> </h2>
                        <p id="e-mail"></p>
                    </div>

                    <div class="information">
                        <h2>Sub Total:</h2>
                        <p id="subtotal"></p>
                    </div>

                    <div class="information">
                        <h2>Advance Payment (15%): </h2>
                        <p id="advance-payment"></p>
                    </div>
                    <div class="information">
                        <h2>Total:</h2>
                        <p id="total"></p>
                    </div>

                    <div class="information">
                        <img src="${pageContext.request.contextPath}/images/customerSupport/email-2.png" class="icon" alt="">
                        <p>happymanVilla@gmail.com</p>
                    </div>

                    <button id="downloadPdf">Download PDF</button>
                </div>
            </div>
        </div>
    </div>
</div>
<script>document.addEventListener("DOMContentLoaded", () => {
    setTimeout(() => {
        const roomPriceElement = document.getElementById("roomPrice");
        const menuPriceElement = document.getElementById("menuPrice");
        const packagePriceElement = document.getElementById("packagePrice");
        const eventPriceElement = document.getElementById("eventPrice");
        const tripPriceElement = document.getElementById("tripPrice");

        const roomPrice = roomPriceElement ? parseFloat(roomPriceElement.innerHTML) : 0;
        const menuPrice = menuPriceElement ? parseFloat(menuPriceElement.innerHTML) : 0;
        const packagePrice = packagePriceElement ? parseFloat(packagePriceElement.innerHTML) : 0;
        const eventPrice = eventPriceElement ? parseFloat(eventPriceElement.innerHTML) : 0;
        const tripPrice = tripPriceElement ? parseFloat(tripPriceElement.innerHTML) : 0;

        const subTotal = roomPrice + menuPrice + packagePrice + eventPrice + tripPrice;
        const refundableDeposit = subTotal * 15 / 100;
        const total = subTotal + refundableDeposit;

        document.getElementById("subtotal").value = subTotal.toFixed(2);
        document.getElementById("deposit").value = refundableDeposit.toFixed(2);
        document.getElementById("total").value = total.toFixed(2);
    }, 1000);
});</script>
<script src="${pageContext.request.contextPath}/scripts/billingAndPayments/billingpdf.js"></script>

</body>
</html>