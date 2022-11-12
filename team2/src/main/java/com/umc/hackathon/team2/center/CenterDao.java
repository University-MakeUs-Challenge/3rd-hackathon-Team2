package com.umc.hackathon.team2.center;

import com.umc.hackathon.team2.center.model.CenterReq;
import com.umc.hackathon.team2.center.model.CenterRes;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.util.List;

@Repository
public class CenterDao {

    private JdbcTemplate jdbcTemplate;

    @Autowired
    public void setDataSource(DataSource dataSource){
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public int insertCenter(CenterReq centerReq){
        //categoryIdx, regionIdx 추가 필요
        String insertCenterQuery = "INSERT INTO Center (name, phone_num, latitude, longitude, open_time, close_time, updateAt, status) " +
                "VALUES (?, ?, ?, ?, ?, ?, ?, ?);";
        Object[] insertCenterParams = new Object[]{centerReq.getCenterName(), centerReq.getPhoneNum(), centerReq.getLatitude(), centerReq.getLongitude(), centerReq.getOpenTime(), centerReq.getCloseTime(), null, "ACTIVE"};
        this.jdbcTemplate.update(insertCenterQuery, insertCenterParams);

        String lastInsertIdQuery = "select last_insert_id()";
        return this.jdbcTemplate.queryForObject(lastInsertIdQuery, int.class);
    }

    public CenterRes selectCenterInfo(int centerIdx){
        String selectCenterInfoQuery = "SELECT c.centerIdx, " +
                "                              c.name, " +
                "                              c.phone_num, " +
                "                              c.latitude," +
                "                              c.longitude," +
                "                              c.open_time, " +
                "                              c.close_time, " +
                "                       FROM Center as c" +
                "                       WHERE c.centerIdx = ?;";
        int selectCenterInfoParam  = centerIdx;
        return this.jdbcTemplate.queryForObject(selectCenterInfoQuery,
                (rs, rowNum) -> new CenterRes(
                        rs.getInt("centerIdx"),
                        rs.getString("name"),
                        rs.getString("phone_num"),
                        rs.getDouble("latitude"),
                        rs.getDouble("longitude"),
                        rs.getInt("openTime"),
                        rs.getInt("closeTime")
                ), selectCenterInfoParam);
    }

    public List<CenterRes> selectCenterList(int categoryIdx, int regionIdx){
        String selectCenterListQuery = "SELECT c.centerIdx, " +
                "                              c.name, " +
                "                              c.phone_num, " +
                "                              c.latitude," +
                "                              c.longitude," +
                "                              c.open_time, " +
                "                              c.close_time, " +
                "                       FROM Center as c" +
                "                       join Category as ctg" +
                "                            on c.categoryIdx = ctg.categoryIdx"+
                "                       WHERE c.categoryIdx = category?;";
    }



}
