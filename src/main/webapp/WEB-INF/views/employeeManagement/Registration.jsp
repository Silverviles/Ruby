<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 4/13/2024
  Time: 12:25 AM
  To change this template use File | Settings | File Templates.
--%>

<div class="container">

    <div class="xxx">
        <h1 class="Topic">Employee Management</h1>
        <header class="section_container header_container">
            <h2 class="registration_heading">Employee Registration</h2>

            <div class="registration_container">
                <form action="${pageContext.request.contextPath}/employeeManagement/registerEmployee" method="post">

                    <div class="form_group" style="display: none">
                        <div class="input_group">
                            <input type="text" name="employeeId" id="employeeId"  readonly>
                            <label>Employee Id</label>

                        </div>

                    </div>


                    <div class="form_group">
                        <div class="input_group">
                            <input type="text" name="firstName" required>
                            <label>Employee First Name</label>
                        </div>
                        <!-- <p>Type of the shifts</p>-->
                    </div>

                    <div class="form_group">
                        <div class="input_group">
                            <input type="text" name="lastName" required>
                            <label>Employee Last Name</label>
                        </div>
                        <!-- <p>Type of the shifts</p>-->
                    </div>


                    <div class="form_group">
                        <div class="input_group">
                            <input type="text" name="email" required>
                            <label>Email</label>
                        </div>

                    </div>

                    <div class="form_group">
                        <div class="input_group">
                            <input type="text" name="contactNo" required>
                            <label>Contact No</label>
                        </div>

                    </div>
                    <div class="form_group">
                        <div class="input_group">
                            <input type="number" name="salary" step="0.01" required>
                            <label>Salary</label>
                        </div>
                    </div>
                    <button class="btn">Add</button>


                </form>
                <div class="header_content">
                    <div class="popular_card">
                        <img src="${pageContext.request.contextPath}/images/employeeManagement/reg.jpeg" alt="villa ">

                    </div>
                </div>

            </div>

        </header>


    </div>

</div>

<script src="${pageContext.request.contextPath}/scripts/employeeManagement/Registration.js"></script>

