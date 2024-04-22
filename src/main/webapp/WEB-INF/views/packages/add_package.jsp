<%@ page import="java.util.List" %>
<%@ page import="com.happyman.Ruby.masterService.dao.Addon" %>
<%List<Addon> addons = (List<Addon>) request.getAttribute("addons");%>

<header class="section_container header_container">
        <h2 class="booking_heading">Add New Package</h2>
        <div class="booking_container">
            <form method="post" action="${pageContext.request.contextPath}/packages/addPackage">
                <div class="form_group">
                    <div class="input_group">
                        <label for="packageName">Package Name</label><br>
                        <input type="text" id="packageName" name="packageName">
                    </div>
                    <p>Name of the package</p>
                </div>
                <div class="form_group">
                    <div class="input_group">
                        <label for="packageDescription">Description:</label><br>
                        <textarea id="packageDescription" name="packageDescription" rows="4" required></textarea>
                    </div>
                    <p>Description about the package</p>
                </div>
                <div class="form_group">
                    <div class="input_group">
                        <label for="packagePrice">Price:</label><br>
                        <input type="number" id="packagePrice" name="packagePrice" step="0.01" required>
                    </div>
                    <p>Base price of the package</p>
                </div>
                <div class="form_group">
                    <div class="input_group">
                        <label for="packageDiscontinueDate">Discontinue Date:</label><br>
                        <input type="date" id="packageDiscontinueDate" name="packageDiscontinueDate">
                    </div>
                    <p>Discontinue date of the package</p>
                </div>
                <div class="form_group">
                    <div class="input_group">
                        <input type="checkbox" id="packageAvailability" name="packageAvailability" value="true">
                        <label for="packageAvailability">: Availability</label>
                    </div>
                    <p>1 for available, 0 for unavailable</p>
                </div>
                <div class="form_group">
                    <div class="input_group">
                        <label for="packageType">Type:</label><br>
                        <select id="packageType" name="packageType" required>
                            <option value="Family">Family</option>
                            <option value="Couple">Couple</option>
                            <option value="Business">Business</option>
                            <option value="Large_Group">Large Group</option>
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

                <div class="form_group">
                    <div class="input_group">
                        <label>Addons:</label>
                        <br>
                        <% if (addons != null && !addons.isEmpty()) {
                            for (Addon addon : addons) { %>
                        <input type="checkbox" id="addonList<%= addon.getId() %>" name="addonList"
                               value="<%= addon.getId() %>">
                        <label for="addonList<%= addon.getId() %>"><%= addon.getAddonName() %>
                        </label>
                        <br>
                        <% }
                        }%>

                    </div>
                </div>

                <button type="submit" class="btn">Add</button>
            </form>
        </div>
    </header>

