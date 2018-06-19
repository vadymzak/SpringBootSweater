package ua.example.sweater.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.example.sweater.domain.User;

public interface UserRepository extends JpaRepository <User, Integer> {

    User findByUsername(String username);
}
