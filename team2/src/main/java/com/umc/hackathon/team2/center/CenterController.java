package com.umc.hackathon.team2.center;

import com.umc.hackathon.team2.center.model.CenterReq;
import lombok.RequiredArgsConstructor;
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

    }
}
