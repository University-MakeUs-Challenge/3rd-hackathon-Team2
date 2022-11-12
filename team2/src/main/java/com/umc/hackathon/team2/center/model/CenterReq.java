package com.umc.hackathon.team2.center.model;

import lombok.Data;

@Data
public class CenterReq {
    private String categoryName;
    private String centerName;
    private String phoneNum;
    private String regionName;
    private double latitude;
    private double longitude;
    private int openTime;
    private int closeTime;
}
