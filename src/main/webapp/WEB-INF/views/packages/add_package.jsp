<header class="section_container header_container">
        <h2 class="booking_heading">Add New Package</h2>
        <div class="booking_container">
            <form method="post" action="packages/addPackage">
                <div class="form_group">
                    <div class="input_group">
                        <label for="packgeName">Package Name</label><br>
                        <input type="text" id="packgeName" name="packgeName">
                    </div>
                    <p>Name of the package</p>
                </div>
                <div class="form_group">
                    <div class="input_group">
                        <label for="pdescription">Description:</label><br>
                        <textarea id="pdescription" name="pdescription" rows="4" required></textarea>
                    </div>
                    <p>Description about the package</p>
                </div>
                <div class="form_group">
                    <div class="input_group">
                        <label for="pprice">Price:</label><br>
                        <input type="number" id="pprice" name="pprice" step="0.01" required>
                    </div>
                    <p>Base price of the package</p>
                </div>
                <div class="form_group">
                    <div class="input_group">
                        <label for="discontinueDate">Discontinue Date:</label><br>
                        <input type="date" id="discontinueDate" name="discontinueDate">
                    </div>
                    <p>Discontinue date of the package</p>
                </div>
                <div class="form_group">
                    <div class="input_group">
                        <input type="checkbox" id="pAvailability" name="pAvailability" value="1">
                        <label for="pAvailability">: Availability</label>
                    </div>
                    <p>1 for available, 0 for unavailable</p>
                </div>
                <div class="form_group">
                    <div class="input_group">
                        <label for="type">Type:</label><br>
                        <select id="type" name="type" required>
                            <option value="Family">Family</option>
                            <option value="Couple">Couple</option>
                            <option value="Business">Business</option>
                            <option value="Large Group">Large Group</option>
                        </select>
                    </div>
                    <p>Discontinue date of the package</p>
                </div>
                <div class="form_group">
                    <div class="input_group">
                        <label for="maxAdults">Maximum Adults:</label><br>
                        <input type="number" id="maxAdults" name="maxAdults">
                    </div>
                    <p>The maximum number of adults allowed</p>
                </div>

                <button class="btn">Add</button>
            </form>
        </div>
    </header>

<script src="${pageContext.request.contextPath}/scripts/admin/admin.js"></script>
