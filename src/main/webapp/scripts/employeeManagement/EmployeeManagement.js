// employee.js

function searchEmployee() {
    var input, filter, table, tr, td, i, txtValue;
    input = document.getElementById("searchInput");
    filter = input.value.toUpperCase();
    table = document.getElementById("employeeTable");
    tr = table.getElementsByTagName("tr");

    for (i = 0; i < tr.length; i++) {
        td = tr[i].getElementsByTagName("td")[1]; // Index 1 for first name column
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


    document.getElementById('generatePdfButton').addEventListener('click', function() {
    // Send AJAX request to generate PDF
    var xhr = new XMLHttpRequest();
    xhr.open('GET', '${pageContext.request.contextPath}/employeeManagement/generatePdf', true);
    xhr.responseType = 'blob'; // Set response type to blob for binary data (PDF)

    xhr.onload = function() {
    if (this.status === 200) {
    var blob = new Blob([xhr.response], {type: 'application/pdf'});
    var url = URL.createObjectURL(blob);

    // Create a temporary link element to download the PDF
    var a = document.createElement('a');
    a.href = url;
    a.download = 'employee_list.pdf';
    document.body.appendChild(a);
    a.click();
    document.body.removeChild(a);
}
};

    xhr.send();
});

