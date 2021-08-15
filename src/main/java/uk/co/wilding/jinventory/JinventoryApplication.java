package uk.co.wilding.jinventory;

import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@Slf4j
public class JinventoryApplication {

    public static void main(String[] args) {
        log.info("test deploy to heroku");
        SpringApplication.run(JinventoryApplication.class, args);
    }
}
