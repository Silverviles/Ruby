<%@ page import="com.happyman.Ruby.masterService.dao.FoodOrder" %>
<%@ page import="java.util.List" %>
<%@ page import="com.happyman.Ruby.masterService.dao.TableAvailability" %><%--
  Created by IntelliJ IDEA.
  User: Jola
  Date: 5/1/2024
  Time: 12:42 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<% List<TableAvailability> tables = (List<TableAvailability>) request.getAttribute("seatList"); %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>Seat Map</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/restaurant/tableNew.css" />
</head>
<body>

<div class="body-container">


    <div>
        <h1>Header</h1>
    </div>

    <div class="seat-map-container">
        <div style="display: flex; align-items: center">
            <div class="circle selected"></div>
            <span>Selected</span>
        </div>
        <div style="display: flex; align-items: center">
            <div class="circle available"></div>
            <span>Available</span>
        </div>
        <div style="display: flex; align-items: center">
            <div class="circle reserved"></div>
            <span>Reserved</span>
        </div>
        <div style="display: flex; align-items: center">
            <div class="circle not-available"></div>
            <span>Not-Available</span>
        </div>
    </div>

    <!--seat map-->

    <div class="seat-map">
        <!--table2-->
        <div class="table02-container">
            <div
                    id="2"
                    <% TableAvailability table2 = tables.stream().filter(table -> table.getId().equals(2)).findFirst().orElse(null); %>
                    class="table02 <%=table2.getSeatAvailability() %>"
                    data-tableNum="2"
                    onclick="toggleColor('table02')"
            ></div>
            <!-- right bottom seat - table 2 -->
            <div class="right-bottom-seat-table02"></div>
            <div class="right-bottom-seat-rest-table02"></div>
            <!-- left bottom seat - table 2 -->
            <div class="left-bottom-seat-table02"></div>
            <div class="left-bottom-seat-rest-table02"></div>
            <!-- left top seat - table 2 -->
            <div class="left-top-seat-table02"></div>
            <div class="left-top-seat-rest-table02"></div>
            <!-- right top seat - table 2 -->
            <div class="right-top-seat-table02"></div>
            <div class="right-top-seat-rest-table02"></div>
            <div class="table02-number">2</div>
        </div>

        <!--table1-->
        <div class="table01-container">
            <!-- table01 table -->
            <div
                    id="1"
                    <% TableAvailability table1 = tables.stream().filter(table -> table.getId().equals(1)).findFirst().orElse(null); %>
                    class="table01 <%=table2.getSeatAvailability() %>"
                    data-tableNum="1"
                    onclick="toggleColor('table01')"
            ></div>
            <!-- top seat - table 1 -->
            <div class="top-seat-table01"></div>
            <div class="top-seat-rest-table01"></div>
            <!-- bottom seat - table 1 -->
            <div class="bottom-seat-table01"></div>
            <div class="bottom-seat-rest-table01"></div>
            <!-- right seat - table 1 -->
            <div class="right-seat-table01"></div>
            <div class="right-seat-rest-table01"></div>
            <!-- table01 number -->
            <div class="table01-number">1</div>
        </div>

        <!--table3-->
        <div class="table03-container">
            <div
                    id="3"
                    <% TableAvailability table3 = tables.stream().filter(table -> table.getId().equals(3)).findFirst().orElse(null); %>
                    class="table03 <%=table3.getSeatAvailability() %>"
                    data-tableNum="3"
                    onclick="toggleColor('table03')"
            ></div>
            <!-- bottom seat - table 3 -->
            <div class="bottom-seat-table03"></div>
            <div class="bottom-seat-rest-table03"></div>
            <!-- top seat table - 3 -->
            <div class="top-seat-table03"></div>
            <div class="top-seat-rest-table03"></div>
            <!-- left seat table - 3 -->
            <div class="left-seat-table03"></div>
            <div class="left-seat-rest-table03"></div>
            <!--table03 number-->
            <div class="table03-number">3</div>
        </div>

        <!--table11-->
        <div class="table11-container">
            <div
                    id="11"
                    <% TableAvailability table11 = tables.stream().filter(table -> table.getId().equals(11)).findFirst().orElse(null); %>
                    class="table11 <%=table11.getSeatAvailability() %>"
                    data-tableNum="11"
                    onclick="toggleColor('table11')"
            ></div>
            <!-- left seat table - 11 -->
            <div class="left-seat-table11"></div>
            <div class="left-seat-rest-table11"></div>
            <!-- right seat table - 11 -->
            <div class="right-seat-table11"></div>
            <div class="right-seat-rest-table11"></div>
            <!-- top seat table - 11 -->
            <div class="top-seat-table11"></div>
            <div class="top-seat-rest-table11"></div>
            <!--table11 number-->
            <div class="table11-number">11</div>
        </div>

        <!--table12-->
        <div class="table12-container">
            <div
                    id="12"
                    <% TableAvailability table12 = tables.stream().filter(table -> table.getId().equals(12)).findFirst().orElse(null); %>
                    class="table12 <%=table2.getSeatAvailability() %>"
                    data-tableNum="12"
                    onclick="toggleColor('table12')"
            ></div>
            <!-- left seat table - 12 -->
            <div class="left-seat-table12"></div>
            <div class="left-seat-rest-table12"></div>
            <!-- right seat table - 12 -->
            <div class="right-seat-table12"></div>
            <div class="right-seat-rest-table12"></div>
            <!-- top seat table - 12 -->
            <div class="top-seat-table12"></div>
            <div class="top-seat-rest-table12"></div>
            <!--table12 number-->
            <div class="table12-number">12</div>
        </div>

        <!--table4-->
        <div class="table04-container">
            <!-- top seat table - 4 -->
            <div class="top-seat-table04"></div>
            <div class="top-seat-rest-table04"></div>
            <!-- bottom seat table - 4 -->
            <div class="bottom-seat-table04"></div>
            <div class="bottom-seat-rest-table04"></div>
            <div
                    id="4"
                    <% TableAvailability table4 = tables.stream().filter(table -> table.getId().equals(4)).findFirst().orElse(null); %>
                    class="table04 <%=table4.getSeatAvailability() %>"
                    data-tableNum="4"
                    onclick="toggleColor('table04')"
            ></div>
            <div class="table04-number">4</div>
        </div>

        <!--table10-->
        <div class="table10-container">
            <!-- top seat table - 10 -->
            <div class="top-seat-table10"></div>
            <div class="top-seat-rest-table10"></div>
            <!-- bottom seat table - 10 -->
            <div class="bottom-seat-table10"></div>
            <div class="bottom-seat-rest-table10"></div>
            <!-- table10 table  -->
            <div
                    id="10"
                    <% TableAvailability table10 = tables.stream().filter(table -> table.getId().equals(10)).findFirst().orElse(null); %>
                    class="table10 <%=table2.getSeatAvailability() %>"
                    data-tableNum="10"
                    onclick="toggleColor('table10')"
            ></div>
            <div class="table10-number">10</div>
        </div>

        <!--table8-->
        <div class="table08-container">
            <!-- top seat table - 8 -->
            <div class="top-seat-table08"></div>
            <div class="top-seat-rest-table08"></div>
            <!-- bottom seat table - 8 -->
            <div class="bottom-seat-table08"></div>
            <div class="bottom-seat-rest-table08"></div>

            <div
                    id="8"
                    <% TableAvailability table8 = tables.stream().filter(table -> table.getId().equals(8)).findFirst().orElse(null); %>
                    class="table08 <%=table8.getSeatAvailability() %>"
                    data-tableNum="8"
                    onclick="toggleColor('table08')"
            ></div>

            <div class="table08-number">8</div>
        </div>

        <!--table9-->
        <div class="table09-container">
            <!-- top seat table - 9 -->
            <div class="top-seat-table09"></div>
            <div class="top-seat-rest-table09"></div>

            <!-- bottom seat table - 9 -->
            <div class="bottom-seat-table09"></div>
            <div class="bottom-seat-rest-table09"></div>

            <div
                    id="9"
                    <% TableAvailability table9 = tables.stream().filter(table -> table.getId().equals(9)).findFirst().orElse(null); %>
                    class="table09 <%=table9.getSeatAvailability() %>"
                    data-tableNum="9"
                    onclick="toggleColor('table09')"
            ></div>
            <div class="table09-number">9</div>
        </div>

        <!--table5-->
        <div class="table05-container">
            <!-- top seat table - 5 -->
            <div class="top-seat-table05"></div>
            <div class="top-seat-rest-table05"></div>

            <!-- bottom seat table - 5 -->
            <div class="bottom-seat-table05"></div>
            <div class="bottom-seat-rest-table05"></div>

            <div
                    id="5"
                    <% TableAvailability table5 = tables.stream().filter(table -> table.getId().equals(5)).findFirst().orElse(null); %>
                    class="table05 <%=table5.getSeatAvailability() %>"
                    data-tableNum="5"
                    onclick="toggleColor('table05')"
            ></div>
            <div class="table05-number">5</div>
        </div>

        <!--table6-->
        <div class="table06-container">
            <!-- top seat table - 6 -->
            <div class="top-seat-table06"></div>
            <div class="top-seat-rest-table06"></div>

            <!-- bottom seat table - 6 -->
            <div class="bottom-seat-table06"></div>
            <div class="bottom-seat-rest-table06"></div>

            <div
                    id="6"
                    <% TableAvailability table6 = tables.stream().filter(table -> table.getId().equals(6)).findFirst().orElse(null); %>
                    class="table06 <%=table6.getSeatAvailability() %>"
                    data-tableNum="6"
                    onclick="toggleColor('table06')"
            ></div>
            <div class="table06-number">6</div>
        </div>

        <!--table7-->
        <div class="table07-container">
            <div
                    id="7"
                    <% TableAvailability table7 = tables.stream().filter(table -> table.getId().equals(7)).findFirst().orElse(null); %>
                    class="table07 <%=table7.getSeatAvailability() %>"
                    data-tableNum="7"
                    onclick="toggleColor('table07')"
            ></div>
            <!-- top seat table - 7 -->
            <div class="top-seat-table07"></div>
            <div class="top-seat-rest-table07"></div>

            <!-- bottom right seat table - 7 -->
            <div class="bottom-right-seat-table07"></div>
            <div class="bottom-right-seat-rest-table07"></div>

            <!-- bottom left table - 7 -->
            <div class="bottom-left-seat-table07"></div>
            <div class="bottom-left-seat-rest-table07"></div>

            <!-- top right seat table - 7 -->
            <div class="top-right-seat-table07"></div>
            <div class="top-right-seat-rest-table07"></div>

            <!-- top left seat table - 7 -->
            <div class="top-left-seat-table07"></div>
            <div class="top-left-seat-rest-table07"></div>

            <!-- bottom seat table - 7 -->
            <div class="bottom-seat-table07"></div>
            <div class="bottom-seat-rest-table07"></div>

            <!-- right seat table - 7 -->
            <div class="right-seat-table07"></div>
            <div class="right-seat-rest-table07"></div>

            <!-- left seat table - 7 -->
            <div class="left-seat-table07"></div>
            <div class="left-seat-rest-table07"></div>

            <div class="table07-number">7</div>
        </div>
    </div>

    <div>
        <p
                id="selectedTableDisplay"
                style="font-size: large; font-weight: bold"
        ></p>
        <form method="get" action="${pageContext.request.contextPath}/restaurant/newmealpage">

                <button class="btn btn-primary">
                    continue
                </button>

        </form>

    </div>

