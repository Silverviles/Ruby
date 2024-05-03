<%--
  Created by IntelliJ IDEA.
  User: sdilr
  Date: 4/23/2024
  Time: 1:58 PM
  To change this template use File | Settings | File Templates.
--%>
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

            <form action="${pageContext.request.contextPath}/addons/addAddon" method="post" autocomplete="off">
                <h3 class="title">Add Addon</h3>

                <div class="input-container">
                    <input type="hidden" name="addonId" class="input"/>
                </div>

                <div class="input-container">
                    <input type="text" id="addonName" name="addonName" class="input" required/>
                    <label for="addonName">Addon Name: </label>
                    <span>Addon Name</span>
                </div>

                <div class="input-container textarea">
                    <textarea id="addonDescription" name="addonDescription" class="input textArea" required></textarea>
                    <label for="addonDescription">Description: </label>
                    <span>Description</span>
                </div>

                <div class="input-container">
                    <input type="number" id="addonPrice" name="addonPrice" class="input" step="0.01" min="0" required/>
                    <label for="addonPrice">Price: </label>
                    <span>Price</span>
                </div>

                <div class="input-container">
                    <input type="checkbox" id="addonAvailability" name="addonAvailability" value="1"/>
                    <label for="addonAvailability">Availability: </label>
                </div>

                <input type="submit" value="Submit" class="btn"/>
            </form>
        </div>
    </div>
</div>