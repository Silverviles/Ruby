
//mewa aluthen add kare
//methanin venne backend gatta table id ekai availability ekai pass karana eka
for (var i = 1; i <= 12; i++) {
    var shapeId = document.getElementById(i);
    var tableIdStatus = shapeId.getAttribute("data-tableStatus");
    shapeId.classList.add(tableIdStatus)
}

//<p> element eka null value ekak denva mulin
var selectedTable = document.getElementById("selectedTableDisplay");
selectedTable = null;

//me function eken venne click karama select vena scene eka
function toggleColor(id) {
    var shape = document.getElementById(id);
    var tableValue = shape.getAttribute("data-tableNum");

    if (shape.classList.contains("available")) {
        shape.classList.remove("available");
        shape.classList.add("selected");
        alert("table " + tableValue + " selected");
        localStorage.setItem("tableNumber", tableValue);

        //selected table ekata value eka deela select karpu eka display karanava
        selectedTable.textContent = "Selected Table: " + tableValue;

    } else if (shape.classList.contains("selected")) {
        shape.classList.remove("selected");
        shape.classList.add("available");
        localStorage.removeItem("tableNumber");

        selectedTable.textContent = "Selected Table: " + null;

    } else if (shape.classList.contains("reserved")) {
        alert("table " + tableValue + " is reserved");
    } else {
        alert("table " + tableValue + " is not-available");
    }
}