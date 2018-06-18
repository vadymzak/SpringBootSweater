package ua.example.sweater.repository;

import org.springframework.data.repository.CrudRepository;
import ua.example.sweater.domain.Message;

import java.util.List;

public interface MessageRepository extends CrudRepository <Message, Long> {

    List<Message> findByTag(String tag);
}
