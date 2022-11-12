package com.umc.hackathon.team2.center;

import com.umc.hackathon.team2.center.model.CenterReq;
import com.umc.hackathon.team2.center.model.CenterRes;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequiredArgsConstructor
public class CenterController {

    private final CenterService centerService;

    @PostMapping("/centers")
    public ResponseEntity<?> createCenter(@RequestBody CenterReq centerReq){
        CenterRes centerRes = centerService.createCenter(centerReq);
        return ResponseEntity.status(HttpStatus.CREATED).body(centerRes);
    }

    @GetMapping("/centers")
    public ResponseEntity<?> loadCenterList(@RequestParam int categoryIdx, int regionIdx){
        List<CenterRes> centerResList = centerService.getCenterList(categoryIdx, regionIdx);
        return ResponseEntity.status(HttpStatus.OK).body(centerResList);
    }

    @GetMapping("/centers/{centerIdx}")
    public ResponseEntity<?> findCenterInfo(@PathVariable int centerIdx){
        CenterRes centerRes = centerService.getCenterInfo(centerIdx);
        return ResponseEntity.status(HttpStatus.OK).body(centerRes);
    }

}
