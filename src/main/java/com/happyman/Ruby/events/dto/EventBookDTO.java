package com.happyman.Ruby.events.dto;

import lombok.Getter;
import lombok.Setter;

import java.time.LocalDate;

@Getter
@Setter
public class EventBookDTO {
    private Integer id;
    private String customerName;
    private LocalDate date;
    private String eventType;
    private String location;
    private Integer noOfMembers;

    private String customerDescription;
}
