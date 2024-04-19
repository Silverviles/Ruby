package com.happyman.Ruby.masterService.dao;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Lob;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

import java.sql.Date;
import java.time.LocalDate;

@Getter
@Setter
@Entity
@Table(name = "event_booking")
public class EventBook {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) @Column(name = "booking_ID", nullable = false) private Integer id;

    @Column(name = "customerName", nullable = false, length = 50) private String customerName;

    @Column(name = "date") private LocalDate date;

    @Column(name = "eventType", nullable = false, length = 50) private String eventType;

    @Column(name = "location", nullable = false, length = 50) private String location;

    @Column(name = "noOfMembers", nullable = false) private  Integer noOfMembers;

    @Column(name = "image", length = 100) private String image;

    @Lob
    @Column(name = "customerDescription") private String customerDescription;
}
