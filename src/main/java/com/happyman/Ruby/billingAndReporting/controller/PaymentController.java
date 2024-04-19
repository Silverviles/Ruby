
package com.happyman.Ruby.billingAndReporting.controller;

import com.happyman.Ruby.billingAndReporting.dto.PaymentsDTO;
import com.happyman.Ruby.common.BaseController;
import com.happyman.Ruby.masterService.dao.Payment;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
@RequestMapping("/payments")


    public class PaymentController extends BaseController {

        private static final Logger log = LoggerFactory.getLogger(PaymentController.class);

        @GetMapping("/paymentHome")
        public String paymentHome() {
            return "paymentHome";
        }
        @GetMapping("/getCustomerDetails")
        public String displayPaymentData(Model model) {
            List<PaymentsDTO> payment = masterService.getPaymentsDTOList();
            model.addAttribute("allPayments", payment);
            return "/payment_updateDelete";
        }

        @PostMapping("/addPaymentStatus")
        public String addPaymentStatus(@ModelAttribute PaymentsDTO paymentsDTO) {
            if (paymentsDTO.getPaymentStatus() == null) {
                paymentsDTO.setPaymentStatus(false);
            }
            masterService.addPayment(PaymentsDTO);
            return "redirect:/success";
        }

        @PostMapping("/deletePayment")
        public String deletePayment(@ModelAttribute PaymentsDTO paymentsDTO) {
            masterService.deletePayment(paymentsDTO.getBID());
            masterService.deletePaymentBypaymentId(paymentsDTO.getBID());
            return "redirect:/success";
        }

        @PostMapping("/updatePayment")
        public String updatePayment(@ModelAttribute PaymentsDTO paymentsDTO) {
            masterService.updatePaymentDTO(paymentsDTO);
            return "redirect:/success";
        }

        @PostMapping("/generateBill")
        public String generateBill(@ModelAttribute PaymentsDTO paymentsDTO) {

        }
    }


