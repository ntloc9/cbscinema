package com.cbs.repository;

import com.cbs.model.Screen;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
@Repository
public interface ScreenRepository extends JpaRepository<Screen, Long> {
}
