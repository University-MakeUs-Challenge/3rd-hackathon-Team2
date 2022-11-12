package com.umc.hackathon.team2.reservation.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.sql.Date;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class PostReservationReq {
    private int centerIdx;
    private int centerReservationIdx;
    private String participationDate;
    private int price;
}
