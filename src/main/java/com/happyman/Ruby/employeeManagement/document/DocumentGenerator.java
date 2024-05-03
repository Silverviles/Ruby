//package com.happyman.Ruby.employeeManagement.document;
//
//
//import org.springframework.stereotype.Service;
//
//import java.io.ByteArrayOutputStream;
//import java.io.FileOutputStream;
//
//@Service
//public class DocumentGenerator {
//
//    public String htmlToPdf(String processedHtml) {
//
//        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
//
//        try {
//
//            PdfWriter pdfwriter = new PdfWriter(byteArrayOutputStream);
//
//            DefaultFontProvider defaultFont = new DefaultFontProvider(false, true, false);
//
//            ConverterProperties converterProperties = new ConverterProperties();
//
//            converterProperties.setFontProvider(defaultFont);
//
//            HtmlConverter.convertToPdf(processedHtml, pdfwriter, converterProperties);
//
//            FileOutputStream fout = new FileOutputStream("/Users/shivajichandra/Desktop/Document/employee.pdf");
//
//            byteArrayOutputStream.writeTo(fout);
//            byteArrayOutputStream.close();
//
//            byteArrayOutputStream.flush();
//            fout.close();
//
//            return null;
//
//        } catch(Exception ex) {
//
//            //exception occured
//        }
//
//        return null;
//    }
//}