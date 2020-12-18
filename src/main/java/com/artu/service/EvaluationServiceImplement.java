package com.artu.service;

import com.artu.dao.EvaluationDao;
import com.artu.entity.Evaluation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class EvaluationServiceImplement implements EvaluationService {
    @Autowired
    private EvaluationDao evaluationDao;

    @Override
    public Evaluation getEvaluation(int userId, int productId, String time) {
        return evaluationDao.getEvaluation(userId,productId,time);
    }

    @Override
    public void addEvaluation(Evaluation evaluation) {
        evaluationDao.addEvaluation(evaluation);
    }

    @Override
    public boolean deleteEvaluation(int userId, int productId, String time) {
        return evaluationDao.deleteEvaluation(userId,productId,time);
    }

    @Override
    public boolean updateEvaluation(Evaluation evaluation) {
        return evaluationDao.updateEvaluation(evaluation);
    }

    @Override
    public List<Evaluation> getProductEvaluation(int productId) {
        return evaluationDao.getProductEvaluation(productId);
    }
}
