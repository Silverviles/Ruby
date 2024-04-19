package com.happyman.Ruby.billingAndReporting.dto;


import com.happyman.Ruby.masterService.dao.Addon;
import lombok.Getter;
import lombok.Setter;

import java.util.List;
import java.util.Map;

@Getter
@Setter
public class PaymentsDTO {
    private Integer bID;
    private String customerName;
    private String customerEmail;
    private Map<String, Map<Integer, Double>> records;
    private Double amount;
    private Byte paymentStatus;
}
