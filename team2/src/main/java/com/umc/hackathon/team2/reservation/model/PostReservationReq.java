package com.umc.hackathon.team2.reservation.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
public class PostReservationReq {
    private int centerIdx;
    private int centerReservationIdx;
    private String participationDate;
    private int price;
}