<%--    <script>--%>
        // function ToggleEvent(id) {
        //     var shape = document.getElementById(id);
        //     var tableValue = shape.getAttribute("data-tableNum");
        //
        //     if (shape.classList.contains("available")) {
        //         shape.classList.remove("available");
        //         shape.classList.add("selected");
        //         alert("table 1 selected");
        //     } else if (shape.classList.contains("selected")) {
        //         shape.classList.remove("selected");
        //         shape.classList.add("available");
        //     } else if (shape.classList.contains("reserved")) {
        //         alert("table 1 is reserved");
        //     } else {
        //         alert("table 1 is not available");
        //     }
        // }

        // var selectedTableId = null; // Variable to store the ID of the currently selected table
        //
        // function toggleColor(id) {
        //     var circle = document.getElementById(id);
        //     var selectedTableDisplay = document.getElementById(
        //         "selectedTableDisplay"
        //     );
        //
        //     if (circle.classList.contains("not-available")) {
        //         alert("Table not available");
        //     } else if (circle.classList.contains("reserved")) {
        //         alert("Table already booked");
        //     } else {
        //         if (id === selectedTableId) {
        //             // If the clicked table is already selected, deselect it
        //             circle.classList.remove("selected");
        //             circle.classList.add("available");
        //             selectedTableId = null;
        //             selectedTableDisplay.textContent = "Selected Table: None";
        //             localStorage.removeItem("selectedTable"); // Remove from localStorage
        //         } else {
        //             // If a new table is selected
        //             if (selectedTableId) {
        //                 // If there's already a selected table, deselect it
        //                 var previousSelectedTable =
        //                     document.getElementById(selectedTableId);
        //                 previousSelectedTable.classList.remove("selected");
        //                 previousSelectedTable.classList.add("available");
        //             }
        //             // Select the clicked table
        //             circle.classList.remove("available");
        //             circle.classList.add("selected");
        //             selectedTableId = id;
        //             selectedTableDisplay.textContent = "Selected Table: " + id;
        //             localStorage.setItem("selectedTable", id); // Save to localStorage
        //         }
        //     }
        // }


<%--    </script>--%>
</div>
<%}%>
</body>
</html>
