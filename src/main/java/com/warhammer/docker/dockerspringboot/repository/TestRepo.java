package com.warhammer.docker.dockerspringboot.repository;

import com.warhammer.docker.dockerspringboot.models.Unit;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;


public interface TestRepo extends JpaRepository<Unit, Integer> {

    @Query("SELECT u FROM units u")
    List<Unit> getAllUnits();
}
