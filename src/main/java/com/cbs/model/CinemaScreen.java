package com.cbs.model;

import java.util.Optional;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@Entity
@EqualsAndHashCode(callSuper = true)
public class CinemaScreen extends BaseEntity {
	//số hàng ghế trong room
	private int rows;
	
	@ManyToOne
    @JoinColumn(name = "screen_id")
	private Screen screen;
	
	@ManyToOne
    @JoinColumn(name = "cinema_id")
	private Cinema cinema;
	
}
