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

    document.getElementById("mealTypeOutput").innerHTML =
        "Meal Type: " + mealType;
    document.getElementById("mainCourseOutput").innerHTML =
        "Main Course: " + mainCourse + " - $" + mainCoursePrice.toFixed(2);
    document.getElementById("drinkOutput").innerHTML =
        "Drink: " + drink + " - $" + drinkPrice.toFixed(2);
    document.getElementById("dessertOutput").innerHTML =
        "Dessert: " + dessert + " - $" + dessertPrice.toFixed(2);
    document.getElementById("totalPrice").innerHTML =
        "Total Price: $" + totalPrice.toFixed(2);
}