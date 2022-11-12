package com.umc.hackathon.team2.reservation.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Reservation {
    private int reservationIdx;
    private int userIdx;
    private int centerIdx;
    private int centerReservationIdx;
    private String reservationDate;
    private String participationDate;
    private int price;
    private String status;
}
