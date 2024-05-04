function searchTable(inputId, tableId, columnIndex) {
	let input, filter, table, tr, td, i, txtValue;
	input = document.getElementById(inputId);
	filter = input.value.toUpperCase();

	table = document.getElementById(tableId);
	tr = table.getElementsByTagName("tr");

	for (i = 0; i < tr.length; i++) {
		td = tr[i].getElementsByTagName("td")[columnIndex];
		if (td) {
			txtValue = td.textContent || td.innerText;
			if (txtValue.toUpperCase().indexOf(filter) > -1) {
				tr[i].style.display = "";
			} else {
				tr[i].style.display = "none";
			}
		}
	}
}

window.onload = function () {
	const searchPackageInput = document.getElementById("searchPackageInput");
	const searchEmployeeInput = document.getElementById("searchEmployeeInput");
	const searchPaymentInput = document.getElementById("searchPaymentInput");
	const searchRefundInput = document.getElementById("searchRefundInput");
	const searchEventInput = document.getElementById("searchEventInput");
	const searchRoomInput = document.getElementById("searchRoomInput");
	const searchFoodInput = document.getElementById("searchFoodInput");
	const searchComplaintInput = document.getElementById("searchComplaintInput");
	searchEmployeeInput.addEventListener("input", () => {searchTable("searchEmployeeInput", "employeeTable", 1)});
	searchPackageInput.addEventListener("input", () => {searchTable("searchPackageInput", "packageTable", 1)});
	searchPaymentInput.addEventListener("input", () => {searchTable("searchPaymentInput", "paymentTable", 0)});
	searchRefundInput.addEventListener("input", () => {searchTable("searchRefundInput", "refundTable", 0)});
	searchEventInput.addEventListener("input", () => {searchTable("searchEventInput", "eventTable", 1)});
	searchRoomInput.addEventListener("input", () => {searchTable("searchRoomInput", "roomTable", 1)});
	searchFoodInput.addEventListener("input", () => {searchTable("searchFoodInput", "foodTable", 1)});
	searchComplaintInput.addEventListener("input", () => {searchTable("searchComplaintInput", "complaintTable", 0)});
};