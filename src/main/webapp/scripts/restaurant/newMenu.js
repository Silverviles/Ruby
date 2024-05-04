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

    // Function to render food items based on categories
    function renderFoodItems(suitableFor) {
        foodList.innerHTML = ""; // Clear existing food items

        // Filter food items based on both categories
        const filteredItems = foodItems.filter(
            (item) => item.suitableFor === suitableFor
        );

        // Create table rows for filtered food items
        filteredItems.forEach((item) => {
            const row = document.createElement("tr");
            row.innerHTML = `
            <td><img src="${item.imgSrc}" alt="${item.name}" width="400" style="border-radius: 24px; padding: 16px;"></td>
            <td>${item.name}</td>
            <td>$${item.price}</td>

          `;
            foodList.appendChild(row);
        });
    }

    // Event listeners for filter buttons
    // Event listener for dropdown change
    document
        .getElementById("meal-dropdown")
        .addEventListener("change", function () {
            const selectedMeal = this.value; // Get the selected meal value
            renderFoodItems(selectedMeal); // Render food items based on the selected meal
        });

    // Function to update active dropdown option
    function updateActiveDropdown(activeMeal) {
        const dropdownOptions = document.querySelectorAll(
            "#meal-dropdown option"
        );
        dropdownOptions.forEach((option) => {
            if (option.value === activeMeal) {
                option.selected = true; // Select the active meal option
            } else {
                option.selected = false; // Deselect other options
            }
        });
    }

    // Initial render
    renderFoodItems("Breakfast");
});