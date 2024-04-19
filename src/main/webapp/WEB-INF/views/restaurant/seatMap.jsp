<%--
  Created by IntelliJ IDEA.
  User: tharindu
  Date: 19/04/2024
  Time: 09:13
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>Seat Map</title>
    <style>
        html {
            font-family: Arial, sans-serif;
        }

        .circle {
            width: 20px;
            height: 20px;
            border-radius: 50%;
            display: inline-block;
            margin-right: 10px;
        }

        .available {
            background-color: #008000;
        }

        .reserved {
            background-color: #ffff00;
        }

        .selected {
            background-color: #0000ff;
        }

        .not-available {
            background-color: #ff0000;
        }

        .btn {
            display: inline-block;
            font-weight: 400;
            color: #fff;
            text-align: center;
            vertical-align: middle;
            user-select: none;
            background-color: #6366f1;
            border: 1px solid transparent;
            padding: 0.75rem 1.5rem;
            font-size: 1rem;
            line-height: 1.5;
            border-radius: 0.375rem;
            transition: all 0.15s ease-in-out;
            cursor: pointer;
            text-decoration: none;
        }

        .btn-primary {
            background-color: #6366f1;
        }

        .btn-primary:hover {
            background-color: #4f52b3;
        }
    </style>
</head>
<body
        style="
      overflow-x: hidden;
      margin: 0;
      display: flex;
      flex-direction: column;
      align-items: center;
    "
>
<div>
    <h1>Header</h1>
</div>

<div
        style="
        display: flex;
        align-items: center;
        justify-content: center;
        gap: 20px;
        margin-top: 10px;
      "
>
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

<div
        style="
        width: 1363px;
        height: 1027px;
        left: 0px;
        top: 0px;
        position: relative;
        background: #d9d9d9;
        border-radius: 15px;
        border: 1px black solid;
        margin-top: 40px;
      "
