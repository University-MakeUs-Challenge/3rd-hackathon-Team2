package com.umc.hackathon.team2.reservation;

import com.umc.hackathon.team2.config.BaseResponse;
import com.umc.hackathon.team2.reservation.model.DelReservationRes;
import com.umc.hackathon.team2.reservation.model.PostReservationReq;
import com.umc.hackathon.team2.reservation.model.PostReservationRes;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/reservation")
public class ReservationController {
    final Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private final ReservationService reservationService;


    public ReservationController(ReservationService reservationService) {
        this.reservationService = reservationService;
    }

    @ResponseBody
    @PostMapping("")
    public BaseResponse<DelReservationRes> createReservation(@RequestBody PostReservationReq postReservationReq) {
        try {
            PostReservationRes postReservationRes = reservationService.
        }
    }
}
