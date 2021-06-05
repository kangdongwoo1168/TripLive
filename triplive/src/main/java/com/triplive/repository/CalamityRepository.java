package com.triplive.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import com.triplive.entity.GetCountrySafetyList2;

public interface CalamityRepository extends JpaRepository<GetCountrySafetyList2, String> {
    /* 
        insert -> save(엔티티 객체)
        select -> findById(키 타입), getOne(키 타입)
        update -> save(엔티티 타입)
        delete -> deleteById(키 타입), delete(엔티티 객체)
    */
}
