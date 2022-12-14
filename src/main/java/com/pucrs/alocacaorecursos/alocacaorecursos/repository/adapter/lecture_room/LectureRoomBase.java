package com.pucrs.alocacaorecursos.alocacaorecursos.repository.adapter.lecture_room;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.pucrs.alocacaorecursos.alocacaorecursos.repository.entities.LectureRoomEntity;

public interface LectureRoomBase extends CrudRepository<LectureRoomEntity, Integer> {
    
    List<LectureRoomEntity> findByGroupId(final Integer id);
}
