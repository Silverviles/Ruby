//
// // Your JavaScript code goes here
//
// // This is where you can connect to your backend to retrieve and update employee data
// // You can use AJAX or fetch to make requests to your backend APIs
// //
// // // Sample data for demonstration
// // const sampleEmployees = [
// //     { id: 1, firstName: "John", lastName: "Doe", email: "john@example.com", contactNumber: "1234567890", salary: "$50,000", shiftType: "Day" },
// //     { id: 2, firstName: "Jane", lastName: "Smith", email: "jane@example.com", contactNumber: "9876543210", salary: "$60,000", shiftType: "Night" },
// //     { id: 3, firstName: "Bob", lastName: "Johnson", email: "bob@example.com", contactNumber: "5555555555", salary: "$55,000", shiftType: "Day" }
// //     // Add more sample employees as needed
// // ];
//
// // Function to render employees in the table
// function renderEmployees(employees) {
//     const tbody = document.querySelector("#employeeTable tbody");
//     tbody.innerHTML = ""; // Clear existing rows
//     employees.forEach(employee => {
//         const tr = document.createElement("tr");
//         tr.innerHTML = `
//                 <td>${employee.id}</td>
//                 <td><input type="text" class="editInput" value="${employee.firstName}" disabled></td>
//                 <td><input type="text" class="editInput" value="${employee.lastName}" disabled></td>
//                 <td><input type="text" class="editInput" value="${employee.email}" disabled></td>
//                 <td><input type="text" class="editInput" value="${employee.contactNumber}" disabled></td>
//                 <td>${employee.salary}</td>
//                 <td>
//                     <select class="editSelect" disabled>
//                         <option value="Day" ${employee.shiftType === "Day" ? "selected" : ""}>Day</option>
//                         <option value="Night" ${employee.shiftType === "Night" ? "selected" : ""}>Night</option>
//                     </select>
//                 </td>
//                 <td><button class="editButton" data-id="${employee.id}">Edit</button></td>
//             `;
//         tbody.appendChild(tr);
//
//         // Add event listener for row selection
//         tr.addEventListener("click", function() {
//             const isSelected = this.classList.contains("selectedRow");
//             const allRows = document.querySelectorAll("tbody tr");
//             if (!isSelected) {
//                 allRows.forEach(row => row.classList.remove("selectedRow"));
//                 this.classList.add("selectedRow");
//             } else {
//                 this.classList.remove("selectedRow");
//             }
//         });
//     });
// }
//
// // Initial rendering of employees
// renderEmployees(sampleEmployees);
//
// // Search functionality
// const searchInput = document.getElementById("search");
// searchInput.addEventListener("input", function() {
//     const searchTerm = this.value.trim().toLowerCase();
//     const filteredEmployees = sampleEmployees.filter(employee =>
//         employee.firstName.toLowerCase().includes(searchTerm) ||
//         employee.lastName.toLowerCase().includes(searchTerm) ||
//         employee.email.toLowerCase().includes(searchTerm) ||
//         employee.contactNumber.includes(searchTerm) ||
//         employee.salary.includes(searchTerm) ||
//         employee.shiftType.toLowerCase().includes(searchTerm)
//     );
//     renderEmployees(filteredEmployees);
// });
//
// // Edit functionality
// const editButtons = document.querySelectorAll(".editButton");
// const submitEditButton = document.getElementById("submitEdit");
//
// editButtons.forEach(button => {
//     button.addEventListener("click", function() {
//         const row = this.parentNode.parentNode;
//         const inputs = row.querySelectorAll(".editInput");
//         const selects = row.querySelectorAll(".editSelect");
//         inputs.forEach(input => input.disabled = false);
//         selects.forEach(select => select.disabled = false);
//         this.style.display = "none";
//         submitEditButton.style.display = "block";
//     });
// });
//
// submitEditButton.addEventListener("click", function() {
//     // Here you can implement logic to submit the edited employee data
//     alert("Employee data submitted successfully!");
//     const row = this.parentNode.querySelector("tr");
//     const inputs = row.querySelectorAll(".editInput");
//     const selects = row.querySelectorAll(".editSelect");
//     inputs.forEach(input => input.disabled = true);
//     selects.forEach(select => select.disabled = true);
//     const editButton = row.querySelector(".editButton");
//     editButton.style.display = "block";
//     this.style.display = "none";
//     searchInput.value = ""; // Clear search input
//     renderEmployees(sampleEmployees); // Re-render table to remove search filters
//     // Unselect all rows
//     const selectedRows = document.querySelectorAll(".selectedRow");
//     selectedRows.forEach(row => row.classList.remove("selectedRow"));
//
//     // Reattach event listeners for record selection
//     const newEditButtons = document.querySelectorAll(".editButton");
//     newEditButtons.forEach(button => {
//         button.addEventListener("click", function() {
//             const row = this.parentNode.parentNode;
//             const inputs = row.querySelectorAll(".editInput");
//             const selects = row.querySelectorAll(".editSelect");
//             inputs.forEach(input => input.disabled = false);
//             selects.forEach(select => select.disabled = false);
//             this.style.display = "none";
//             submitEditButton.style.display = "block";
//         });
//     });
//
//     // Reattach event listeners for row selection
//     const rows = document.querySelectorAll("#employeeTable tbody tr");
//     rows.forEach(row => {
//         row.addEventListener("click", function() {
//             const isSelected = this.classList.contains("selectedRow");
//             const allRows = document.querySelectorAll("tbody tr");
//             if (!isSelected) {
//                 allRows.forEach(row => row.classList.remove("selectedRow"));
//                 this.classList.add("selectedRow");
//             } else {
//                 this.classList.remove("selectedRow");
//             }
//         });
//     });
// });
