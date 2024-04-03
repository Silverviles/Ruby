package com.happyman.Ruby.masterService.dao;

import jakarta.persistence.EmbeddedId;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.MapsId;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "event_to_addon")
public class EventToAddon {
	@EmbeddedId private EventToAddonId id;

	@MapsId("eventId") @ManyToOne(fetch = FetchType.LAZY, optional = false) @JoinColumn(name = "eventId", nullable = false) private Event event;

	@MapsId("addonId") @ManyToOne(fetch = FetchType.LAZY, optional = false) @JoinColumn(name = "addonId", nullable = false) private Addon addon;

}