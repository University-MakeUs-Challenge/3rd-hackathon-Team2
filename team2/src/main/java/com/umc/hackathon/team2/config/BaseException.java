package com.umc.hackathon.team2.config;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
public class BaseException extends Exception {
    private com.umc.hackathon.team2.config.BaseResponseStatus status;
}
