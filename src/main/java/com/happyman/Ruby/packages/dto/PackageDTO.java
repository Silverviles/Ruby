package com.happyman.Ruby.packages.dto;

import com.happyman.Ruby.common.DomainConstants;
import com.happyman.Ruby.masterService.dao.Addon;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDate;
import java.util.List;

@Getter
@Setter
public class PackageDTO {
    private Integer id;
    private String name;
    private String description;
    private Float price;
    private LocalDate discontinueDate;
    private Byte availability;
    private DomainConstants.PackageType type;
    private Integer maxAdults;
    private List<Addon> addonList;

}
