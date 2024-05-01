<%--
  Created by IntelliJ IDEA.
  User: Jola
  Date: 5/1/2024
  Time: 12:42 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                    id="table02"
                    class="table02-table"
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
                    id="table01"
                    class="table01-table"
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
            table03 table
            <div
                    id="table03"
                    class="table03-table"
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
                    id="table11"
                    class="table11-table"
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
                    id="table12"
                    class="table12-table"
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
                    id="table04"
                    class="table04-table"
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
                    id="table10"
                    class="table10-table"
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
                    id="table08"
                    class="table08-table"
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
                    id="table09"
                    class="table09-table"
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
                    id="table05"
                    class="table05-table"
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
                    id="table06"
                    class="table06-table"
                    onclick="toggleColor('table06')"
            ></div>
            <div class="table06-number">6</div>
        </div>

        <!--table7-->
        <div class="table07-container">
            <div
                    class="table07-table"
                    id="table07"
                    class="available"
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
        <button
                class="btn btn-primary"
                onclick="window.location.href='Meal.html'"
        >
            Continue
        </button>
    </div>

    <script>
        var selectedTableId = null; // Variable to store the ID of the currently selected table

        function toggleColor(id) {
            var circle = document.getElementById(id);
            var selectedTableDisplay = document.getElementById(
                "selectedTableDisplay"
            );

            if (circle.classList.contains("not-available")) {
                alert("Table not available");
            } else if (circle.classList.contains("reserved")) {
                alert("Table already booked");
            } else {
                if (id === selectedTableId) {
                    // If the clicked table is already selected, deselect it
                    circle.classList.remove("selected");
                    circle.classList.add("available");
                    selectedTableId = null;
                    selectedTableDisplay.textContent = "Selected Table: None";
                    localStorage.removeItem("selectedTable"); // Remove from localStorage
                } else {
                    // If a new table is selected
                    if (selectedTableId) {
                        // If there's already a selected table, deselect it
                        var previousSelectedTable =
                            document.getElementById(selectedTableId);
                        previousSelectedTable.classList.remove("selected");
                        previousSelectedTable.classList.add("available");
                    }
                    // Select the clicked table
                    circle.classList.remove("available");
                    circle.classList.add("selected");
                    selectedTableId = id;
                    selectedTableDisplay.textContent = "Selected Table: " + id;
                    localStorage.setItem("selectedTable", id); // Save to localStorage
                }
            }
        }
    </script>
</div>
</body>
</html>
