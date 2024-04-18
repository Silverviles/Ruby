// fetch('/employeeManagement/getAllEmployees')
//     .then(response => response.json())
//     .then(data => {
//         const employeeBody = document.getElementById('employeeBody');
//         employeeBody.innerHTML = ''; // Clear existing data
//
//         // Iterate over each employee data and create table rows
//         data.forEach(employee => {
//             const row = document.createElement('tr');
//             row.innerHTML = `
//                 <td>${employee.employeeId}</td>
//                 <td>${employee.firstName}</td>
//                 <td>${employee.lastName}</td>
//                 <td>${employee.email}</td>
//                 <td>${employee.contactNo}</td>
//                 <td>${employee.salary}</td>
//                 <td>Shift Type</td> <!-- Example column, replace with actual data -->
//                 <td>Action</td> <!-- Example column, replace with action buttons or links -->
//             `;
//             employeeBody.appendChild(row);
//         });
//     })
//     .catch(error => console.error('Error fetching employee data:', error));
//
//
//
//
//
//
//
//
//
//
//
//
// // //3rd try to edit in the table
// //
// // // Function to update employee data in the database
// // function updateEmployeeData(employeeId, columnName, newValue) {
// //     // Send AJAX request to update data
// //     fetch(`/employeeManagement/updateEmployee/${employeeId}`, {
// //         method: 'POST',
// //         headers: {
// //             'Content-Type': 'application/json'
// //         },
// //         body: JSON.stringify({
// //             columnName: columnName,
// //             newValue: newValue
// //         })
// //     })
// //         .then(response => {
// //             if (response.ok) {
// //                 console.log('Employee data updated successfully');
// //                 // Refresh table data
// //                 // Call function to refresh table data
// //             } else {
// //                 console.error('Error updating employee data');
// //             }
// //         })
// //         .catch(error => console.error('Error updating employee data:', error));
// // }

// Sample employee data
// let employees = [
//     { id: 1, firstName: 'John', lastName: 'Doe', email: 'john@example.com', mobile: '123-456-7890', shiftType: 'Day', baseSalary: 50000 },
//     { id: 2, firstName: 'Jane', lastName: 'Smith', email: 'jane@example.com', mobile: '987-654-3210', shiftType: 'Night', baseSalary: 55000 },
//     { id: 3, firstName: 'Alice', lastName: 'Johnson', email: 'alice@example.com', mobile: '456-789-0123', shiftType: 'Day', baseSalary: 52000 },
//     { id: 4, firstName: 'Bob', lastName: 'Brown', email: 'bob@example.com', mobile: '789-012-3456', shiftType: 'Night', baseSalary: 54000 },
//     { id: 5, firstName: 'Emily', lastName: 'Davis', email: 'emily@example.com', mobile: '012-345-6789', shiftType: 'Day', baseSalary: 51000 }
// ];


async function getData() {
    try {
        const response = await fetch('http://localhost:8080/employeeManagement/getAllEmployees',{method:"GET",
        headers:{'Content-Type':"application/json"}});
        if (!response.ok) {
            console.log("error")
        }console.log("ddddd")
        return await response.json();
    } catch (error) {
        console.error('Error fetching employee data:', error);
        // You can handle the error here, e.g., display an error message to the user
        return null; // Return null or handle the error in a different way based on your application's logic
    }
}

// Function to populate the table with employee data
function populateEmployeeTable() {
    const tableBody = document.getElementById('employeeBody');
    tableBody.innerHTML = ''; // Clear existing table data
    const emp=getData();
    console.log(emp);
    emp.forEach(employee => {
        const row = document.createElement('tr');
        row.innerHTML = `
            <td>${employee.id}</td>
            <td>${employee.firstName}</td>
            <td>${employee.lastName}</td>
            <td>${employee.email}</td>
            <td>${employee.mobile}</td>
            <td>${employee.shiftType}</td>
            <td>${employee.baseSalary}</td>
            <td>
                <button onclick="editEmployee(${employee.id})">Edit</button>
                <button onclick="deleteEmployee(${employee.id})">Delete</button>
            </td>
        `;
        tableBody.appendChild(row);
    });
}

// Function to search for employees by first name
function searchEmployee() {
    const searchInput = document.getElementById('searchInput').value.toLowerCase();
    const filteredEmployees = employees.filter(employee => employee.firstName.toLowerCase().includes(searchInput));
    populateEmployeeTable(filteredEmployees);
}

// Function to edit an employee record
function editEmployee(employeeId) {
    // This function would typically open a modal or redirect to an edit page
    console.log(`Edit employee with ID ${employeeId}`);
}

// Function to delete an employee record
function deleteEmployee(employeeId) {
    if (confirm("Are you sure you want to delete this employee?")) {
        employees = employees.filter(employee => employee.id !== employeeId);
        populateEmployeeTable();
    }
}

// Call the function to populate the table on page load
populateEmployeeTable();
