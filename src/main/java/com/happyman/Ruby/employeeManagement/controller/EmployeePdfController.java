//package com.happyman.Ruby.employeeManagement.controller;
//
//import com.happyman.Ruby.masterService.dao.Employee;
//import com.happyman.Ruby.masterService.service.EmployeeService;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.http.HttpHeaders;
//import org.springframework.http.MediaType;
//import org.springframework.http.ResponseEntity;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.GetMapping;
//
//import java.io.ByteArrayOutputStream;
//import java.io.IOException;
//import java.util.List;
//
//@Controller
//public class EmployeePdfController {
//
//    @Autowired
//    private EmployeeService employeeService; // Inject EmployeeService to retrieve employee data
//
//    @GetMapping("/employeeManagement/generateEmployeePdf")
//    public ResponseEntity<byte[]> generateEmployeeReportPdf() {
//        // Retrieve employee data
//        List<Employee> employees = employeeService.getAllEmployees();
//
//        // Generate PDF
//        byte[] pdfBytes = generateEmployeeReportPdfContent(employees);
//
//        // Prepare HTTP headers for download
//        HttpHeaders headers = new HttpHeaders();
//        headers.setContentType(MediaType.APPLICATION_PDF);
//        headers.setContentDispositionFormData("filename", "employee_report.pdf");
//
//        // Return PDF as a byte array in ResponseEntity
//        return ResponseEntity.ok()
//                .headers(headers)
//                .contentLength(pdfBytes.length)
//                .body(pdfBytes);
//    }
//
//    private byte[] generateEmployeeReportPdfContent(List<Employee> employees) {
//        try (ByteArrayOutputStream baos = new ByteArrayOutputStream();
//             PDDocument document = new PDDocument()) {
//            PDPage page = new PDPage();
//            document.addPage(page);
//
//            PDPageContentStream contentStream = new PDPageContentStream(document, page);
//            contentStream.setFont(PDType1Font.HELVETICA_BOLD, 12);
//            contentStream.beginText();
//            contentStream.newLineAtOffset(100, 700);
//            contentStream.showText("Employee Report");
//            contentStream.newLineAtOffset(0, -20);
//
//            for (Employee employee : employees) {
//                contentStream.showText("ID: " + employee.getId());
//                contentStream.newLineAtOffset(0, -20);
//                contentStream.showText("Name: " + employee.getFirstName() + " " + employee.getLastName());
//                contentStream.newLineAtOffset(0, -20);
//                contentStream.showText("Email: " + employee.getEmail());
//                contentStream.newLineAtOffset(0, -20);
//                contentStream.showText("Contact: " + employee.getContact());
//                contentStream.newLineAtOffset(0, -20);
//                contentStream.showText("Salary: " + employee.getSalary());
//                contentStream.newLineAtOffset(0, -20);
//                contentStream.newLineAtOffset(0, -20); // Add space between employees
//            }
//
//            contentStream.endText();
//            contentStream.close();
//
//            document.save(baos);
//            return baos.toByteArray();
//        } catch (IOException e) {
//            e.printStackTrace();
//            return new byte[0];
//        }
//    }
//}
