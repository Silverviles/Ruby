
document.getElementById('downloadPdf').addEventListener('click', function () {
    var pdf = new jsPDF();

    // Get the content of the div element
    var content = document.getElementById('contentToDownload').innerHTML;

    // Generate PDF from HTML content
    pdf.fromHTML(content, 10, 10);

    // Download the PDF
    pdf.save('downloaded_pdf.pdf');
});