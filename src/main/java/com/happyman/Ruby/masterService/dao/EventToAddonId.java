package com.happyman.Ruby.masterService.dao;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;
import lombok.Getter;
import lombok.Setter;

import java.io.Serial;
import java.io.Serializable;
import java.util.Objects;

import org.hibernate.Hibernate;

@Getter
@Setter
@Embeddable
public class EventToAddonId implements Serializable {
	@Serial
	private static final long serialVersionUID = 1656046107685033485L;
	@Column(name = "eventId", nullable = false) private Integer eventId;

	@Column(name = "addonId", nullable = false) private Integer addonId;

	@Override
	public boolean equals(Object o) {
		if (this == o) return true;
		if (o == null || Hibernate.getClass(this) != Hibernate.getClass(o)) return false;
		EventToAddonId entity = (EventToAddonId) o;
		return Objects.equals(this.eventId, entity.eventId) &&
			Objects.equals(this.addonId, entity.addonId);
	}

	@Override
	public int hashCode() {
		return Objects.hash(eventId, addonId);
	}

}