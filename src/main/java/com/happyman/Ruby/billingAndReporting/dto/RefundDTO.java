package com.happyman.Ruby.billingAndReporting.dto;


import com.happyman.Ruby.masterService.dao.Addon;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
public class RefundDTO {
    private Integer bID;
    private String customerName;
    private String refundDetails;
    private Integer amount;
    private boolean refundStatus;
    private List<Addon> addonList;

}
