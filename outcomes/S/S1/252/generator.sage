class Generator(BaseGenerator):
    def data(self):
        out=randint(0,3)
        population=randint(1400, 1500)
        sample=randint(2300, 2600 )
        result_opt=[[randint(55, 67)], [randint(50, 62)], [randint(28, 35)], [randint(33, 41)]]
        outcome_opt=[["support a federal law banning single-use plastics"], ["believe the U.S. should rejoin the Paris Climate Agreement"], ["reported participating in a climate-related protest or event in the past year"], ["support tax incentives to households using solar panels"]]
        result=result_opt[out][0]
        outcome=outcome_opt[out][0]
        question_opt=[["Would you support a federal law banning single-use plastics?"], ["Do you believe the U.S. should rejoin the Paris Climate Agreement?"], ["Have you participated in a climate-related protest or event in the past year?"], ["Do you support giving tax incentives to households to using solar panels?"]]
        question=question_opt[out][0]
        parameter_opt=[["use exercise to cope with stress"], ["use mindfulness or meditation app to cope with stree"], ["have reduce their time on social media to cope with stress"], ["use unhealthy coping mechanisms, such as drinking"]]
        parameter=parameter_opt[out][0]
        
        return {
            "sample":sample,
            "population":population,
            "result":result ,
            "outcome":outcome,
            "question":question,
            "parameter":parameter,
        }