>
    <!--table2-->
    <div
            style="
          width: 232px;
          height: 200px;
          left: 562px;
          top: 43px;
          position: absolute;
        "
    >
        <div
                id="table2"
                class="available"
                style="
            width: 200px;
            height: 100px;
            left: 64px;
            top: 200px;
            position: absolute;
            transform: rotate(-90deg);
            transform-origin: 0 0;

            border-radius: 50px;
            border: 1px black solid;
          "
                onclick="toggleColor('table2')"
        ></div>
        <div
                style="
            width: 50px;
            height: 50px;
            left: 182px;
            top: 117px;
            position: absolute;
            background: #d9d9d9;
            border: 1px black solid;
          "
        ></div>
        <div
                style="
            width: 50px;
            height: 50px;
            left: 3px;
            top: 115px;
            position: absolute;
            background: #d9d9d9;
            border: 1px black solid;
          "
        ></div>
        <div
                style="
            width: 50px;
            height: 50px;
            left: 0px;
            top: 37px;
            position: absolute;
            background: #d9d9d9;
            border: 1px black solid;
          "
        ></div>
        <div
                style="
            width: 50px;
            height: 50px;
            left: 180px;
            top: 37px;
            position: absolute;
            background: #d9d9d9;
            border: 1px black solid;
          "
        ></div>
        <div
                style="
            left: 103px;
            top: 57px;
            position: absolute;
            text-align: center;
            color: black;
            font-size: 50px;
            font-family: Inter;
            font-weight: 400;
            word-wrap: break-word;
          "
        >
            2
        </div>
    </div>

    <!--table1-->
    <div
            style="
          width: 157px;
          height: 260px;
          left: 26px;
          top: 19px;
          position: absolute;
        "
    >
        <div
                id="table1"
                class="available"
                style="
            width: 150px;
            height: 100px;
            left: 0px;
            top: 205px;
            position: absolute;
            transform: rotate(-90deg);
            transform-origin: 0 0;

            border-radius: 50px;
            border: 1px black solid;
          "
                onclick="toggleColor('table1')"
        ></div>
        <div
                style="
            width: 50px;
            height: 50px;
            left: 25px;
            top: 0px;
            position: absolute;
            background: #d9d9d9;
            border: 1px black solid;
          "
        ></div>
        <div
                style="
            width: 50px;
            height: 50px;
            left: 25px;
            top: 210px;
            position: absolute;
            background: #d9d9d9;
            border: 1px black solid;
          "
        ></div>
        <div
                style="
            width: 50px;
            height: 50px;
            left: 107px;
            top: 99px;
            position: absolute;
            background: #d9d9d9;
            border: 1px black solid;
          "
        ></div>
        <div
                style="
            left: 32px;
            top: 92px;
            position: absolute;
            text-align: center;
            color: black;
            font-size: 50px;
            font-family: Inter;
            font-weight: 400;
            word-wrap: break-word;
          "
        >
            1
        </div>
    </div>

    <!--table3-->
    <div
            style="
          width: 157px;
          height: 260px;
          left: 1343px;
          top: 279px;
          position: absolute;
          transform: rotate(360deg);
          transform-origin: 0 0;
        "
    >
        <div
                id="table3"
                class="not-available"
                style="
            width: 150px;
            height: 100px;
            left: 0px;
            top: -205px;
            position: absolute;
            transform: rotate(90deg);
            transform-origin: 0 0;

            border-radius: 50px;
            border: 1px black solid;
          "
                onclick="toggleColor('table3')"
        ></div>
        <div
                style="
            width: 50px;
            height: 50px;
            left: -25px;
            top: 0px;
            position: absolute;
            transform: rotate(-180deg);
            transform-origin: 0 0;
            background: #d9d9d9;
            border: 1px black solid;
          "
        ></div>
        <div
                style="
            width: 50px;
            height: 50px;
            left: -25px;
            top: -210px;
            position: absolute;
            transform: rotate(-180deg);
            transform-origin: 0 0;
            background: #d9d9d9;
            border: 1px black solid;
          "
        ></div>
        <div
                style="
            width: 50px;
            height: 50px;
            left: -107px;
            top: -99px;
            position: absolute;
            transform: rotate(-180deg);
            transform-origin: 0 0;
            background: #d9d9d9;
            border: 1px black solid;
          "
        ></div>
        <div
                style="
            left: -73px;
            top: -168px;
            position: absolute;
            text-align: center;
            color: black;
            font-size: 50px;
            font-family: Inter;
            font-weight: 400;
            word-wrap: break-word;
          "
        >
            3
        </div>
    </div>

    <!--table11-->
    <div
            style="
          width: 157px;
          height: 260px;
          left: 234px;
          top: 1000px;
          position: absolute;
          transform: rotate(0deg);
          transform-origin: 0 0;
        "
    >
        <div
                id="table11"
                class="reserved"
                style="
            width: 150px;
            height: 100px;
            left: 205px;
            top: 0px;
            position: absolute;
            transform: rotate(-180deg);
            transform-origin: 0 0;
            border-radius: 50px;
            border: 1px black solid;
          "
                onclick="toggleColor('table11')"
        ></div>
        <div
                style="
            width: 50px;
            height: 50px;
            left: 0px;
            top: -25px;
            position: absolute;
            transform: rotate(-90deg);
            transform-origin: 0 0;
            background: #d9d9d9;
            border: 1px black solid;
          "
        ></div>
        <div
                style="
            width: 50px;
            height: 50px;
            left: 210px;
            top: -25px;
            position: absolute;
            transform: rotate(-90deg);
            transform-origin: 0 0;
            background: #d9d9d9;
            border: 1px black solid;
          "
        ></div>
        <div
                style="
            width: 50px;
            height: 50px;
            left: 99px;
            top: -107px;
            position: absolute;
            transform: rotate(-90deg);
            transform-origin: 0 0;
            background: #d9d9d9;
            border: 1px black solid;
          "
        ></div>
        <div
                style="
            left: 101px;
            top: -87px;
            position: absolute;
            text-align: center;
            color: black;
            font-size: 50px;
            font-family: Inter;
            font-weight: 400;
            word-wrap: break-word;
          "
        >
            11
        </div>
    </div>

    <!--table12-->
    <div
            style="
          width: 157px;
          height: 260px;
          left: 895px;
          top: 1000px;
          position: absolute;
          transform: rotate(0deg);
          transform-origin: 0 0;
        "
    >
        <div
                id="table12"
                class="available"
                style="
            width: 150px;
            height: 100px;
            left: 205px;
            top: 0px;
            position: absolute;
            transform: rotate(-180deg);
            transform-origin: 0 0;
            border-radius: 50px;
            border: 1px black solid;
          "
                onclick="toggleColor('table12')"
        ></div>
        <div
                style="
            width: 50px;
            height: 50px;
            left: 0px;
            top: -25px;
            position: absolute;
            transform: rotate(-90deg);
            transform-origin: 0 0;
            background: #d9d9d9;
            border: 1px black solid;
          "
        ></div>
        <div
                style="
            width: 50px;
            height: 50px;
            left: 210px;
            top: -25px;
            position: absolute;
            transform: rotate(-90deg);
            transform-origin: 0 0;
            background: #d9d9d9;
            border: 1px black solid;
          "
        ></div>
        <div
                style="
            width: 50px;
            height: 50px;
            left: 99px;
            top: -107px;
            position: absolute;
            transform: rotate(-90deg);
            transform-origin: 0 0;
            background: #d9d9d9;
            border: 1px black solid;
          "
        ></div>
        <div
                style="
            left: 97px;
            top: -75px;
            position: absolute;
            text-align: center;
            color: black;
            font-size: 50px;
            font-family: Inter;
            font-weight: 400;
            word-wrap: break-word;
          "
        >
            12
        </div>
    </div>

    <!--table4-->
    <div
            style="
          width: 100px;
          height: 225px;
          left: 314px;
          top: 231px;
          position: absolute;
        "
    >
        <div
                style="
            width: 50px;
            height: 50px;
            left: 25px;
            top: 0px;
            position: absolute;
            background: #d9d9d9;
            border: 1px black solid;
          "
        ></div>
        <div
                style="
            width: 50px;
            height: 50px;
            left: 25px;
            top: 175px;
            position: absolute;
            background: #d9d9d9;
            border: 1px black solid;
          "
        ></div>
        <div
                id="table4"
                class="available"
                style="
            width: 100px;
            height: 100px;
            left: 0px;
            top: 63px;
            position: absolute;
            border-radius: 9999px;
            border: 1px black solid;
          "
                onclick="toggleColor('table4')"
        ></div>
        <div
                style="
            left: 34px;
            top: 82px;
            position: absolute;
            text-align: center;
            color: black;
            font-size: 50px;
            font-family: Inter;
            font-weight: 400;
            word-wrap: break-word;
          "
        >
            4
        </div>
    </div>

    <!--table10-->
    <div
            style="
          width: 100px;
          height: 225px;
          left: 1236px;
          top: 654px;
          position: absolute;
        "
    >
        <div
                style="
            width: 50px;
            height: 50px;
            left: 25px;
            top: 0px;
            position: absolute;
            background: #d9d9d9;
            border: 1px black solid;
          "
        ></div>
        <div
                style="
            width: 50px;
            height: 50px;
            left: 25px;
            top: 175px;
            position: absolute;
            background: #d9d9d9;
            border: 1px black solid;
          "
        ></div>
        <div
                id="table10"
                class="not-available"
                style="
            width: 100px;
            height: 100px;
            left: 0px;
            top: 63px;
            position: absolute;
            border-radius: 9999px;
            border: 1px black solid;
          "
                onclick="toggleColor('table10')"
        ></div>
        <div
                style="
            left: 18px;
            top: 87px;
            position: absolute;
            text-align: center;
            color: black;
            font-size: 50px;
            font-family: Inter;
            font-weight: 400;
            word-wrap: break-word;
          "
        >
            10
        </div>
    </div>

    <!--table8-->
    <div
            style="
          width: 100px;
          height: 225px;
          left: 1243px;
          top: 344px;
          position: absolute;
        "
    >
        <div
                style="
            width: 50px;
            height: 50px;
            left: 25px;
            top: 0px;
            position: absolute;
            background: #d9d9d9;
            border: 1px black solid;
          "
        ></div>
        <div
                style="
            width: 50px;
            height: 50px;
            left: 25px;
            top: 175px;
            position: absolute;
            background: #d9d9d9;
            border: 1px black solid;
          "
        ></div>
        <div
                id="table8"
                class="reserved"
                style="
            width: 100px;
            height: 100px;
            left: 0px;
            top: 63px;
            position: absolute;
            border-radius: 9999px;
            border: 1px black solid;
          "
                onclick="toggleColor('table8')"
        ></div>
        <div
                style="
            left: 28px;
            top: 76px;
            position: absolute;
            text-align: center;
            color: black;
            font-size: 50px;
            font-family: Inter;
            font-weight: 400;
            word-wrap: break-word;
          "
        >
            8
        </div>
    </div>

    <!--table9-->
    <div
            style="
          width: 100px;
          height: 225px;
          left: 33px;
          top: 654px;
          position: absolute;
        "
    >
        <div
                style="
            width: 50px;
            height: 50px;
            left: 25px;
            top: 0px;
            position: absolute;
            background: #d9d9d9;
            border: 1px black solid;
          "
        ></div>
        <div
                style="
            width: 50px;
            height: 50px;
            left: 25px;
            top: 175px;
            position: absolute;
            background: #d9d9d9;
            border: 1px black solid;
          "
        ></div>
        <div
                id="table9"
                class="available"
                style="
            width: 100px;
            height: 100px;
            left: 0px;
            top: 63px;
            position: absolute;
            border-radius: 9999px;
            border: 1px black solid;
          "
                onclick="toggleColor('table9')"
        ></div>
        <div
                style="
            left: 34px;
            top: 82px;
            position: absolute;
            text-align: center;
            color: black;
            font-size: 50px;
            font-family: Inter;
            font-weight: 400;
            word-wrap: break-word;
          "
        >
            9
        </div>
    </div>

    <!--table5-->
    <div
            style="
          width: 100px;
          height: 225px;
          left: 975px;
          top: 231px;
          position: absolute;
        "
    >
        <div
                style="
            width: 50px;
            height: 50px;
            left: 25px;
            top: 0px;
            position: absolute;
            background: #d9d9d9;
            border: 1px black solid;
          "
        ></div>
        <div
                style="
            width: 50px;
            height: 50px;
            left: 25px;
            top: 175px;
            position: absolute;
            background: #d9d9d9;
            border: 1px black solid;
          "
        ></div>
        <div
                id="table5"
                class="not-available"
                style="
            width: 100px;
            height: 100px;
            left: 0px;
            top: 63px;
            position: absolute;
            border-radius: 9999px;
            border: 1px black solid;
          "
                onclick="toggleColor('table5')"
        ></div>
        <div
                style="
            left: 35px;
            top: 82px;
            position: absolute;
            text-align: center;
            color: black;
            font-size: 50px;
            font-family: Inter;
            font-weight: 400;
            word-wrap: break-word;
          "
        >
            5
        </div>
    </div>

    <!--table6-->
    <div
            style="
          width: 100px;
          height: 225px;
          left: 33px;
          top: 356px;
          position: absolute;
        "
    >
        <div
                style="
            width: 50px;
            height: 50px;
            left: 25px;
            top: 0px;
            position: absolute;
            background: #d9d9d9;
            border: 1px black solid;
          "
        ></div>
        <div
                style="
            width: 50px;
            height: 50px;
            left: 25px;
            top: 175px;
            position: absolute;
            background: #d9d9d9;
            border: 1px black solid;
          "
        ></div>
        <div
                id="table6"
                class="available"
                style="
            width: 100px;
            height: 100px;
            left: 0px;
            top: 63px;
            position: absolute;
            border-radius: 9999px;
            border: 1px black solid;
          "
                onclick="toggleColor('table6')"
        ></div>
        <div
                style="
            left: 27px;
            top: 80px;
            position: absolute;
            text-align: center;
            color: black;
            font-size: 50px;
            font-family: Inter;
            font-weight: 400;
            word-wrap: break-word;
          "
        >
            6
        </div>
    </div>

    <!--table7-->
    <div
            style="
          width: 333px;
          height: 328px;
          left: 509px;
          top: 417px;
          position: absolute;
        "
    >
        <div
                id="table7"
                class="available"
                style="
            width: 200px;
            height: 200px;
            left: 67px;
            top: 64px;
            position: absolute;
            border-radius: 9999px;
            border: 1px black solid;
          "
                onclick="toggleColor('table7')"
        ></div>
        <div
                style="
            width: 50px;
            height: 50px;
            left: 144px;
            top: 0px;
            position: absolute;
            background: #d9d9d9;
            border: 1px black solid;
          "
        ></div>
        <div
                style="
            width: 50px;
            height: 50px;
            left: 236.64px;
            top: 269px;
            position: absolute;
            transform: rotate(-45deg);
            transform-origin: 0 0;
            background: #d9d9d9;
            border: 1px black solid;
          "
        ></div>
        <div
                style="
            width: 50px;
            height: 50px;
            left: 31.64px;
            top: 269px;
            position: absolute;
            transform: rotate(-45deg);
            transform-origin: 0 0;
            background: #d9d9d9;
            border: 1px black solid;
          "
        ></div>
        <div
                style="
            width: 50px;
            height: 50px;
            left: 236.64px;
            top: 64px;
            position: absolute;
            transform: rotate(-45deg);
            transform-origin: 0 0;
            background: #d9d9d9;
            border: 1px black solid;
          "
        ></div>
        <div
                style="
            width: 50px;
            height: 50px;
            left: 21px;
            top: 75.36px;
            position: absolute;
            transform: rotate(-45deg);
            transform-origin: 0 0;
            background: #d9d9d9;
            border: 1px black solid;
          "
        ></div>
        <div
                style="
            width: 50px;
            height: 50px;
            left: 142px;
            top: 278px;
            position: absolute;
            background: #d9d9d9;
            border: 1px black solid;
          "
        ></div>
        <div
                style="
            width: 50px;
            height: 50px;
            left: 283px;
            top: 139px;
            position: absolute;
            background: #d9d9d9;
            border: 1px black solid;
          "
        ></div>
        <div
                style="
            width: 50px;
            height: 50px;
            left: 0px;
            top: 139px;
            position: absolute;
            background: #d9d9d9;
            border: 1px black solid;
          "
        ></div>
        <div
                style="
            left: 159px;
            top: 133px;
            position: absolute;
            text-align: center;
            color: black;
            font-size: 50px;
            font-family: Inter;
            font-weight: 400;
            word-wrap: break-word;
          "
        >
            7
        </div>
    </div>
