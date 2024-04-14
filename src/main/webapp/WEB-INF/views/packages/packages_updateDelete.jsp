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
                <c:forEach var="package" items="${package}">
                    <tr>
                        <td>${package.id}</td>
                        <td>${package.name}</td>
                        <td>${package.description}</td>
                        <td>${package.price}</td>
                        <td>${package.discontinueDate}</td>
                        <td>${package.availability}</td>
                        <td>${package.type}</td>
                        <td>${package.maxAdults}</td>
                        <td>
                            <c:forEach var="addons" items="${addons}">
                                <div>${addons.addonName}</div><br>
                            </c:forEach>
                        </td>
                    </tr>

                    <div class="edit" title="Edit">
                        <i class="fa-solid fa-pen-to-square"></i>
                    </div>

                    <div class="delete" title="Delete">
                        <i class="fa-solid fa-trash"></i>
                    </div>
                </c:forEach>
            </div>

        </table>
    </div>
</header>

<script src="${pageContext.request.contextPath}/scripts/admin/admin.js"></script>