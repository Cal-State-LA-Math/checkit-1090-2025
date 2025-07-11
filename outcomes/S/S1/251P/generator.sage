class Generator(BaseGenerator):
    def data(self):
        out=randint(0,3)
        population=randint(1400, 1500)
        sample=randint(2300, 2600 )
        result_opt=[[randint(55, 67)], [randint(50, 62)], [randint(28, 35)], [randint(33, 41)]]
        outcome_opt=[["said they had used exercise to cope with stress in the past month"], ["said they had used mindfulness or meditation apps in the past month"], ["reported that they had decreased their time on social media"], ["reported using unhealthy coping mechanisms, such as drinking"]]
        result=result_opt[out][0]
        outcome=outcome_opt[out][0]
        question_opt=[["In the past month, have you used exercise to cope with your stress?"], ["In the past month, have you used a mindfulness or meditation app to help cope with your stress?"], ["In the past month, have you decreased your time spent on social media to cope with stress?"], ["In the past month, have you using unhealthy coping mechanisms, such as drinking, to cope with your stress?"]]
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
