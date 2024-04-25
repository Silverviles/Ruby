<%@ page import="com.happyman.Ruby.billingAndReporting.dto.PaymentDTO" %>
<%@ page import="java.util.List" %>
<%@ page import="com.happyman.Ruby.masterService.dao.Reservation" %><%--
  Created by IntelliJ IDEA.
  User: tharindu
  Date: 25/04/2024
  Time: 16:35
  To change this template use File | Settings | File Templates.
--%>
<% @SuppressWarnings("unchecked") List<Reservation> payments = (List<Reservation>) request.getAttribute("reservations"); %>
<div class="tableDiv">
    <div id="searchContainer" class="searchContainer">
        <input type="text" aria-label="Search Input" id="searchInput" placeholder="Search by First Name">
    </div>

    <table id="paymentTable" class="adminTable">
        <thead class="tableHead">
        <tr>
            <th>Booking ID</th>
            <th>Customer Name</th>
            <th>Email</th>
            <th>Total Amount</th>
            <th>Payment Status</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody class="tableBody">
        <% if (payments != null && !payments.isEmpty()) { %>
        <% for (Reservation payment : payments) { %>
        <tr>
            <td><%= payment.getBookingId()%></td>
            <td><%= payment.getPayment().getCustomerName()%></td>
            <td><%= payment.getPayment().getCustomerEmail()%></td>
            <td><%= payment.getPayment().getBillAmount()%></td>
            <td><%= payment.getPayment().getPaymentStatus()%></td>
            <td>
                <% if (payment.getPayment().getPaymentStatus() == 0) { %>
                <form method="post" action="${pageContext.request.contextPath}/payments/updatePayment">
                    <input type="hidden" value="<%= payment.getPayment().getId()%>" name="paymentId"/>
                    <button class="accept-button">Complete Payment</button>
                </form>
                <% } %>
                <% if (payment.getRefund() != null && payment.getRefund().getRefundStatus() == 0) { %>
                <form method="post" action="${pageContext.request.contextPath}/payments/refund">
                    <input type="hidden" value="<%= payment.getBookingId()%>" name="bookingId"/>
                    <button class="delete-button">Refund</button>
                </form>
                <% } %>
            </td>
        </tr>
        <% } %>
        <% } %>
        </tbody>
    </table>
</div>

<script>
	function searchEmployee() {
		var input, filter, table, tr, td, i, txtValue;
		// Search bar id tag here
		input = document.getElementById("searchInput");
		filter = input.value.toUpperCase();

		// Table needs to be searched here
		table = document.getElementById("paymentTable");
		tr = table.getElementsByTagName("tr");

		for (i = 0; i < tr.length; i++) {
			td = tr[i].getElementsByTagName("td")[0];
			if (td) {
				txtValue = td.textContent || td.innerText;
				if (txtValue.toUpperCase().indexOf(filter) > -1) {
					tr[i].style.display = "";
				} else {
					tr[i].style.display = "none";
				}
			}
		}
	}

	window.onload = function () {
		var searchInput = document.getElementById("searchInput");
		searchInput.addEventListener("input", searchEmployee);
	};

</script>