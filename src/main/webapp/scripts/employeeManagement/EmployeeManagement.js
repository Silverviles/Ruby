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
