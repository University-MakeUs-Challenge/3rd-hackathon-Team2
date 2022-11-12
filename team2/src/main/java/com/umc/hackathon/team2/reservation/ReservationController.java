package com.umc.hackathon.team2.reservation;

import com.umc.hackathon.team2.config.BaseException;
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
    @PostMapping("/{userIdx}")
    public BaseResponse<PostReservationRes> createReservation(@PathVariable("userIdx") int userIdx, @RequestBody PostReservationReq postReservationReq) throws BaseException {
        try {
            PostReservationRes postReservationRes = reservationService.createReservation(userIdx, postReservationReq);
            return new BaseResponse<>(postReservationRes);
        } catch (BaseException e) {
            return new BaseResponse<>(e.getStatus());
        }
    }

    @ResponseBody
    @PatchMapping("/cancel/{reservationIdx}")
    public BaseResponse<String> deleteReservation(@PathVariable("reservationIdx") int reservationIdx) {
        try {
            reservationService.deleteReservation(reservationIdx);
            String res = "삭제되었습니다.";
            return new BaseResponse<>(res);
        } catch (BaseException e) {
            return new BaseResponse<>(e.getStatus());
        }
    }
}
