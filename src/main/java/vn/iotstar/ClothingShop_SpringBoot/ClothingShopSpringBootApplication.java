package vn.iotstar.ClothingShop_SpringBoot;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.persistence.autoconfigure.EntityScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication(scanBasePackages = "vn.iotstar")
@EnableJpaRepositories(basePackages = "vn.iotstar.repository")
@EntityScan(basePackages = "vn.iotstar.entity")
public class ClothingShopSpringBootApplication {

    public static void main(String[] args) {
        SpringApplication.run(
                ClothingShopSpringBootApplication.class,
                args
        );
    }
}