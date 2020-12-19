package com.artu.controller;

import com.alibaba.fastjson.JSONArray;
import com.artu.entity.Evaluation;
import com.artu.service.EvaluationService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Controller
public class EvaluationController {
    @Resource
    private EvaluationService evaluationService;



    @RequestMapping(value = "/addShoppingEvaluation",method = RequestMethod.GET)
    @ResponseBody
    public Map<String,Object> addShoppingEvaluation(HttpServletRequest request, int userId, int productId, String content){
        System.out.println("I added "+userId+" "+productId + content);
        String result = null;
        if(request.getAttribute("unsafe_request") != "true"){
            Evaluation evaluation = new Evaluation();
            evaluation.setUserId(userId);
            evaluation.setProductId(productId);
            Date date = new Date();
            SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH-mm-ss");
            evaluation.setTime(sf.format(date));
            evaluation.setContent(content);
            evaluationService.addEvaluation(evaluation);
            result = "success";
        }
        else{
            result = "unsafeComment";
        }
            System.out.println(result);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("result",result);
        return resultMap;
    }

    @RequestMapping(value = "/getShoppingEvaluations",method = RequestMethod.POST)
    @ResponseBody
    public Map<String,Object> getShoppingEvaluations(int productId){
        List<Evaluation> evaluationList = evaluationService.getProductEvaluation(productId);
        String evaluations = JSONArray.toJSONString(evaluationList);
        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("result",evaluations);
        return resultMap;
    }
}
