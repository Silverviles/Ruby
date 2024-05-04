function calculateTotal() {
    var mealType = document.getElementById("mealType").value;
    var mainCourse =
        document.getElementById("mainCourse").options[
            document.getElementById("mainCourse").selectedIndex
            ].text;
    var mainCoursePrice = parseFloat(
        document.getElementById("mainCourse").value
    );
    var drink =
        document.getElementById("drink").options[
            document.getElementById("drink").selectedIndex
            ].text;
    var drinkPrice = parseFloat(document.getElementById("drink").value);
    var dessert =
        document.getElementById("dessert").options[
            document.getElementById("dessert").selectedIndex
            ].text;
    var dessertPrice = parseFloat(document.getElementById("dessert").value);
    var totalPrice = mainCoursePrice + drinkPrice + dessertPrice;

    document.getElementById("mealTypeOutput").value =
        "Meal Type: " + mealType;
    document.getElementById("mainCourseOutput").value =
        "Main Course: " + mainCourse + " - $" + mainCoursePrice.toFixed(2);
    document.getElementById("drinkOutput").value =
        "Drink: " + drink + " - $" + drinkPrice.toFixed(2);
    document.getElementById("dessertOutput").value =
        "Dessert: " + dessert + " - $" + dessertPrice.toFixed(2);
    document.getElementById("totalPrice").value =
        "Total Price: $" + totalPrice.toFixed(2);
}