package com.umc.hackathon.team2.reservation;

import com.umc.hackathon.team2.config.BaseException;
import com.umc.hackathon.team2.config.BaseResponseStatus;
import com.umc.hackathon.team2.reservation.model.PostReservationReq;
import com.umc.hackathon.team2.reservation.model.PostReservationRes;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import static com.umc.hackathon.team2.config.BaseResponseStatus.DATABASE_ERROR;

@Service
public class ReservationService {
    final Logger logger = LoggerFactory.getLogger(this.getClass());

    private final ReservationDao reservationDao;

    public ReservationService(ReservationDao reservationDao) {
        this.reservationDao = reservationDao;
    }


    //예약하기
    public PostReservationRes createReservation(int userIdx, PostReservationReq postReservationReq) throws BaseException {
        try {
            int reservationIdx = reservationDao.createReservation(userIdx, postReservationReq);
            return new PostReservationRes(reservationIdx);
        } catch (Exception exception) {
            throw new BaseException(DATABASE_ERROR);
        }
    }
}
