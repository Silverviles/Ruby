<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.happyman.Ruby.masterService.dao.Complaint" %>
<%--
  Created by IntelliJ IDEA.
  User: Dhanuka
  Date: 4/19/2024
  Time: 11:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%
    List<Complaint> complaintList = new ArrayList<Complaint>();
    complaintList = (List<Complaint>) request.getAttribute("complaints");
%>
<div class="tableDiv">
    <div id="searchContainer" class="searchContainer">
        <input type="text" class="searchInput" aria-label="Search Input" id="searchComplaintInput" placeholder="Search by Booking ID">
    </div>
    <table id="complaintTable" class="adminTable">
        <thead class="tableHead">
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Complaints</th>
        </tr>
        </thead>
        <tbody class="tableBody">
        <% if (complaintList != null && !complaintList.isEmpty()) { %>
        <% for (Complaint complaint : complaintList) { %>
        <tr>
            <td><%= complaint.getCustomerName()%></td>
            <td><%= complaint.getEmail()%></td>
            <td><%= complaint.getComplaintDesc()%></td>

<%--            <td>--%>
<%--                <form method="post" action="${pageContext.request.contextPath}/customerSupport/giveComplaintForm">--%>
<%--                    <button class="accept-button" name="complaint_id" value="<%= complaint.getComplaintId()%>">Accept</button>--%>
<%--                </form>--%>
<%--                <form method="post" action="${pageContext.request.contextPath}/customerSupport/deleteFeedback">--%>
<%--                    <button class="delete-button" name="complaint_id" value="<%= complaint.getComplaintId()%>">Delete</button>--%>
<%--                </form>--%>
<%--            </td>--%>
        </tr>
        <% } %>
        <% } else { %>
        <tr><td colspan="5">No Records</td></tr>
        <% } %>
        </tbody>
    </table>
</div>

