package com.umc.hackathon.team2.center.model;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class CenterRes {
    private int centerIdx;
    //private String categoryIdx;
    private String name;
    private String phoneNum;
    //private int regionIdx;
    private double latitude;
    private double longitude;
    private int openTime;
    private int closeTime;

}
