class Generator(BaseGenerator):
    def data(self):
        out=randint(0,4)
        population=randint(2401, 2500)
        sample=randint(1800, 2400)
        result_opt=[[randint(30, 45)], [randint(38, 53)], [randint(45, 60)], [randint(65, 80)], [randint(42, 57)]]
        outcome_opt=[["are unlikely to vote in 2024."],["approve of President Biden’s overall job performance."], [" believe the Republican party cares more about the elite than serving the interests of young people."], ["are either “very” or “somewhat” comfortable with a close friend coming out as LGBTQ+."], ["believe education is one of the two most important factors contributing to America’s global strength in the future."]]
        result=result_opt[out][0]
        outcome=outcome_opt[out][0]
        return {
            "sample":sample,
            "population":population,
            "result":result,
            "outcome":outcome,
        }
