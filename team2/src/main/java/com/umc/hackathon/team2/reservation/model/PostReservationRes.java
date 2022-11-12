package com.umc.hackathon.team2.reservation.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
public class PostReservationRes {
    private int reservationIdx;
    private int userIdx;
    private int centerIdx;
    private int centerReservationIdx;
    private String reservationDate;
    private String participationDate;
    private int price;
}
