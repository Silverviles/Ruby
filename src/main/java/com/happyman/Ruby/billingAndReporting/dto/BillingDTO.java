package com.happyman.Ruby.billingAndReporting.dto;

import com.happyman.Ruby.masterService.dao.Addon;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
public class BillingDTO {
    private String customerName;
    private String email;
    private String customerEmail;
    private boolean paymentMethod;
    private List<Addon> addonList;

}
