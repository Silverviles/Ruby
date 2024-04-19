package com.happyman.Ruby.masterService.dao;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "feedback")
public class Feedback {
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY) @Column(name = "feedbackId", nullable = false) private Integer id;

    @Column(name = "userName", nullable = false) private String userName;

    @Column(name = "email", nullable = false) private String email;

    @Column(name = "bookingID", nullable = false) private String bookingID;

}
