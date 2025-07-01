class Generator(BaseGenerator):
    def data(self):
        out=randint(0,4)
        population=randint(1300, 1500)
        sample=randint(950, 1250)
        result_opt=[[randint(15, 23)], [randint(33, 41)], [randint(40, 48)], [randint(23, 31)], [randint(62, 70)]]
        outcome_opt=[["think economic conditions are excellent or good"], ["think economic conditions are fair"], ["think economic conditions are poor"], ["think the economy is getting better"], ["think the economy is getting worse"]]
        result=result_opt[out][0]
        outcome=outcome_opt[out][0]
        return {
            "sample":sample,
            "population":population,
            "result":result ,
            "outcome":outcome,
        }
