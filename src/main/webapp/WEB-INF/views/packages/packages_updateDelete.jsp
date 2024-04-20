<%@ page import="com.happyman.Ruby.packages.dto.PackageDTO" %>
<%@ page import="java.util.List" %>
<%@ page import="com.happyman.Ruby.masterService.dao.Addon" %>

<%
    @SuppressWarnings("unchecked")
    List<Addon> addons = (List<Addon>) request.getAttribute("addons");
    @SuppressWarnings("unchecked")
    List<PackageDTO> packageList = (List<PackageDTO>) request.getAttribute("allPackages");
%>

<header class="section_container header_container">
    <h2 class="booking_heading">Packages</h2>
    <div class="booking_container" style="width: 80vw;">
        <table style="width: 80vw; table-layout: fixed;">
            <tr>
                <th>ID</th>
                <th style="width: 15%">Name</th>
                <th style="width: 20%">Description</th>
                <th>Price</th>
                <th style="width: 10%">Discontinue Date</th>
                <th>Availability</th>
                <th>Type</th>
                <th>No of Max Adults</th>
                <th style="width: 13%">Addons</th>
            </tr>

            <% if (packageList != null && !packageList.isEmpty()) {
                for (PackageDTO packageDTO : packageList) {%>
            <tr>
                <td><%= packageDTO.getId()%></td>
                <td><%= packageDTO.getPackageName()%></td>
                <td><%= packageDTO.getPackageDescription()%></td>
                <td><%= packageDTO.getPackagePrice()%></td>
                <td><%= packageDTO.getPackageDiscontinueDate()%></td>
                <td><%= packageDTO.getPackageAvailability()%></td>
                <td><%= packageDTO.getPackageType()%></td>
                <td><%= packageDTO.getMaxAdults()%></td>
                <td>
                    <% if (packageDTO.getAddonList() != null && !packageDTO.getAddonList().isEmpty()) {
                        for (Addon addon : packageDTO.getAddonList()) {%>
                    <div><%= addon.getAddonName()%></div>
                    <% }
                    } else { %>
                    <div>No addon available</div>
                    <% }%>
                </td>

                    <td>
                            <i class="fa-solid fa-pen-to-square" id="update_btn<%= packageDTO.getId()%>"></i>

                            <div class="popup_background popup" id="popup_update_package<%= packageDTO.getId()%>">

                                <div class="popup_container">
                                    <div class="popup_close">
                                        <i class="fa-solid fa-xmark"></i>
                                    </div>
                                    <form method="post" action="packages/updatePackage">
                                        <div class="form_group">
                                            <div class="input_group">
                                                <label for="packageName">Package Name</label><br>
                                                <input type="text" id="packageName" name="packageName"
                                                       value="<%= packageDTO.getPackageName()%>">
                                            </div>
                                            <p>Name of the package</p>
                                        </div>
                                        <div class="form_group">
                                            <div class="input_group">
                                                <label for="packageDescription">Description:</label><br>
                                                <textarea id="packageDescription"
                                                          name="packageDescription"><%= packageDTO.getPackageDescription() %></textarea>
                                            </div>
                                            <p>Description about the package</p>
                                        </div>
                                        <div class="form_group">
                                            <div class="input_group">
                                                <label for="packagePrice">Price:</label><br>
                                                <input type="number" id="packagePrice" name="packagePrice"
                                                       step="0.01" required
                                                       value="<%= packageDTO.getPackagePrice()%>">
                                            </div>
                                            <p>Base price of the package</p>
                                        </div>
                                        <div class="form_group">
                                            <div class="input_group">
                                                <label for="packageDiscontinueDate">Discontinue Date:</label><br>
                                                <input type="date" id="packageDiscontinueDate"
                                                       name="packageDiscontinueDate"
                                                       value="<%= packageDTO.getPackageDiscontinueDate()%>">
                                            </div>
                                            <p>Discontinue date of the package</p>
                                        </div>
                                        <div class="form_group">
                                            <div class="input_group">
                                                <input type="checkbox" id="packageAvailability"
                                                       name="packageAvailability"
                                                       value="<%= packageDTO.getPackageAvailability()%>">
                                                <label for="packageAvailability">: Availability</label>
                                            </div>
                                            <p>1 for available, 0 for unavailable</p>
                                        </div>
                                        <div class="form_group">
                                            <div class="input_group">
                                                <label for="packageType">Type:</label><br>
                                                <select id="packageType" name="packageType" required>
                                                    <option value="Family" <%= packageDTO.getPackageType().equals("Family") ? "selected" : "" %>>
                                                        Family
                                                    </option>
                                                    <option value="Couple" <%= packageDTO.getPackageType().equals("Couple") ? "selected" : "" %>>
                                                        Couple
                                                    </option>
                                                    <option value="Business" <%= packageDTO.getPackageType().equals("Business") ? "selected" : "" %>>
                                                        Business
                                                    </option>
                                                    <option value="Large Group" <%= packageDTO.getPackageType().equals("Large Group") ? "selected" : "" %>>
                                                        Large Group
                                                    </option>
                                                </select>
                                            </div>
                                            <p>Discontinue date of the package</p>
                                        </div>
                                        <div class="form_group">
                                            <div class="input_group">
                                                <label for="maxAdults">Maximum Adults:</label><br>
                                                <input type="number" id="maxAdults" name="maxAdults"
                                                       value="<%= packageDTO.getMaxAdults()%>">
                                            </div>
                                            <p>The maximum number of adults allowed</p>
                                        </div>

                                        <div class="form_group">
                                            <div class="input_group">
                                                <label>Addons:</label>
                                                <% if (addons != null && !addons.isEmpty()) {
                                                    for (Addon addon : addons) { %>
                                                <input type="checkbox" id="addonList<%= addon.getId() %>"
                                                       name="addonList" value="<%= addon.getId() %>">
                                                <label for="addonList<%= addon.getId() %>"><%= addon.getAddonName() %>
                                                </label>
                                                <br>
                                                <% }
                                                }%>

                                            </div>
                                        </div>
                                        <button class="btn" type="reset">Reset</button>
                                        <button class="btn" type="submit">Update</button>
                                    </form>
                                </div>

                        </div>
                    </td>
                    <td>
                            <i class="fa-solid fa-trash" id="delete_btn<%= packageDTO.getId()%>"></i>
                            <div class="popup_background popup" id="popup_delete_package<%= packageDTO.getId()%>">
                                <div class="popup_container">
                                    <div class="popup_close">
                                        <i class="fa-solid fa-xmark"></i>
                                    </div>
                                    <p>Are you sure want to delete the package?</p>
                                    <br>
                                    <form action="packages/deletePackage" method="post">
                                        <button class="btn" type="submit">Yes</button>
                                        <button class="btn" >No</button>
                                    </form>
                                </div>
                            </div>
                    </td>
                </tr>
                <%
                    }
                } else {
                %>
                <tr>
                    <td colspan="9" style="text-align: center"> No Records Available.</td>
                </tr>
                <% } %>


        </table>
    </div>
