<%--
  Created by IntelliJ IDEA.
  User: Jola
  Date: 4/18/2024
  Time: 8:24 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="utf-8" />
    <title>Dynamic Calendar JavaScript | CodingNepal</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/restaurant/dateTime.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200"
    />
    <script src="${pageContext.request.contextPath}/scripts/restaurant/dateTime.js"></script>
</head>
<body>
<div style="padding: 20px"><h1>Header</h1></div>
<div
        style="
        display: flex;
        flex-direction: column;
        align-items: start;
        margin-left: 40px;
        gap: 10px;
      "
>
    <div>
        <h2>Pick a Date</h2>
    </div>

    <div class="Cal">
        <div class="wrapper">
            <header>
                <p class="current-date"></p>
                <div class="icons">
              <span id="prev" class="material-symbols-rounded"
              >chevron_left</span
              >
                    <span id="next" class="material-symbols-rounded"
                    >chevron_right</span
                    >
                </div>
            </header>
            <div class="calendar">
                <ul class="weeks">
                    <li>Sun</li>
                    <li>Mon</li>
                    <li>Tue</li>
                    <li>Wed</li>
                    <li>Thu</li>
                    <li>Fri</li>
                    <li>Sat</li>
                </ul>
                <ul class="days"></ul>
            </div>
        </div>
    </div>

    <div>
        <h2>Pick a Time slot</h2>
        <div class="slots-container">
            <div class="slot-container">
                <h2>Morning</h2>
                <ul class="time-list" id="morning-slots"></ul>
            </div>
            <div class="slot-container">
                <h2>Day</h2>
                <ul class="time-list" id="day-slots"></ul>
            </div>
            <div class="slot-container">
                <h2>Night</h2>
                <ul class="time-list" id="night-slots"></ul>
            </div>
        </div>
    </div>

    <div>
        <form method="get" action="${pageContext.request.contextPath}/restaurant/seatMap">
            <button class="btn btn-primary">
                Book a table
            </button>
        </form>
    </div>
</div>

<div style="padding: 20px"><h1>Footer</h1></div>
</body>
</html>
