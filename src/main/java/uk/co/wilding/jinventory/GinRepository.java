package uk.co.wilding.jinventory;

import org.springframework.data.r2dbc.repository.Query;
import org.springframework.data.repository.reactive.ReactiveCrudRepository;
import reactor.core.publisher.Mono;

public interface GinRepository extends ReactiveCrudRepository<Gin, Integer> {

    @Query("SELECT * FROM gin WHERE id = :id")
    Mono<Gin> findById(Integer id);
}
