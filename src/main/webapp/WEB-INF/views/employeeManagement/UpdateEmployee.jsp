<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 4/19/2024
  Time: 4:57 PM
  To change this template use File | Settings | File Templates.
--%>

<div class="container">

    <div class="xxx">
        <h1 class="Topic">Edit Employee Details</h1>
        <header class="section_container header_container">
            <h2 class="registration_heading"> Update Employee </h2>

            <div class="registration_container">
                <form action="${pageContext.request.contextPath}/employeeManagement/update" method="post">

                    <div class="form_group">
                        <div class="input_group">
                            <input type="hidden" name="employeeId" id="employeeId" value="${employeeId}" >
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


                    <button class="btn">Update</button>


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


