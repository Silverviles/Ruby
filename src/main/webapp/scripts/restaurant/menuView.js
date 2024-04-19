// Sample data of meals
let meals = [
    {
        name: "Pancakes",
        type: "breakfast",
        dishType: "mainDish",
        price: 5.99,
        image: "pancakes.jpg",
    },
    {
        name: "Orange Juice",
        type: "breakfast",
        dishType: "drink",
        price: 2.49,
        image: "orange_juice.jpg",
    },
    {
        name: "Chicken Sandwich",
        type: "lunch",
        dishType: "mainDish",
        price: 8.49,
        image: "chicken_sandwich.jpg",
    },
    {
        name: "Coke",
        type: "lunch",
        dishType: "drink",
        price: 1.99,
        image: "coke.jpg",
    },
    {
        name: "Spaghetti",
        type: "dinner",
        dishType: "mainDish",
        price: 10.99,
        image: "spaghetti.jpg",
    },
    {
        name: "Ice Cream",
        type: "dinner",
        dishType: "dessert",
        price: 4.99,
        image: "ice_cream.jpg",
    },
    // Add more meal items as needed
];

// Function to render table rows based on meal data
function renderTable(filteredMeals) {
    const mealBody = document.getElementById("mealBody");
    mealBody.innerHTML = "";

    filteredMeals.forEach((meal) => {
        const row = document.createElement("tr");
        row.innerHTML = `
      <td><img src="${meal.image}" alt="${meal.name}" width="100"></td>
      <td>${meal.name}</td>
      <td>${meal.type}</td>
      <td>${meal.dishType}</td>
      <td>$${meal.price.toFixed(2)}</td>
      <td><button onclick="editMeal(${meal.id})">Edit</button>
      <button onclick="deleteMeal(${meal.id})">Delete</button></td>
    `;
        mealBody.appendChild(row);
    });
}

// Function to filter meals by meal type
function filterByMealType(type) {
    const filteredMeals =
        type === "all" ? meals : meals.filter((meal) => meal.type === type);
    renderTable(filteredMeals);
}

// Function to filter meals by dish type
function filterByDishType(type) {
    const filteredMeals =
        type === "all" ? meals : meals.filter((meal) => meal.dishType === type);
    renderTable(filteredMeals);
}
// Function to delete a meal by ID
function deleteMeal(id) {
    meals = meals.filter((meal) => meal.id !== id);
    renderTable(meals);
}
function editMeal(id) {
    const mealToEdit = meals.find((meal) => meal.id === id);
    if (mealToEdit) {
        // Here you can implement the edit functionality, for example, opening a modal with form fields pre-populated with mealToEdit data.
        console.log("Editing meal:", mealToEdit);
    }
}
// Initial render
renderTable(meals);
