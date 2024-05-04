document.addEventListener("DOMContentLoaded", function () {
    // Sample food items data for demonstration
    const foodItems = [
        {
            name: "Burger",
            category: "Main Dishes",
            suitableFor: "Launch",
            imgSrc:
                "https://i.pinimg.com/564x/1b/f9/f9/1bf9f909ecceb79c29284794c2d74217.jpg",
            price: "180.00",
            quantity: "1",
        },
        {
            name: "Hoppers",
            category: "Main Dishes",
            suitableFor: "Breakfast",
            imgSrc:
                "https://www.foodandwine.com/thmb/Wd4lBRZz3X_8qBr69UOu2m7I2iw=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/classic-cheese-pizza-FT-RECIPE0422-31a2c938fc2546c9a07b7011658cfd05.jpg",
            price: "180.00",
            quantity: "1",
        },
        {
            name: "String hoppers",
            category: "Main Dishes",
            suitableFor: "Breakfast",
            imgSrc:
                "https://i.pinimg.com/564x/0f/bc/82/0fbc825e30bb0f28b925badd1090b87e.jpg",
            price: "280.00",
            quantity: "1",
        },
        {
            name: "Pizza",
            category: "Main Dishes",
            suitableFor: "Dinner",
            imgSrc:
                "https://i.pinimg.com/564x/1d/28/c5/1d28c51cfab73dfcd0e3fad6824f4e86.jpg",
            price: "380.00",
            quantity: "1",
        },
        {
            name: "Cola",
            category: "Drinks",
            suitableFor: "Launch",
            imgSrc:
                "https://i.pinimg.com/564x/74/ed/61/74ed61457db38643a8b75c163ca2164b.jpg",
            price: "80.00",
            quantity: "1",
        },
        {
            name: "Coffee",
            category: "Drinks",
            suitableFor: "Breakfast",
            imgSrc:
                "https://i.pinimg.com/564x/50/f1/7c/50f17c380525acf16c5ad8df185b1554.jpg",
            price: "580.00",
            quantity: "1",
        },
        {
            name: "Ice Cream",
            category: "Desserts",
            suitableFor: "Dinner",
            imgSrc:
                "https://i.pinimg.com/564x/3c/51/b6/3c51b6cbe2dd56cca60033c616d54b83.jpg",
            price: "480.00",
            quantity: "1",
        },
        {
            name: "Pancakes",
            category: "Main Dishes",
            suitableFor: "Breakfast",
            imgSrc:
                "https://grandbaby-cakes.com/wp-content/uploads/2023/04/fluffy-pancake-recipe.jpg",
            price: "180.00",
            quantity: "1",
        },
        {
            name: "Pasta",
            category: "Main Dishes",
            suitableFor: "Dinner",
            imgSrc:
                "https://i.pinimg.com/564x/25/94/92/2594928b6f79c9f83ef68edce7b4fd93.jpg",
            price: "180.00",
            quantity: "1",
        },
        {
            name: "Smoothie",
            category: "Drinks",
            suitableFor: "Breakfast",
            imgSrc:
                "https://i.pinimg.com/564x/17/b2/1d/17b21db69a6fba40d42f97d4cbf1488e.jpg",
            price: "580.00",
            quantity: "1",
        },
        {
            name: "Lemonade",
            category: "Drinks",
            suitableFor: "Lunch",
            imgSrc:
                "https://i.pinimg.com/564x/b4/53/81/b4538182ae4ebbd10948437a48ae4e5d.jpg",
            price: "280.00",
            quantity: "1",
        },
        {
            name: "Cheesecake",
            category: "Desserts",
            suitableFor: "Dinner",
            imgSrc:
                "https://i.pinimg.com/564x/80/35/60/803560020f0f772bb12862e1eb2f50c0.jpg",
            price: "180.00",
            quantity: "1",
        },
    ];

    const foodList = document.getElementById("food-list");
    const selectedFoodList = document.getElementById("selected-food-list");
    const test = localStorage.getItem("selectedHour");

    // Function to render food items based on categories
    function renderFoodItems(category, suitableFor) {
        foodList.innerHTML = ""; // Clear existing food items

        // Filter food items based on both categories
        const filteredItems = foodItems.filter(
            (item) =>
                item.category === category && item.suitableFor === suitableFor
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
            button.addEventListener("click", function () {
                const itemName =
                    this.parentNode.parentNode.querySelector(
                        "td:nth-child(2)"
                    ).textContent;

                const itemPrice =
                    this.parentNode.parentNode.querySelector(
                        "td:nth-child(3)"
                    ).textContent;

                const quantityInput = this.parentNode.parentNode.querySelector(
                    "input[type='number']"
                );
                const quantity = parseInt(quantityInput.value);

                addSelectedFood(itemName, itemPrice, quantity);
            });
        });

        // Add event listeners to quantity input fields
        const quantityInputs = document.querySelectorAll(
            "input[type='number']"
        );
        quantityInputs.forEach((input) => {
            input.addEventListener("change", function () {
                const itemName =
                    this.parentNode.parentNode.querySelector(
                        "td:nth-child(2)"
                    ).textContent;
                const itemPrice = parseFloat(this.dataset.price); // Retrieve the original price
                const newQuantity = parseInt(this.value);
                const newPrice = itemPrice * newQuantity;
                updateSelectedFoodPrice(itemName, newPrice);
            });
        });

        // Add event listeners to Delete buttons
        const deleteButtons = document.querySelectorAll(".delete-btn");
        deleteButtons.forEach((button) => {
            button.addEventListener("click", function () {
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
        let selectedFoods =
            JSON.parse(localStorage.getItem("selectedFoods")) || [];

        // Check if the food is already selected
        const existingFoodIndex = selectedFoods.findIndex(
            (food) => food.name === foodName
        );
        if (existingFoodIndex !== -1) {
            // If the food is already selected, update its quantity
            selectedFoods[existingFoodIndex].quantity += quantity;
            selectedFoods[existingFoodIndex].totalPrice +=
                parseFloat(foodPrice.replace("$", "")) * quantity;
        } else {
            // If the food is not selected yet, add it as a new object
            selectedFoods.push({
                name: foodName,
                price: parseFloat(foodPrice.replace("$", "")),
                quantity: quantity,
                totalPrice: parseFloat(foodPrice.replace("$", "")) * quantity,
            });
        }

        // Save the updated selected foods array back to localStorage
        localStorage.setItem("selectedFoods", JSON.stringify(selectedFoods));
    }

    // Function to add selected food to the list
    function addSelectedFood(foodName, foodPrice, quantity) {
        const existingItem = selectedFoodList.querySelector(
            `li[data-food-name="${foodName}"]`
        );
        if (existingItem) {
            const priceElement = existingItem.querySelector(".food-price");
            const price = parseFloat(priceElement.textContent.replace("$", ""));
            const newPrice =
                price + parseFloat(foodPrice.replace("$", "")) * quantity;
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
        const selectedFoods =
            JSON.parse(localStorage.getItem("selectedFoods")) || [];
        const updatedFoods = selectedFoods.filter(
            (food) => food.name !== foodName
        );
        localStorage.setItem("selectedFoods", JSON.stringify(updatedFoods));
    }

    // Event listeners for filter buttons

    document
        .getElementById("main-dishes-btn")
        .addEventListener("click", function () {
            updateActiveButton("main-dishes-btn");
            renderFoodItems("Main Dishes", test);
        });
    document
        .getElementById("drinks-btn")
        .addEventListener("click", function () {
            updateActiveButton("drinks-btn");
            renderFoodItems("Drinks", test);
        });
    document
        .getElementById("desserts-btn")
        .addEventListener("click", function () {
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
});
