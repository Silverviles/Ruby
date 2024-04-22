package com.happyman.Ruby.packages.dto;

import com.happyman.Ruby.masterService.dao.Addon;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDate;
import java.util.List;

@Getter
@Setter
public class PackageDTO {
    private Integer id;
    private String packageName;
    private String packageDescription;
    private Float packagePrice;
    private LocalDate packageDiscontinueDate;
    private Boolean packageAvailability;
    private String packageType;
    private Integer maxAdults;
    private List<Addon> addonList;

}
