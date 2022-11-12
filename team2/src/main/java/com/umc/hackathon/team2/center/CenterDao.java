package com.umc.hackathon.team2.center;

import com.umc.hackathon.team2.center.model.CenterReq;
import com.umc.hackathon.team2.center.model.CenterRes;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;

@Repository
public class CenterDao {

    private JdbcTemplate jdbcTemplate;

    @Autowired
    public void setDataSource(DataSource dataSource){
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public int insertCenter(CenterReq centerReq){
        String insertCenterQuery = "insert into Center (categoryIdx, name, phone_num, regionIdx, latitude, longitude, open_time, close_time, createdAt, status) " +
                "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        Object[] insertCenterParams = new Object[]{centerReq.getCenterName(), centerReq.getPhoneNum(), centerReq.getLatitude(), centerReq.getLatitude(), centerReq.getOpenTime(), centerReq.getCloseTime(), "ACTIVE"};
        this.jdbcTemplate.update(insertCenterQuery, insertCenterParams);

        String lastInsertIdQuery = "select last_insert_id()";
        return this.jdbcTemplate.queryForObject(lastInsertIdQuery, int.class);
    }

    public CenterRes selectCenterInfo(int centerIdx){
        String selectCenterInfoQuery = "SELECT c.centerIdx, " +
                "                              c.name, " +
                "                              c.phone_num, " +
                "                              c.regionIdx, " +
                "                              c.latitude," +
                "                              c.longitude," +
                "                              c.open_time, " +
                "                              c.close_time, " +
                "                              c.createdAt, " +
                "                              c.status" +
                "                       FROM Center as c" +
                "                       WHERE c.centerIdx = ?"
    }


}
