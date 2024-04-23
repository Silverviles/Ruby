<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 4/13/2024
  Time: 12:25 AM
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
                <h3 class="title">Add Employee</h3>

                <div class="input-container">
                    <input type="hidden" name="employeeId" class="input" />
                </div>

                <div class="input-container">
                    <input type="text" id="firstName" name="firstName" class="input" />
                    <label for="firstName">First Name: </label>
                    <span>First Name</span>
                </div>

                <div class="input-container">
                    <input type="text" id="lastName" name="lastName" class="input" />
                    <label for="lastName">Last Name: </label>
                    <span>Last Name</span>
                </div>

                <div class="input-container">
                    <input type="email" id="email" name="email" class="input" />
                    <label for="email">Email: </label>
                    <span>Email</span>
                </div>

                <div class="input-container textarea">
                    <input type="text" id="contactNo" name="contactNo" pattern="[0-9]{10}" class="input" />
                    <label for="contactNo">Contact No: </label>
                    <span>Contact No</span>
                </div>

                <div class="input-container textarea">
                    <input type="text" id="salary" name="salary" class="input" />
                    <label for="salary">Salary: </label>
                    <span>Salary</span>
                </div>

                <input type="submit" value="Submit" class="btn" />
            </form>
        </div>
    </div>
</div>