package uk.co.wilding.jinventory;

import lombok.Value;
import org.springframework.data.annotation.Id;

@Value
public class Gin {
    @Id
    Integer id;
    String name;
}
