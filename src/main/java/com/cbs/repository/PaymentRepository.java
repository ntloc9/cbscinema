package com.cbs.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cbs.model.Payment;
import com.cbs.model.Province;
@Repository
public interface PaymentRepository extends JpaRepository<Payment, Long> {

}
