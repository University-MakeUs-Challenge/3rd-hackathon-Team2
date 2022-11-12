package com.umc.hackathon.team2.center;

import com.umc.hackathon.team2.center.model.CenterReq;
import com.umc.hackathon.team2.center.model.CenterRes;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class CenterService {

    private final CenterDao centerDao;

    public CenterRes createCenter(CenterReq centerReq){

        int centerIdx = centerDao.insertCenter(centerReq);
        CenterRes centerRes = centerDao.selectCenterInfo(centerIdx);
        return centerRes;
    }

    public CenterRes getCenterInfo(int centerIdx){
        CenterRes centerRes = centerDao.selectCenterInfo(centerIdx);
        return centerRes;
    }
    public List<CenterRes> getCenterList(int categoryIdx, int regionIdx){
        List<CenterRes> centerResList = centerDao.selectCenterList(categoryIdx, regionIdx);
        return centerResList;
    }


}
