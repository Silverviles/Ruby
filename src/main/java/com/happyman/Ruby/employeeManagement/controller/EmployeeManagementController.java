//package com.happyman.Ruby.employeeManagement.controller;
//
//import com.happyman.Ruby.employeeManagement.dto.EmployeeDTO;
//import com.happyman.Ruby.masterService.service.EmployeeService;
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//
//import java.util.List;
//
//@Controller
//@RequestMapping("/employeeManagement")
//public class EmployeeManagementController {
//
//    private static final Logger log = LoggerFactory.getLogger(EmployeeManagementController.class);
//
////    @Autowired
////    private EmployeeService employeeService;
//
//    @GetMapping("/managementHome")
//    public String showManagementHome(Model model) {
//        // Retrieve all employees
////        List<EmployeeDTO> employees = employeeService.getAllEmployees();
//
//        // Add the list of employees to the model
////        model.addAttribute("employees", employees);
//
//        // Return the name of the JSP file
//        return "employeeManagement/EmployeeManagement"; // Assuming you have a JSP file named "EmployeeManagement.jsp" under "WEB-INF/views/employeeManagement/"
//    }
//}
package com.happyman.Ruby.employeeManagement.controller;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.List;

import com.happyman.Ruby.transportation.dto.DriverDTO;
import com.happyman.Ruby.transportation.utils.DriverAuthentication;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.happyman.Ruby.common.BaseController;
import com.happyman.Ruby.employeeManagement.dto.EmployeeDTO;
import com.happyman.Ruby.masterService.dao.Employee;

@Controller
@RequestMapping("/employeeManagement")
public class EmployeeManagementController extends BaseController {

	private static final Logger log = LoggerFactory.getLogger(EmployeeManagementController.class);


	@GetMapping("/StartHome")
	public String goHome() {
		return "employeeManagement/Home";
	}


	@GetMapping("/managementHome")
	public String showManagementHome(Model model) {
		List<Employee> employees = masterService.getAllEmployees();
		model.addAttribute("employees", employees);
		return "employeeManagement/EmployeeManagement";
	}

	/*delete mapping changed to post mapping*/
	@PostMapping("/delete")
	public String deleteEmployee(Integer employeeId, Model model) {
		masterService.deleteEmployee(employeeId);
		return "redirect:/admin/adminHome?showDiv=emp_updateDelete";
	}

	@PostMapping("/navigateToUpdate")
	public String navigateToUpdate(Integer employeeId, RedirectAttributes model) {
		model.addFlashAttribute("employeeId", employeeId);
		model.addFlashAttribute("editEmployee", masterService.getEmployeeById(employeeId));
		return "redirect:/admin/adminHome?showDiv=emp_registration";
	}

	@PostMapping("/registerEmployee")
	public String registerEmployee(EmployeeDTO employee, Model model) {
		Employee employeeTemp = new Employee();
		if(employee.getEmployeeId() != null){
			employeeTemp = masterService.getEmployeeById(employee.getEmployeeId());
		}
		employeeTemp.setFirstName(employee.getFirstName());
		employeeTemp.setLastName(employee.getLastName());
		employeeTemp.setEmail(employee.getEmail());
		employeeTemp.setMobileNo(employee.getContactNo());
		employeeTemp.setBaseSalary(employee.getSalary());
//		employeeTemp.setShiftCategory(1);
		employeeTemp.setShiftCategory(employee.getShift());
		masterService.addEmployee(employeeTemp);
		log.info("Employee registered: {}", employee);
		return "redirect:/admin/adminHome?showDiv=emp_updateDelete";
	}

	@GetMapping("/employeeManagement/registerHome")
	public String showRegistrationPage(Model model) {
		model.addAttribute("employees", masterService.getAllEmployees());
		return "employeeManagement/EmployeeManagement";
	}



	// Mapping for displaying the login form
	@GetMapping("/admin/login")
	public String showLoginForm() {
		return "employeeManagement/AdminLogin"; // Assuming "admin/login.html" is your login form
	}

	// Mapping for handling login form submission
	@PostMapping("/login")
	public String processLogin(
			@RequestParam("username") String username,
			@RequestParam("password") String password,
			Model model,
			RedirectAttributes redirectAttributes
	) {
		// Simulated admin credentials (replace with actual authentication logic)
		String expectedUsername = "admin";
		String expectedPassword = "password";

		// Validate credentials
		if (username.equals(expectedUsername) && password.equals(expectedPassword)) {
			// Authentication successful
			// Redirect to admin dashboard or home page
			return "admin/admin_sidebar"; // Assuming "/admin/dashboard" is the admin dashboard URL
		} else {
			// Authentication failed
			model.addAttribute("error", "Invalid credentials. Please try again.");
			return "employeeManagement/Home"; // Return to login form with error message
		}
	}

//
//    @GetMapping("/employeeManagement/generateEmployeePdf")
//    public ResponseEntity<byte[]> generateEmployeeReportPdf() {
//        // Retrieve employee data
//        List<Employee> employees = masterService.getAllEmployees();
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
//			 PDDocument document = new PDDocument()) {
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
//        } catch (IOException e) {
//            throw new RuntimeException(e);
//        }
//    }

//
//	@GetMapping("/generatePDF")
//	public void generatePDF(HttpServletRequest request, HttpServletResponse response) throws IOException {
//		List<Employee> employeeList = (List<Employee>) request.getAttribute("employees");
//
//		try (PDDocument document = new PDDocument()) {
//			PDPage page = new PDPage();
//			document.addPage(page);
//
//			PDPageContentStream contentStream = new PDPageContentStream(document, page);
//			contentStream.setFont(PDType1Font.HELVETICA_BOLD, 12);
//			contentStream.beginText();
//			contentStream.newLineAtOffset(100, 700);
//			contentStream.showText("Employee List");
//			contentStream.newLineAtOffset(0, -20);
//
//			for (Employee employee : employeeList) {
//				contentStream.showText(employee.getId() + ": " + employee.getFirstName() + " " + employee.getLastName());
//				contentStream.newLineAtOffset(0, -20);
//			}
//
//			contentStream.endText();
//			contentStream.close();
//
//			response.setContentType("application/pdf");
//			response.setHeader("Content-Disposition", "attachment; filename=\"employee_list.pdf\"");
//			document.save(response.getOutputStream());
//		} catch (IOException e) {
//			e.printStackTrace();
//		}
//	}
//


}


