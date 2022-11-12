package com.umc.hackathon.team2.center;

import com.umc.hackathon.team2.center.model.CenterReq;
import com.umc.hackathon.team2.center.model.CenterRes;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
public class CenterController {

    private final CenterService centerService;

    @PostMapping("/centers")
    public ResponseEntity<?> createCenter(@RequestBody CenterReq centerReq){
        CenterRes centerRes = centerService.createCenter(centerReq);
        return ResponseEntity.status(HttpStatus.CREATED).body(centerRes);
    }
}
