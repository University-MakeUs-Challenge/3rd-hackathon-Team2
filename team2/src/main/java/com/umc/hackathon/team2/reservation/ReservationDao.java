package com.umc.hackathon.team2.reservation;

import com.umc.hackathon.team2.reservation.model.PostReservationReq;
import com.umc.hackathon.team2.reservation.model.PostReservationRes;
import com.umc.hackathon.team2.reservation.model.Reservation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;

@Repository
public class ReservationDao {

    private JdbcTemplate jdbcTemplate;

    @Autowired
    public void setDataSource(DataSource dataSource){
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
    }

/*private int centerIdx;
    private int centerReservationIdx;
    private String reservationDate;
    private String participationDate;
    private int price;
    private String status;*/

    // 예약 생성
    public int createReservation(int userIdx, PostReservationReq postReservationReq) {
        String insertReservationQuery =
                "INSERT INTO Reservation(userIdx, participationDate, price)" +
                        "VALUES (?, ?, ?);";
        Object[] insertReservationParams = new Object[]{userIdx, postReservationReq.getParticipationDate(),
                postReservationReq.getPrice()};
        this.jdbcTemplate.update(insertReservationQuery, insertReservationParams);

        String lastInsertIdQuery = "select last_insert_id()";
        return this.jdbcTemplate.queryForObject(lastInsertIdQuery, int.class);
    }

    //게시글 삭제
    public int updateReservationStatus(int reservationIdx){
        String deleteReservationQuery = "UPDATE Reservation\n" +
                "        SET status = 'INACTIVE'\n" +
                "        WHERE reservationIdx = ? ";
        Object[] deleteUserParams = new Object[]{reservationIdx};

        return this.jdbcTemplate.update(deleteReservationQuery, deleteUserParams);
    }

    //게시글 조회
//    public Reservation getReservation(int userIdx)
}
