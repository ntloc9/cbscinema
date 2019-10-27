package com.cbs.repository;

import com.cbs.dto.TicketReportDTO;
import com.cbs.model.Ticket;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Collection;
import java.util.List;


@Repository
public interface TicketRepository extends JpaRepository<Ticket, Long> {

	List<Ticket> findTicketByMovieSession_Id(long id);

	Ticket findTicketBySeat_Id(long id);

	List<Ticket> findTicketBySeat_IdAndMovieSession_Id(long sid, long msid);
	
	@Query("SELECT o.id as orderId,u.id as memberId,  o.orderTime as orderTime, t.amount as amount "
			+ "FROM Ticket t "
			+ " LEFT OUTER JOIN SOrder o on t.order = o.id "
			+ "LEFT OUTER JOIN User u on t.member = u.id"
			+ " LEFT OUTER JOIN MovieSession ms on t.movieSession = ms.id "
			+ " LEFT OUTER JOIN CinemaScreen cs on ms.cinemaScreen = cs.id "
			+ "LEFT OUTER JOIN Cinema c on cs.cinema = c.id "
			+ "WHERE o.status = 'Completed' AND o.orderTime >= ?2 "
			+ "AND o.orderTime <= ?3 AND c.id = ?1")
	List<TicketReportDTO> findTicketByCinema(Long cinemaId, LocalDateTime fromDate, LocalDateTime toDate);
	
	
	  @Query( "SELECT o.id as orderId, u.id as memberId, o.orderTime, t.amount " +
		  "FROM Ticket t " + 
		  " LEFT OUTER JOIN SOrder o on t.order = o.id " +
		  "LEFT OUTER JOIN User u on o.member = u.id" +
		  " LEFT OUTER JOIN MovieSession ms on t.movieSession = ms.id " +
		  " LEFT OUTER JOIN CinemaScreen cs on ms.cinemaScreen = cs.id " +
		  " LEFT OUTER JOIN Cinema c on c.id = cs.cinema " +
		  "LEFT OUTER JOIN Province p on c.province = p.id " +
		  "WHERE o.status = 'Completed' AND o.orderTime >= ?2 " +
		  "AND o.orderTime <= ?3 AND p.id = ?1  ")
	  List<TicketReportDTO>	  findTicketByProvince(Long provinceId, LocalDateTime fromDate, LocalDateTime toDate);
	  
	  @Query( "SELECT o.id as orderId, t.member as memberId, o.orderTime, t.amount " +
			  "FROM Ticket t " + 
			  " LEFT OUTER JOIN SOrder o on t.order = o.id " +
			  " LEFT OUTER JOIN MovieSession ms on t.movieSession = ms.id " +
			  "WHERE o.status = 'Completed' AND o.orderTime >= ?2 " +
			  "AND o.orderTime <= ?3 AND ms.movie = ?1  ")
		  List<TicketReportDTO>	  findTicketByMovie(Long movieId, LocalDateTime fromDate, LocalDateTime toDate);
	  
	  @Query( "SELECT o.id as orderId, t.member as memberId, o.orderTime, t.amount " +
			  "FROM Ticket t " + 
			  " LEFT OUTER JOIN SOrder o on t.order = o.id " +
			  " LEFT OUTER JOIN MovieSession ms on t.movieSession = ms.id " +
			  " LEFT OUTER JOIN CinemaScreen cs on ms.cinemaScreen = cs.id " +
			  " LEFT OUTER JOIN Cinema c on c.id = cs.cinema " +
			  "WHERE o.status = 'Completed' AND o.orderTime >= ?3 " +
			  "AND o.orderTime <= ?4 "
			  + "AND c.province = ?1  AND ms.movie = ?2")
		  List<TicketReportDTO>	  findTicketByMovieProvince(Long provinceId, Long movieId, LocalDateTime fromDate, LocalDateTime toDate);
	  
	  @Query( "SELECT o.id as orderId, t.member as memberId, o.orderTime, t.amount " +
			  "FROM Ticket t " + 
			  " LEFT OUTER JOIN SOrder o on t.order = o.id " +
			  " LEFT OUTER JOIN MovieSession ms on t.movieSession = ms.id " +
			  " LEFT OUTER JOIN CinemaScreen cs on ms.cinemaScreen = cs.id " +
			  "WHERE o.status = 'Completed' AND o.orderTime >= ?3 " +
			  "AND o.orderTime <= ?4 "
			  + "AND cs.cinema = ?1  AND ms.movie = ?2 ")
		  List<TicketReportDTO>	  findTicketByMovieCinema(Long cinemaId, Long movieId, LocalDateTime fromDate, LocalDateTime toDate);

	  @Query( "SELECT o.id as orderId, t.member as memberId, o.orderTime, t.amount " +
			  "FROM Ticket t " + 
			  " LEFT OUTER JOIN SOrder o on t.order = o.id " +
			  "WHERE o.status = 'Completed' AND o.orderTime >= ?2 " +
			  "AND o.orderTime <= ?3 "
			  + "AND o.member = ?1 ")
	  List<TicketReportDTO>	 findTicketByCustomer(Long customerId, LocalDateTime fromDate,
			LocalDateTime toDate);
	  
	  @Query( "SELECT s.id as orderId, s.orderTime as orderTime, t.amount as amount, u.id as memberId " +
			  "FROM Ticket t " + 
			  " LEFT OUTER JOIN SOrder s on t.order = s.id " +
			  "LEFT OUTER JOIN User u on s.member = u.id " +
			  "WHERE s.status = 'Completed' AND s.orderTime >= ?1 " +
			  "AND s.orderTime <= ?2 ")
	  List<TicketReportDTO>	 findTicket(LocalDateTime fromDate, LocalDateTime toDate);
	 
}
