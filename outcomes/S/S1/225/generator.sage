class Generator(BaseGenerator):
    def data(self):
        out=randint(0,2)
        sample=randint(275, 475)
        result_opt=[[randint(30, 45)], [randint(8, 23)], [randint(45, 60)]]
        outcome_opt=[["still had fatigue"], ["still had respiratory symptoms that were affecting their quality of life"], ["still had sleep issues"]]
        result=result_opt[out][0]
        outcome=outcome_opt[out][0]
        return {
            "sample":sample,
            "result":result,
            "outcome":outcome,
        }
