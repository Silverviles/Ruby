<%--
  Created by IntelliJ IDEA.
  User: Migara
  Date: 27/04/2024
  Time: 06:32
--%>
<% Event %>

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

            <form method="post" action="${pageContext.request.contextPath}/employeeManagement/registerEmployee">
                <h3 class="title">Add Employee</h3>

                <div class="input-container">
                    <input type="hidden" name="employeeId" class="input"
                           value="<%= employee != null ? employee.getId() : "" %>"/>
                </div>

                <div class="input-container">
                    <input type="text" id="firstName" name="firstName"
                           value="<%= employee != null ? employee.getFirstName() : "" %>" class="input"/>
                    <label for="firstName">First Name: </label>
                    <span>First Name</span>
                </div>

                <div class="input-container">
                    <input type="text" id="lastName" name="lastName"
                           value="<%= employee != null ? employee.getLastName() : ""%>" class="input"/>
                    <label for="lastName">Last Name: </label>
                    <span>Last Name</span>
                </div>

                <div class="input-container">
                    <input type="email" id="email" name="email"
                           value="<%= employee != null ? employee.getEmail() : ""%>"
                           class="input"/>
                    <label for="email">Email: </label>
                    <span>Email</span>
                </div>

                <div class="input-container">
                    <input type="text" id="contactNo" name="contactNo"
                           value="<%= employee != null ? employee.getMobileNo() : ""%>" pattern="[0-9]{10}"
                           class="input"/>
                    <label for="contactNo">Contact No: </label>
                    <span>Contact No</span>
                </div>

                <div class="input-container">
                    <input type="text" id="salary" name="salary"
                           value="<%= employee != null ? employee.getBaseSalary() : ""%>" class="input"/>
                    <label for="salary">Salary: </label>
                    <span>Salary</span>
                </div>

                <input type="submit" value="Submit" class="btn"/>
            </form>
        </div>
    </div>
</div>
