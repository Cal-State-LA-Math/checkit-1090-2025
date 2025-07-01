class Generator(BaseGenerator):
    def data(self):
        out=randint(0,3)
        sample=randint(1275, 2000)
        result_opt=[[randint(68,83)], [randint(78, 93)], [randint(70, 85)], [randint(48, 61)]]
        outcome_opt=[["support raising the minimum legal age to buy any gun to 21 years old nationwide."],[ "support requiring background checks for all gun buyers."], ["support a “red flag” law allowing police or family members to petition a judge to remove guns from a person that may be at risk for violent behavior."], ["support a nationwide ban on the sale of assault weapons."]]
        result=result_opt[out][0]
        outcome=outcome_opt[out][0]
        return {
            "sample":sample,
            "result":result,
            "outcome":outcome,
        }
