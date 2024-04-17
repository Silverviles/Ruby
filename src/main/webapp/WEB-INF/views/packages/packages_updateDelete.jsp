<%@ page import="com.happyman.Ruby.packages.dto.PackageDTO" %>
<%@ page import="java.util.List" %>
<%@ page import="com.happyman.Ruby.masterService.dao.Addon" %>
<% List<PackageDTO> packageList = (List<PackageDTO>) request.getAttribute("allPackages"); %>

<header class="section_container header_container">
    <h2 class="booking_heading">Packages</h2>
    <div class="booking_container">
        <table>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Description</th>
                <th>Price</th>
                <th>Discontinue Date</th>
                <th>Availability</th>
                <th>Type</th>
                <th>No of Max Adults</th>
                <th>Addons</th>
            </tr>

            <div class="tbody">
                <% for (PackageDTO packageDTO : packageList) {%>
                    <tr>
                        <td><%= packageDTO.getId()%>></td>
                        <td><%= packageDTO.getName()%>
                        </td>
                        <td><%= packageDTO.getDescription()%>></td>
                        <td><%= packageDTO.getPrice()%>></td>
                        <td><%= packageDTO.getDiscontinueDate()%>></td>
                        <td><%= packageDTO.getAvailability()%>
                        </td>
                        <td><%= packageDTO.getType()%>></td>
                        <td><%= packageDTO.getMaxAdults()%>
                        </td>
                        <td>
                            <% for (Addon addon : packageDTO.getAddonList()) {%>
                            <div><%= addon.getAddonName()%>
                            </div>
                            <br>
                            <% } %>
                        </td>

                        <td>
                            <div class="editdeleteIcon" title="update" onclick="showUpdatePopup()">
                                <i class="fa-solid fa-pen-to-square" id="update_btn"></i>

                                <div class="popup_background popup" id="popup_update_package" >

                                    <div class="popup_container" >
                                        <div class="popup_close">
                                            <i class="fa-solid fa-xmark"></i>
                                        </div>
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

                                            <button class="btn">Update</button>
                                        </form>
                                    </div>

                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="editdeleteIcon" title="Delete" onclick="showDeletePopup()">
                                <i class="fa-solid fa-trash" id="delete_btn"></i>
                                <div class="popup_background popup" id="popup_delete_package">
                                    <div class="popup_close">
                                        <i class="fa-solid fa-xmark"></i>
                                    </div>
                                    <div class="popup_container">
                                        <p>Are you sure want to delete the package?</p>
                                        <br>
                                        <form action="">
                                            <button type="submit">Yes</button>
                                            <button>No</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>
                <% } %>
            </div>

        </table>
    </div>
</header>
<script>
    function showUpdatePopup() {
        var updatePopup = document.getElementById("popup_update_package");
        var deletePopup = document.getElementById("popup_delete_package");

        if (deletePopup.classList.contains("show")) {
            deletePopup.classList.remove("show");
        }

        updatePopup.classList.toggle("show");
    }

    function showDeletePopup() {
        var updatePopup = document.getElementById("popup_update_package");
        var deletePopup = document.getElementById("popup_delete_package");

        if (updatePopup.classList.contains("show")) {
            updatePopup.classList.remove("show");
        }

        deletePopup.classList.toggle("show");
    }

</script>
<script src="${pageContext.request.contextPath}/scripts/admin/admin.js"></script>