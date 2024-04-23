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
        <div class="contact-info" style="background-image: url("${pageContext.request.contextPath}/images/employeeManagement/employeeReg.png)">
        <img src="${pageContext.request.contextPath}/images/employeeManagement/employeeReg.png"  alt="employee picture"/>
    </div>

    <div class="ticket-form">
        <span class="circle one"></span>
        <span class="circle two"></span>

        <form action="#" autocomplete="off">
            <h3 class="title">Add Addon</h3>

            <div class="input-container">
                <input type="hidden" name="id" class="input" />
            </div>

            <div class="input-container">
                <input type="text" id="addonName" name="addonName" class="input" required/>
                <label for="addonName">Addon Name: </label>
                <span>Addon Name</span>
            </div>

            <div class="input-container textarea">
                <textarea id="description" name="description" class="input" required></textarea>
                <label for="description">Description: </label>
                <span>Description</span>
            </div>

            <div class="input-container">
                <input type="number" id="price" name="price" class="input" step="0.01" min="0" required />
                <label for="price">Price: </label>
                <span>Price</span>
            </div>

            <div class="input-container">
                <input type="file" id="image" name="image" class="input" />
                <label for="image">Add Image: </label>
                <span>Add Image</span>
            </div>

            <div class="input-container">
                <input type="checkbox" id="availability" name="availability"  class="input" />
                <label for="availability">Availability: </label>
                <span>Availability</span>
            </div>

            <input type="submit" value="Submit" class="btn" />
        </form>
    </div>
</div>
