<%@ page import="com.happyman.Ruby.masterService.dao.Menu" %>
<%--
  Created by IntelliJ IDEA.
  User: Dilshan
  Date: 27/04/2024
  Time: 12:48
--%>

<% Menu menu = (Menu) request.getAttribute("editMenu"); %>

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
            <form method="post" action="${pageContext.request.contextPath}/food/save">
                <h3 class="title">Add Food</h3>
                <div class="input-container">
                    <input type="hidden" name="menuId" class="input"
                           value="<%= menu != null ? menu.getId() : "" %>"/>
                </div>
                <div class="input-container">
                    <input type="text" id="menuName" name="menuName" pattern="[A-Za-z ]+"
                           value="<%= menu != null ? menu.getMenuName() : "" %>" class="input" required/>
                    <label for="menuName">Food Name: </label>
                    <span>Food Name</span>
                    <br>
                    <span id="foodNameError" style="color: red;"></span>
                </div>
                <div class="input-container">
                    <input type="text" id="dishType" name="dishType"
                           value="<%= menu != null ? menu.getDishType() : "" %>" class="input" required/>
                    <label for="dishType">Dish Type: </label>
                    <span>Dish Type</span>
                </div>
                <div class="input-container">


                    <select id="mealType" name="mealType" value="<%= menu != null ? menu.getMealType() : "" %>" class="input" required>
                        <option value="">Select Meal Type</option>
                        <option value="breakfast">Breakfast</option>
                        <option value="lunch">Lunch</option>
                        <option value="dinner">Dinner</option></select>
                    <span>Meal Type</span>

<%--                    <input type="text" id="mealType" name="mealType"--%>
<%--                           value="<%= menu != null ? menu.getMealType() : "" %>" class="input" required/>--%>
<%--                    <label for="mealType">Meal Type: </label>--%>
<%--                    <span>Meal Type</span>--%>
                </div>
                <div class="input-container checkboxes">
                    <input type="checkbox" id="availability" name="availability"
                           value="<%= menu != null ? menu.getAvailability() : ""%>" class="input" required/>
                    <label for="availability">Availability: </label>
                    <span>Availability</span>
                </div>
                <div class="input-container">
                    <input type="number" id="price" name="price" min="0" value="<%= menu != null ? menu.getPrice() : ""%>" class="input" required/>
                    <label for="price">Price: </label>
                    <span>Price</span>
                    <br>
                    <span id="priceError" style="color: red"></span>
                </div>
                <input type="submit" value="Submit" class="btn"/>
            </form>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function() {
            // Event listener for the "Food Name" field
            $("#menuName").on("input", function() {
                var foodName = $(this).val();
                var foodNameError = $("#foodNameError");
                if (!foodName.match(/^[A-Za-z ]+$/)) {
                    foodNameError.text("Please enter only letters");
                } else {
                    foodNameError.text("");
                }
            });

            // Event listener for the "Price" field
            $("#price").on("input", function() {
                var price = $(this).val();
                var priceError = $("#priceError");
                if (price < 0) {
                    priceError.text("Price cannot be negative");
                } else {
                    priceError.text("");
                }
            });
        });
    </script>

</div>
