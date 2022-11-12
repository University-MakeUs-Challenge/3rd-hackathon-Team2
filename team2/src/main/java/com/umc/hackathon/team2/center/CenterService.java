package com.umc.hackathon.team2.center;

import com.umc.hackathon.team2.center.model.CenterReq;
import com.umc.hackathon.team2.center.model.CenterRes;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class CenterService {

    private final CenterDao centerDao;

    public CenterRes createCenter(CenterReq centerReq){

        int centerIdx = centerDao.insertCenter(centerReq);

    }


}
