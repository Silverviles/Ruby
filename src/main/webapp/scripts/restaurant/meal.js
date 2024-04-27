document.addEventListener("DOMContentLoaded", function() {
	// Sample food items data for demonstration
	let foodItems;

	$.ajax({
		type : "POST",
		url : "/Ruby/restaurant/getMeals",
		dataType : "json",
		success : function(response) {
			foodItems = response;
			populateFields()
		},
		error : function(xhr, status, error) {
			console.error("Error fetching food items:", error);
		}
	});

	const populateFields = () => {
		const foodList = document.getElementById("food-list");
		const selectedFoodList = document.getElementById("selected-food-list");
		const test = localStorage.getItem("selectedHour");

		// Function to render food items based on categories
		function renderFoodItems(category, suitableFor) {
			foodList.innerHTML = ""; // Clear existing food items

			// Filter food items based on both categories
			const filteredItems = foodItems.filter(
				(item) =>
					item.category === category && item.category === suitableFor
			);

			// Create table rows for filtered food items
			filteredItems.forEach((item) => {
				const row = document.createElement("tr");
				row.innerHTML = `
            <td><img src="${item.imgSrc}" alt="${item.name}" width="400" style="border-radius: 24px; padding: 16px;"></td>
            <td>${item.name}</td>
            <td>$${item.price}</td>
            <td><input type="number" min="1" value="${item.quantity}" data-price="${item.price}"></td>
            <td><button class="add-btn">Add</button></td>
            <td><button class="delete-btn" style="background-color: red;">Delete</button></td>
          `;
				foodList.appendChild(row);
			});

			// Add event listeners to Add buttons
			const addButtons = document.querySelectorAll(".add-btn");
			addButtons.forEach((button) => {
				button.addEventListener("click", function() {
					const itemName =
						this.parentNode.parentNode.querySelector(
							"td:nth-child(2)"
						).textContent;

					const itemPrice =
						this.parentNode.parentNode.querySelector(
							"td:nth-child(3)"
						).textContent;

					const quantityInput =
						this.parentNode.parentNode.querySelector("input[type='number']");
					const quantity = parseInt(quantityInput.value);

					addSelectedFood(itemName, itemPrice, quantity);
				});
			});

			// Add event listeners to quantity input fields
			const quantityInputs = document.querySelectorAll(
				"input[type='number']"
			);
			quantityInputs.forEach((input) => {
				input.addEventListener("change", function() {
					const itemName =
						this.parentNode.parentNode.querySelector(
							"td:nth-child(2)"
						).textContent;
					const itemPrice = parseFloat(this.dataset.price);
					const newQuantity = parseInt(this.value);
					const newPrice = itemPrice * newQuantity;
					updateSelectedFoodPrice(itemName, newPrice);
				});
			});

			// Add event listeners to Delete buttons
			const deleteButtons = document.querySelectorAll(".delete-btn");
			deleteButtons.forEach((button) => {
				button.addEventListener("click", function() {
					const itemName =
						this.parentNode.parentNode.querySelector(
							"td:nth-child(2)"
						).textContent;
					removeSelectedFood(itemName);
					removeFromLocalStorage(itemName); // Remove from localStorage
				});
			});
		}

		// Function to add selected food to localStorage as objects
		function addSelectedFoodToLocalStorage(foodName, foodPrice, quantity) {
			// Retrieve existing selected foods from localStorage or initialize an empty array
			let selectedFoods = JSON.parse(localStorage.getItem('selectedFoods')) || [];

			// Check if the food is already selected
			const existingFoodIndex = selectedFoods.findIndex(food => food.name === foodName);
			if (existingFoodIndex !== -1) {
				// If the food is already selected, update its quantity
				selectedFoods[existingFoodIndex].quantity += quantity;
				selectedFoods[existingFoodIndex].totalPrice += parseFloat(foodPrice.replace("$", "")) * quantity;
			} else {
				// If the food is not selected yet, add it as a new object
				selectedFoods.push({
					name : foodName,
					price : parseFloat(foodPrice.replace("$", "")),
					quantity : quantity,
					totalPrice : parseFloat(foodPrice.replace("$", "")) * quantity
				});
			}

			// Save the updated selected foods array back to localStorage
			localStorage.setItem('selectedFoods', JSON.stringify(selectedFoods));
		}

		// Function to add selected food to the list
		function addSelectedFood(foodName, foodPrice, quantity) {
			const existingItem = selectedFoodList.querySelector(
				`li[data-food-name="${foodName}"]`
			);
			if (existingItem) {
				const priceElement = existingItem.querySelector(".food-price");
				const price = parseFloat(priceElement.textContent.replace("$", ""));
				const newPrice = price + parseFloat(foodPrice.replace("$", "")) * quantity;
				priceElement.textContent = `$${newPrice.toFixed(2)}`;
			} else {
				const listItem = document.createElement("li");
				listItem.textContent = `${foodName} - $${(parseFloat(foodPrice.replace("$", "")) * quantity).toFixed(2)}`;
				listItem.setAttribute("data-food-name", foodName); // Assign a unique identifier
				selectedFoodList.appendChild(listItem);
			}

			// Add selected food to localStorage
			addSelectedFoodToLocalStorage(foodName, foodPrice, quantity);
		}

		// Function to update the price of the selected food
		function updateSelectedFoodPrice(foodName, newPrice) {
			const foodItems = selectedFoodList.querySelectorAll("li");
			foodItems.forEach((item) => {
				if (item.getAttribute("data-food-name") === foodName) {
					item.textContent = `${foodName} - $${newPrice.toFixed(2)}`; // Update the displayed price
				}
			});
		}

		// Function to remove selected food item from the list
		function removeSelectedFood(foodName) {
			const foodItems = selectedFoodList.querySelectorAll("li");
			foodItems.forEach((item) => {
				if (item.getAttribute("data-food-name") === foodName) {
					item.remove();
				}
			});
		}

		// Function to remove item from localStorage
		function removeFromLocalStorage(foodName) {
			const selectedFoods = JSON.parse(localStorage.getItem("selectedFoods")) || [];
			const updatedFoods = selectedFoods.filter(food => food.name !== foodName);
			localStorage.setItem("selectedFoods", JSON.stringify(updatedFoods));
		}

		// Event listeners for filter buttons
		document
			.getElementById("breakfast-btn")
			.addEventListener("click", function() {
				updateActiveButton("breakfast-btn");
				renderFoodItems("Main Dishes", "Breakfast");
			});
		document
			.getElementById("launch-btn")
			.addEventListener("click", function() {
				updateActiveButton("launch-btn");
				renderFoodItems("Main Dishes", "Launch");
			});
		document
			.getElementById("dinner-btn")
			.addEventListener("click", function() {
				updateActiveButton("dinner-btn");
				renderFoodItems("Main Dishes", "Dinner");
			});
		document
			.getElementById("main-dishes-btn")
			.addEventListener("click", function() {
				updateActiveButton("main-dishes-btn");
				renderFoodItems("Main Dishes", test);
			});
		document
			.getElementById("drinks-btn")
			.addEventListener("click", function() {
				updateActiveButton("drinks-btn");
				renderFoodItems("Drinks", test);
			});
		document
			.getElementById("desserts-btn")
			.addEventListener("click", function() {
				updateActiveButton("desserts-btn");
				renderFoodItems("Desserts", test);
			});

		// Function to update active button styling
		function updateActiveButton(activeBtnId) {
			const filterButtons = document.querySelectorAll(".filter-btn");
			filterButtons.forEach((btn) => {
				btn.classList.remove("active");
			});
			document.getElementById(activeBtnId).classList.add("active");
		}

		// Initial render
		renderFoodItems("Main Dishes", test);
	}
});