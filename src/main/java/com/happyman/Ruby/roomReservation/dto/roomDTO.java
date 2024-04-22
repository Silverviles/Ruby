package com.happyman.Ruby.roomReservation.dto;


import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

import java.sql.Timestamp;

@Entity

public class roomDTO {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer roomId;

    private int maxCapacity;
    private int minCapacity;
    private String roomType;
    private double costPerQuarter;
    private double costPerHalf;
    private double costPerDay;
    private String occupancyStatus;
    private String roomImg;
    private Timestamp createdAt;

}
