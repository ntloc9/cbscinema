package com.cbs.model;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@Entity
@NoArgsConstructor
@EqualsAndHashCode(callSuper = true, exclude = { "prices", "movies" })
public class FormatType extends BaseEntity {
	private static final long serialVersionUID = 1L;
	@Column(unique = true)
	@NotNull
	@Size(min = 2, max = 50)
	private String name;

	@OneToMany(mappedBy = "formatType")
	private Set<Price> prices;

	@OneToMany(mappedBy = "formatType")
	private Set<Movie> movies;

}
