class Generator(BaseGenerator):
    def data(self):
        out=randint(0,6)
        population=randint(2000,3000)
        sample=randint(1000, 1775)
        result_opt=[[randint(40,55)], [randint(5, 20)], [randint(35, 50)], [randint(30, 45)], [randint(10, 25)], [randint(10, 25)], [randint(8, 23)]]
        outcome_opt=[["of registered Republicans say the most urgent issue facing the country today is inflation."],["of registered Democrats say the most urgent issue facing the country today is inflation."], ["of registered Independents say the most urgent issue facing the country today is inflation."], ["of registered Democrats say the most urgent issue facing the country today is gun violence."], ["of registered Independents say the most urgent issue facing the country today is gun violence."], ["of registered Republicans say the most urgent issue facing the country today is immigration."], [" of registered Democrats say the most urgent issue facing the country today is protecting our election laws."]]
        result=result_opt[out][0]
        outcome=outcome_opt[out][0]
        return {
            "population":population,
            "sample":sample,
            "result":result,
            "outcome":outcome,
        }
