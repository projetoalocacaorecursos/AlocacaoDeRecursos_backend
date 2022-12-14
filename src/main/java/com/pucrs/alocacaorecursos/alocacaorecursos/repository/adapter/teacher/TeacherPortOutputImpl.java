package com.pucrs.alocacaorecursos.alocacaorecursos.repository.adapter.teacher;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pucrs.alocacaorecursos.alocacaorecursos.core.output.TeacherPortOutput;
import com.pucrs.alocacaorecursos.alocacaorecursos.domain.Teacher;
import com.pucrs.alocacaorecursos.alocacaorecursos.repository.adapter.mapper.TeacherMapper;
import com.pucrs.alocacaorecursos.alocacaorecursos.repository.entities.TeacherEntity;

@Repository
public class TeacherPortOutputImpl implements TeacherPortOutput{

    @Autowired
    private TeacherBase teacherRepository;

    @Override
    public Teacher getTeacher(Integer id) {
        Optional<TeacherEntity> teacher = teacherRepository.findById(id);

        if(teacher.isPresent()) {
            return TeacherMapper.mapFrom(teacher.get());
        }

        return null;
    }



    
    
}
