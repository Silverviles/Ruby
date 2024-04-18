<header class="section_container header_container">
    <h2 class="booking_heading">Add New Package</h2>
    <div class="booking_container">

        <form method="post" action="${pageContext.request.contextPath}/addons/addAddon">

            <div class="form_group">
                <div class="input_group">
                    <label for="addonName">Addon Name</label><br>
                    <input type="text" id="addonName" name="addonName">
                </div>
                <p>Name of the addon</p>
            </div>

            <div class="form_group">
                <div class="input_group">
                    <label for="description">Description:</label><br>
                    <textarea id="description" name="description" rows="4" required></textarea>
                </div>
                <p>Description about the addon</p>
            </div>

            <div class="form_group">
                <div class="input_group">
                    <label for="price">Price:</label><br>
                    <input type="number" id="price" name="price" step="0.01" required>
                </div>
                <p>Price of the addon</p>
            </div>

            <div class="form_group">
                <div class="input_group">
                    <input type="checkbox" id="availability" name="availability" value="1">
                    <label for="availability">: Availability</label>
                </div>
                <p>1 for available, 0 for unavailable</p>
            </div>

            <div class="form_group">
                <div class="input_group">
                    <label for="image">Add Image:</label><br>
                    <input type="file" id="image" name="image">
                </div>
            </div>

            <button class="btn">Add</button>
        </form>
    </div>
</header>

