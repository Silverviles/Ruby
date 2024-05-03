//package com.happyman.Ruby.employeeManagement.controller;
//
//
//import com.happyman.Ruby.masterService.dao.Employee;
//import com.happyman.Ruby.masterService.service.DataMapper;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestBody;
//import org.springframework.web.bind.annotation.RestController;
//
//import javax.naming.Context;
//import java.util.List;
//
//@RestController
//public class DemoDocument {
//
//    @Autowired
//    private DocumentGenerator documentGenerator;
//
//    @Autowired
//    private SpringTemplateEngine springTemplateEngine;
//
//    @Autowired
//    private DataMapper dataMapper;
//
//    @PostMapping(value = "/generate/document")
//    public String generateDocument(@RequestBody List<Employee> employeeList) {
//
//        String finalHtml = null;
//
//        Context dataContext = dataMapper.setData(employeeList);
//
//        finalHtml = springTemplateEngine.process("template", dataContext);
//
//        documentGenerator.htmlToPdf(finalHtml);
//
//        return "Success";
//    }
//}