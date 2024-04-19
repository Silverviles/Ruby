<%--
  Created by IntelliJ IDEA.
  User: Migara
  Date: 4/20/2024
  Time: 2:04 AM
  To change this template use File | Settings | File Templates.
--%>
<div class="container">

    <div class="xxx">
        <h1 class="Topic">Events</h1>
        <header class="section_container header_container">
            <h2 class="registration_heading">Add Events</h2>

            <div class="registration_container">
                <form action="${pageContext.request.contextPath}/event/eventAdd" method="post">

                    <div class="form_group">
                        <div class="input_group">
                            <label>Event Name :</label>
                            <input type="text" name="eventName" id="eventName" required>
                        </div>
                    </div>

                    <div class="form_group">
                        <div class="input_group">
                            <label>Availability :</label>
                            <input type="checkbox" id="availability" name="availability" value="true" required>
                            <br>
                        </div>
                    </div>


                    <div class="form_group">
                        <div class="input_group">
                            <label>Discription :</label>
                            <input type="text" name="description" id="description" required>
                        </div>

                    </div>

                    <div class="form-group">
                        <label for="eventImage">Image Topic:</label>
                        <input type="file" id="image" name="image" accept="image/*" required>
                    </div>

                    <div class="form_group">
                        <div class="input_group">
                            <label>Price :</label>
                            <input type="text" name="price" id="price" pattern="[0-9]+(\.[0-9]+)?" required>
                        </div>
                    </div>








                    <button class="btn">Submit</button>


                </form>

            </div>

        </header>


    </div>

</div>


