package com.aiemail.writer.app;

import lombok.Data;

@Data
public class EmailRequest {
    private String emailContent;
    private String tone;
}
