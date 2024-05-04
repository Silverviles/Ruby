package com.happyman.Ruby.masterService.dao;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "table")
public class TableAvailability {
    @Id
    @Column(name = "table_id", nullable = false) private Integer id;

    @Column(name = "seat_Availability", nullable = false) private String seatAvailability;
}
