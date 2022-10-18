package com.pucrs.alocacaorecursos.alocacaorecursos.core.usecase;

public interface RequestClassroomExchange {
    /*
     * Acao realizada apenas pelo professor
     * solicita troca de sala, informa:
     * - id da sala antiga
     * - novo local (Laboratorio, Living)
     * - justificativa
     */
    void requestClassroom(int professorId, int currentClassroomId, int newLocation, String justification);
    
    /*
     * Acao realizada apenas pelo admin
     * altera status da solicitacao
     */
    void approveRequest(int requestId, boolean isApproved);

}