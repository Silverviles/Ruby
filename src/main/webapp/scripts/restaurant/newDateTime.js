document.addEventListener("DOMContentLoaded", function () {
    const daysTag = document.querySelector(".days"),
        currentDate = document.querySelector(".current-date"),
        prevNextIcon = document.querySelectorAll(".icons span");

    let selectedDate; // Variable to store the selected date

    // Getting new date, current year, and month
    let date = new Date(),
        currYear = date.getFullYear(),
        currMonth = date.getMonth();

    // Storing full names of all months in array
    const months = [
        "January",
        "February",
        "March",
        "April",
        "May",
        "June",
        "July",
        "August",
        "September",
        "October",
        "November",
        "December",
    ];

    const renderCalendar = () => {
        let firstDayOfMonth = new Date(currYear, currMonth, 1).getDay(), // Getting first day of month
            lastDateOfMonth = new Date(currYear, currMonth + 1, 0).getDate(), // Getting last date of month
            lastDayOfMonth = new Date(
                currYear,
                currMonth,
                lastDateOfMonth
            ).getDay(), // Getting last day of month
            lastDateOfLastMonth = new Date(currYear, currMonth, 0).getDate(); // Getting last date of previous month
        let liTag = "";

        for (let i = firstDayOfMonth; i > 0; i--) {
            // Creating li of previous month last days
            liTag += `<li class="inactive">${lastDateOfLastMonth - i + 1}</li>`;
        }

        for (let i = 1; i <= lastDateOfMonth; i++) {
            // Creating li of all days of current month
            // Adding active class to li if the current day, month, and year match the selected date
            let isActive =
                selectedDate &&
                i === selectedDate.getDate() &&
                currMonth === selectedDate.getMonth() &&
                currYear === selectedDate.getFullYear();
            let isToday =
                i === date.getDate() &&
                currMonth === date.getMonth() &&
                currYear === date.getFullYear();
            let classes = isActive ? "active" : "";
            classes += isToday ? " current-day" : "";
            liTag += `<li class="${classes}" data-date="${i}">${i}</li>`;
        }

        for (let i = lastDayOfMonth; i < 6; i++) {
            // Creating li of next month first days
            liTag += `<li class="inactive">${i - lastDayOfMonth + 1}</li>`;
        }
        currentDate.innerText = `${months[currMonth]} ${currYear}`; // Passing current month and year as currentDate text
        daysTag.innerHTML = liTag;
    };

    renderCalendar();

    // Add event listener to each day element to handle click event
    daysTag.addEventListener("click", function (e) {
        const target = e.target;
        if (
            target &&
            target.tagName === "LI" &&
            !target.classList.contains("inactive")
        ) {
            const selectedDay = parseInt(target.dataset.date);
            const clickedDate = new Date(currYear, currMonth, selectedDay); // Create the clicked date
            if (
                selectedDate &&
                clickedDate.getTime() === selectedDate.getTime()
            ) {
                // If the clicked date is the same as the selected date, remove the selection
                selectedDate = null;
            } else {
                selectedDate = clickedDate; // Update selectedDate variable
                // Store selected date in localStorage
                localStorage.setItem("selectedDate", selectedDate.toISOString());
            }
            renderCalendar(); // Re-render calendar to update selected date styling
        }
    });

    prevNextIcon.forEach((icon) => {
        // Getting prev and next icons
        icon.addEventListener("click", () => {
            // Adding click event on both icons
            // If clicked icon is previous icon then decrement current month by 1 else increment it by 1
            currMonth = icon.id === "prev" ? currMonth - 1 : currMonth + 1;

            if (currMonth < 0 || currMonth > 11) {
                // If current month is less than 0 or greater than 11
                // Creating a new date of current year & month and pass it as date value
                date = new Date(currYear, currMonth, new Date().getDate());
                currYear = date.getFullYear(); // Updating current year with new date year
                currMonth = date.getMonth(); // Updating current month with new date month
            } else {
                date = new Date(); // Pass the current date as date value
            }
            renderCalendar(); // Calling renderCalendar function
        });
    });

    const morningSlots = generateTimeSlots(8, 11, "Morning");
    const daySlots = generateTimeSlots(13, 16, "Day");
    const nightSlots = generateTimeSlots(19, 22, "Night");

    const morningList = document.getElementById("morning-slots");
    const dayList = document.getElementById("day-slots");
    const nightList = document.getElementById("night-slots");

    appendSlots(morningSlots, morningList);
    appendSlots(daySlots, dayList);
    appendSlots(nightSlots, nightList);

    function generateTimeSlots(startHour, endHour, label) {
        const slots = [];
        for (let hour = startHour; hour <= endHour; hour++) {
            for (let minute = 0; minute < 60; minute += 30) {
                slots.push(`${hour}:${minute === 0 ? "00" : minute}`);
            }
        }
        return slots;
    }

    function appendSlots(slots, list) {
        slots.forEach((slot) => {
            const listItem = document.createElement("li");
            listItem.textContent = slot;
            listItem.addEventListener("click", () => {
                // Deselect all slots in all lists
                const allSlotContainers = document.querySelectorAll(".time-list");
                allSlotContainers.forEach((container) => {
                    const allSlots = container.querySelectorAll("li");
                    allSlots.forEach((slot) => {
                        slot.classList.remove("selected");
                    });
                });
                // Select the clicked slot
                listItem.classList.add("selected");

                const timeSlotValue = parseInt(listItem.textContent);
                const timeSlotString = listItem.textContent;
                localStorage.setItem("selectedTime", timeSlotString);
                if (timeSlotValue >= 8 && timeSlotValue < 12) {
                    const gg = "Breakfast";
                    // Store the selected hour value in localStorage
                    localStorage.setItem("selectedHour", gg);
                } else if (timeSlotValue >= 12 && timeSlotValue < 17) {
                    const gg = "Launch";
                    localStorage.setItem("selectedHour", gg);
                } else if (timeSlotValue >= 19 && timeSlotValue < 24) {
                    const gg = "Dinner";
                    localStorage.setItem("selectedHour", gg);
                }
            });
            list.appendChild(listItem);
        });
    }
});

function bookTable() {
    // Combining selectedDate and timeSlotString into one variable
    let combinedDateTime;
    selectedDate = localStorage.getItem("selectedDate");
    if (selectedDate && localStorage.getItem("selectedTime")) {
        const time = localStorage.getItem("selectedTime");
        const selectedDateTime = new Date(selectedDate);
        const hours = parseInt(time.split(":")[0]);
        const minutes = parseInt(time.split(":")[1]);
        selectedDateTime.setHours(hours, minutes); // Set selected time to the selected date
        const formattedDate = selectedDateTime.toISOString().slice(0, 10); // Get yyyy-mm-dd format
        const formattedTime = time + ":00"; // Add seconds to time
        combinedDateTime = `${formattedDate} ${formattedTime}`;
        localStorage.setItem("combinedDateTime", combinedDateTime);
    }
    // Use combinedDateTime as needed
    console.log(combinedDateTime);
    // Add further processing here, like submitting the form with the combinedDateTime
    window.location.href = "testing.html";
}