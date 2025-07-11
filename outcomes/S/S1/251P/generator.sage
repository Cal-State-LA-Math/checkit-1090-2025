class Generator(BaseGenerator):
    def data(self):
        out=randint(0,3)
        population=randint(1400, 1500)
        sample=randint(2300, 2600 )
        result_opt=[[randint(55, 67)], [randint(50, 62)], [randint(28, 35)], [randint(33, 41)]]
        outcome_opt=[["said they had used exercise to cope with stress in the past month"], ["said they had used mindfulness or meditation apps in the past month"], ["reported that they had decreased their time on social media in the past month"], ["reported using unhealthy coping mechanisms, such as drinking, in the past month"]]
        result=result_opt[out][0]
        outcome=outcome_opt[out][0]
        parameter_opt=[["exercise to cope with stress"], ["mindfulness or meditation app to cope with stress"], ["had decreased their time on social media to cope with stress"], ["use unhealthy coping mechanisms, such as drinking, to cope with stress"]]
        parameter=parameter_opt[out][0]
        return {
            "sample":sample,
            "population":population,
            "result":result ,
            "outcome":outcome,
            "parameter_opt":parameter_opt,
            "parameter":parameter,
        }
