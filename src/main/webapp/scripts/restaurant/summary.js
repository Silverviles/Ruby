document.addEventListener("DOMContentLoaded", function() {
	// Retrieve the number of guests from localStorage
	var selDate = localStorage.getItem("selectedDate").substring(0, 10);
	var selTime = localStorage.getItem("selectedTime");
	var selTable = localStorage.getItem("selectedTable").substring(5);

	console.log("Original time:", selTime);

	let timeComponents = selTime.split(":");
	let hours = parseInt(timeComponents[0]);
	let minutes = timeComponents[1];

	if (hours < 10) {
		hours = "0" + hours;
	}

	let correctedTime = hours + ":" + minutes + ":00";
	$("#bookedDate").val(selDate + correctedTime);
	$("#tableName").val("Table " + selTable);
	$("#tableCount").val()

	// Update the value of the guests element with the retrieved value
	document.getElementById("date").textContent = selDate;
	document.getElementById("secTime").textContent = selTime;
	document.getElementById("secTable").textContent = "Table " + selTable;

	// Retrieve saved food items from localStorage
	const savedItems = JSON.parse(localStorage.getItem("selectedFoods"));

	// Get the dish list container
	const dishList = document.getElementById("dish-list");

	// Initialize total price to 0
	let totalPrice = 0;

	// Loop through saved items and create HTML for each dish
	savedItems.forEach((item) => {
		const dishDiv = document.createElement("div");
		dishDiv.classList.add("dish");
		dishDiv.innerHTML = `
      <div class="name">${item.name}</div>
      <div class="quantity">${item.quantity}</div>
      <div class="price">$${item.totalPrice}</div>
    `;
		dishList.appendChild(dishDiv);

		// Add the price of the dish to the total price
		totalPrice += parseFloat(item.totalPrice);
	});

	function download_pdf(id) {
		html2pdf().from(id).save();
	}

	document.getElementById("pdfButton")
		.addEventListener("click", function() {
			const d = document.getElementById('card-holder')
			download_pdf(d);
		});
});