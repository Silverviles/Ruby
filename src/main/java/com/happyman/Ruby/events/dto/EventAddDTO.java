package com.happyman.Ruby.events.dto;

import com.happyman.Ruby.masterService.dao.Addon;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
public class EventAddDTO {

    private Integer eventId;
    private String eventName;
    private Byte available;
    private String adminDescription;
    private String imageInput;
    private Float priceInput;

}