</div>

<div>
    <p
            id="selectedTableDisplay"
            style="font-size: large; font-weight: bold"
    ></p>
    <form method="get" action="${pageContext.request.contextPath}/restaurant/meal">
        <button class="btn btn-primary">
            Continue
        </button>
    </form>
</div>

<script>
	var selectedTableId = null;

	function toggleColor(id) {
		var circle = document.getElementById(id);
		var selectedTableDisplay = document.getElementById("selectedTableDisplay");

		if (circle.classList.contains("not-available")) {
			alert("Table not available");
		} else if (circle.classList.contains("reserved")) {
			alert("Table already booked");
		} else {
			if (id === selectedTableId) {
				circle.classList.remove("selected");
				circle.classList.add("available");
				selectedTableId = null;
				selectedTableDisplay.textContent = "Selected Table: None";
				localStorage.removeItem("selectedTable");
			} else {
				if (selectedTableId) {
					var previousSelectedTable = document.getElementById(selectedTableId);
					previousSelectedTable.classList.remove("selected");
					previousSelectedTable.classList.add("available");
				}
				circle.classList.remove("available");
				circle.classList.add("selected");
				selectedTableId = id;
				selectedTableDisplay.textContent = "Selected Table: " + id;
				localStorage.setItem("selectedTable", id);
			}
		}
	}

</script>
</body>
</html>
