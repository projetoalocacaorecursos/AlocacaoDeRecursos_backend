package com.pucrs.alocacaorecursos.alocacaorecursos.core.input;

import java.util.List;

import com.pucrs.alocacaorecursos.alocacaorecursos.domain.dto.scheduleweek.ScheduleWeekResponse;

public interface ScheduleWeekView {
    
    List<ScheduleWeekResponse> getStudentListSchedule(final Integer studentId);
    List<ScheduleWeekResponse> getTeacherListSchedule(final Integer TeacherId);
    
}
