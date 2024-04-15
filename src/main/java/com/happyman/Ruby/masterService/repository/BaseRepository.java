package com.happyman.Ruby.masterService.repository;

import lombok.NonNull;

import java.io.Serializable;
import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.NoRepositoryBean;

@NoRepositoryBean
public interface BaseRepository<T, ID extends Serializable> extends CrudRepository<T, ID> {
	@Override
	@NonNull
	List<T> findAll();

	@Override
	@NonNull
	List<T> findAllById(@NonNull Iterable<ID> ids);
}
