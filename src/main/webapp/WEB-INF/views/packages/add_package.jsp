
<%@ page import="com.happyman.Ruby.packages.dto.PackageDTO" %><%--
  Created by IntelliJ IDEA.
  User: sdilr
  Date: 4/23/2024
  Time: 1:35 PM
  To change this template use File | Settings | File Templates.
--%>
<% PackageDTO packageDTO = (PackageDTO) request.getAttribute("editPackage"); %>

<div class="formContainer">
    <span class="big-circle one"></span>
    <span class="big-circle two"></span>

    <div class="form">
        <div class="contact-info">
            <img src="${pageContext.request.contextPath}/images/employeeManagement/employeeReg.png"  alt="employee picture"/>
        </div>

        <div class="ticket-form">
            <span class="circle one"></span>
            <span class="circle two"></span>

            <form method="post" action="${pageContext.request.contextPath}<%= packageDTO == null ? "/packages/addPackage" : "/packages/updatePackage"%>"
                  autocomplete="off">
                <h3 class="title">Add Package</h3>

                <div class="input-container">
                    <input type="hidden" name="id" value="<%= packageDTO != null ? packageDTO.getId() : ""%>" class="input"/>
                </div>

                <div class="input-container">
                    <input type="text" id="packageName" value="<%= packageDTO != null ? packageDTO.getPackageName() : ""%>" name="packageName" class="input" required/>
                    <label for="packageName">Package Name: </label>
                    <span>Package Name</span>
                </div>

                <div class="input-container textarea">
                    <textarea id="packageDescription" name="packageDescription" class="input textArea" required><%= packageDTO != null ? packageDTO.getPackageDescription() : ""%></textarea>
                    <label for="packageDescription">Description: </label>
                    <span>Description</span>
                </div>

                <div class="input-container">
                    <input type="text" id="packagePrice" value="<%= packageDTO != null ? packageDTO.getPackagePrice() : ""%>" name="packagePrice" class="input" pattern="[0-9]+(\.[0-9]+)?" required/>
                    <label for="packagePrice">Price: </label>
                    <span>Price</span>
                </div>

                <div class="date-container focus">
                    <input type="date" id="packageDiscontinueDate" value="<%= packageDTO != null ? packageDTO.getPackageDiscontinueDate() : ""%>" name="packageDiscontinueDate" class="input"
                           required/>
                    <label for="packageDiscontinueDate">Discontinue Date: </label>
                    <span></span>
                </div>

                <div class="input-container focus">
                    <select id="packageType" name="packageType" class="input selectArea">
                        <option value="Family" >Family</option>
                        <option value="Couple">Couple</option>
                        <option value="Business">Business</option>
                        <option value="Large_Group">Large Group</option>
                    </select>
                    <label for="packageType">Type: </label>
                    <span>Type</span>
                </div>

                <div class="input-container">
                    <input type="number" id="maxAdults" value="<%= packageDTO != null ? packageDTO.getMaxAdults() : ""%>" name="maxAdults" class="input" required/>
                    <label for="maxAdults">No of Maximum Adults: </label>
                    <span>No of Maximum Adults</span>
                </div>

                <div class="input-container">
                    <input type="number" id="packageNoOfNights" value="<%= packageDTO != null ? packageDTO.getPackageNoOfNights() : ""%>" name="packageNoOfNights" class="input" required/>
                    <label for="packageNoOfNights">Number of Nights: </label>
                    <span>Number of Nights</span>
                </div>

                <div class="input-container">
                    <input type="checkbox" id="availability" name="availability" value="<%= packageDTO != null ? packageDTO.getPackageAvailability() : ""%>"/>
                    <label for="availability">Availability: </label>
                </div>

                <br>

                <input type="submit" value="Submit" class="btn"/>
            </form>
        </div>
    </div>
</div>