</header>
<script>
    // Function to show the update popup
    function showUpdatePopup(event, id) {
        event.preventDefault();
        event.stopPropagation();

        var updatePopup = document.getElementById("popup_update_package" + id);
        var deletePopup = document.getElementById("popup_delete_package" + id);

        if (deletePopup.classList.contains("show")) {
            deletePopup.classList.remove("show");
        }

        updatePopup.classList.toggle("show");
    }

    // Function to show the delete popup
    function showDeletePopup(event, id) {
        event.preventDefault();
        event.stopPropagation();

        var updatePopup = document.getElementById("popup_update_package" + id);
        var deletePopup = document.getElementById("popup_delete_package" + id);

        if (updatePopup.classList.contains("show")) {
            updatePopup.classList.remove("show");
        }

        deletePopup.classList.toggle("show");
    }

    // Function to hide the popup
    function hidePopup(popupId) {
        var popup = document.getElementById(popupId);
        popup.classList.remove("show");
    }

    // Add event listeners to each update and delete icon
    var updateIcons = document.querySelectorAll('.fa-pen-to-square');
    var deleteIcons = document.querySelectorAll('.fa-trash');
    var closeButtons = document.querySelectorAll('.popup_close');

    updateIcons.forEach(function(icon) {
        icon.addEventListener('click', function(event) {
            var id = icon.getAttribute('id').replace('update_btn', '');
            showUpdatePopup(event, id);
        });
    });

    deleteIcons.forEach(function(icon) {
        icon.addEventListener('click', function(event) {
            var id = icon.getAttribute('id').replace('delete_btn', '');
            showDeletePopup(event, id);
        });
    });

    closeButtons.forEach(function(button) {
        button.addEventListener('click', function(event) {
            var popupId = button.parentElement.parentElement.getAttribute('id');
            hidePopup(popupId);
        });
    });
</script>

