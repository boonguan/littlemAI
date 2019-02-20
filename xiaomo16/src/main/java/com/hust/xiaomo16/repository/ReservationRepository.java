package com.hust.xiaomo16.repository;


import com.hust.xiaomo16.entity.ReservationDetail;
import com.hust.xiaomo16.entity.UserInfo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

public interface ReservationRepository extends JpaRepository<ReservationDetail,
        String> {
    @Query(value = "select * from reservation_detail where reservation_detail.reserva_id=?1", nativeQuery = true)
    ReservationDetail findReservationDetailByReservaId(String reservaId);

    @Transactional
    @Modifying
    @Query(value = "delete  from reservation_detail where reservation_detail.user_id=?1", nativeQuery = true)
    void deleteReservationDetailByUserId(String userId);
}
