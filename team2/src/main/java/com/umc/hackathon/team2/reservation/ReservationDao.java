package com.umc.hackathon.team2.reservation;

import com.umc.hackathon.team2.reservation.model.PostReservationReq;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;

@Repository
public class ReservationDao {

    private JdbcTemplate jdbcTemplate;

//    @Autowired
//    public void setDataSource(DataSource dataSource){
//        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
//    }

/*private int centerIdx;
    private int centerReservationIdx;
    private String reservationDate;
    private String participationDate;
    private int price;
    private String status;*/

    // 예약 생성
//    public int createReservation(int userIdx, PostReservationReq postReservationReq) {
//        String insertReservationQuery =
//                "INSERT INTO Reservation(userIdx, participationDate, price)" +
//                        "VALUES (?, ?, ?);";
//        Object[] insertReservationParams = new Object[]{userIdx, postReservationReq.getParticipationDate(),
//                postReservationReq.getPrice()};
////        this.jdbcTemplate
//    }

}
