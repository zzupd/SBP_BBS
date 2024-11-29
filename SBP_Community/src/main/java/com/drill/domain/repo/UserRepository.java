package com.drill.domain.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.drill.domain.User;

@Repository
public interface UserRepository extends JpaRepository<User, Integer> {

}
