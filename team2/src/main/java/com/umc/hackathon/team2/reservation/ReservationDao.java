package com.umc.hackathon.team2.reservation;

import com.umc.hackathon.team2.reservation.model.PostReservationReq;
import com.umc.hackathon.team2.reservation.model.PostReservationRes;
import com.umc.hackathon.team2.reservation.model.Reservation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.Locale;

@Repository
public class ReservationDao {

    private JdbcTemplate jdbcTemplate;

    @Autowired
    public void setDataSource(DataSource dataSource){

        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

/*private int centerIdx;
    private int centerReservationIdx;
    private String reservationDate;
    private String participationDate;
    private int price;
    private String status;*/

    // 예약 생성
    public int createReservation(int userIdx, PostReservationReq postReservationReq) throws java.text.ParseException {
        String insertReservationQuery =
                "INSERT INTO Reservation(userIdx, centerIdx, reservation_date, centerReservationIdx, participation_date, price, updateAt, status)" +
                        "VALUES (?,?, ?, ?, ?, ?, ?, ?);";

        String reservationDateString = postReservationReq.getParticipationDate();

        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd", Locale.US);
        LocalDate date = LocalDate.parse(reservationDateString, formatter);

        Object[] insertReservationParams = new Object[]{userIdx, 1, "22-11-13", postReservationReq.getCenterReservationIdx(), date,
                postReservationReq.getPrice(), null, "ACTIVE"};
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
