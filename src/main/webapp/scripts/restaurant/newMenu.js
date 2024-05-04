document.addEventListener("DOMContentLoaded", function () {
    // Sample food items data for demonstration
    const foodItems = [
        {
            name: "Burger",
            category: "Main Dishes",
            suitableFor: "Launch",
            imgSrc: "burger.jpg",
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
            name: "Hoers",
            category: "Main Dishes",
            suitableFor: "Breakfast",
            imgSrc:
                "https://handletheheat.com/wp-content/uploads/2015/03/cake-doughnut-recipe-SQUARE.jpg",
            price: "280.00",
            quantity: "1",
        },
        {
            name: "Pizza",
            category: "Main Dishes",
            suitableFor: "Dinner",
            imgSrc: "pizza.jpg",
            price: "380.00",
            quantity: "1",
        },
        {
            name: "Cola",
            category: "Drinks",
            suitableFor: "Launch",
            imgSrc: "cola.jpg",
            price: "80.00",
            quantity: "1",
        },
        {
            name: "Coffee",
            category: "Drinks",
            suitableFor: "Breakfast",
            imgSrc: "coffee.jpg",
            price: "580.00",
            quantity: "1",
        },
        {
            name: "Ice Cream",
            category: "Desserts",
            suitableFor: "Dinner",
            imgSrc: "ice-cream.jpg",
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
            imgSrc: "pasta.jpg",
            price: "180.00",
            quantity: "1",
        },
        {
            name: "Smoothie",
            category: "Drinks",
            suitableFor: "Breakfast",
            imgSrc: "smoothie.jpg",
            price: "580.00",
            quantity: "1",
        },
        {
            name: "Lemonade",
            category: "Drinks",
            suitableFor: "Lunch",
            imgSrc: "lemonade.jpg",
            price: "280.00",
            quantity: "1",
        },
        {
            name: "Cheesecake",
            category: "Desserts",
            suitableFor: "Dinner",
            imgSrc: "cheesecake.jpg",
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