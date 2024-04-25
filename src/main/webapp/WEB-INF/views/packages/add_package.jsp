<%@ page import="com.happyman.Ruby.masterService.dao.Addon" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: sdilr
  Date: 4/23/2024
  Time: 1:35 PM
  To change this template use File | Settings | File Templates.
--%>
<% List<Addon> addons = (List<Addon>) request.getAttribute("addons");%>

<div class="formContainer">
    <span class="big-circle one"></span>
    <span class="big-circle two"></span>

    <div class="form">
        <div class="contact-info"
             style="background-image: url('${pageContext.request.contextPath}/images/employeeManagement/employeeReg.png')">
            <img src="${pageContext.request.contextPath}/images/employeeManagement/employeeReg.png"
                 alt="employee picture"/>
        </div>

        <div class="ticket-form">
            <span class="circle one"></span>
            <span class="circle two"></span>

        <form action="packages/addPackage" autocomplete="off" method="post">
            <h3 class="title">Add Package</h3>

            <div class="input-container">
                <input type="hidden" name="packageId" class="input"/>
            </div>

            <div class="input-container">
                <input type="text" id="packageName" name="packageName" class="input" required/>
                <label for="packageName">Package Name: </label>
                <span>Package Name</span>
            </div>

            <div class="input-container textarea">
                <textarea id="packageDescription" name="packageDescription" class="input" required></textarea>
                <label for="packageDescription">Description: </label>
                <span>Description</span>
            </div>

            <div class="input-container">
                <input type="number" id="packagePrice" name="packagePrice" class="input" step="0.01" min="0" required/>
                <label for="packagePrice">Price: </label>
                <span>Price</span>
            </div>

            <div class="input-container">
                <input type="date" id="packageDiscontinueDate" name="packageDiscontinueDate" class="input" required/>
                <label for="packageDiscontinueDate">Discontinue Date: </label>
                <span>Discontinue Date</span>
            </div>

            <div class="input-container">
                <select id="packageType" name="packageType" class="input selectArea">
                    <option value="Family">Family</option>
                    <option value="Couple">Couple</option>
                    <option value="Business">Business</option>
                    <option value="Large_Group">Large Group</option>
                </select>
                <label for="packageType">Type: </label>
                <span>Type</span>
            </div>

            <div class="input-container">
                <input type="number" id="maxAdults" name="maxAdults" class="input" required/>
                <label for="maxAdults">No of Maximum Adults: </label>
                <span>No of Maximum Adults</span>
            </div>

            <div class="input-container">
                <input type="checkbox" id="availability" name="availability" value="TRUE" />
                <label for="availability">Availability: </label>
            </div>

            <div class="input-container">
                <% if (addons != null && !addons.isEmpty()) {
                    for (Addon addon : addons) {%>
                        <input type="checkbox" id="addon<%=addon.getId()%>" name="addonList" value="<%=addon.getId()%>">
                        <label for="addon<%=addon.getId()%>"><%=addon.getAddonName()%></label>
                        <br>
                <%
                        }
                    }%>
            </div>

            <input type="submit" value="Submit" class="btn" />
        </form>
    </div>
</div>
