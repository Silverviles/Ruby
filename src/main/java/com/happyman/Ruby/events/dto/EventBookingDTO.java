package com.happyman.Ruby.events.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class EventBookingDTO {

        private String customerName;
        private String date;
        private String eventType;
        private String eventLocation;
        private Integer numberOfMembers;
        private String customerDiscription;

}
