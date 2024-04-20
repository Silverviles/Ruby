<%--
  Created by IntelliJ IDEA.
  User: Migara
  Date: 4/20/2024
  Time: 2:04 AM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.o">
    <title>Add events</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/event/eventAdd.css">
</head>
<div class="container">

    <div class="xxx">
        <h1 class="Topic">Events</h1>
        <header class="section_container header_container">
            <h2 class="registration_heading">Add Events</h2>

            <div class="registration_container">
                <form action="${pageContext.request.contextPath}/event/addEvents" method="post">

                    <div class="form_group">
                        <div class="input_group">
                            <label>Event Name :</label><br>
                            <input type="text" name="eventName" id="eventName" required>
                        </div>
                    </div>

                    <div class="form_group">
                        <div class="input_group">
                            <label>Availability :</label>
                            <div class="check"><input type="checkbox" id="availability" name="availability" value="true" ></div>
                            <br>
                        </div>
                    </div>


                    <div class="form_group">
                        <div class="input_group">
                            <div class="input_group">
                                <label>Description :</label><br>
                                <input type="text" name="description" id="description" required>
                            </div>
                        </div>

                    </div>
                    <div class="form_group">
                        <div class="input_group">
                            <label>Image Type :</label><br>
                            <input type="file" id="image" name="image" accept="image/* required">
                        </div>
                    </div>

                    <div class="form_group">
                        <div class="input_group">
                            <label>Price :</label><br>
                            <input type="text" name="price" id="price" pattern="[0-9]+(\.[0-9]+)?" required>
                        </div>
                    </div>

                    <button class="btn">Submit</button>


                </form>

            </div>

        </header>


    </div>

</div>
</html>