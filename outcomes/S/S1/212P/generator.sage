class Generator(BaseGenerator):
    def data(self):
        population=randint (1500, 2100)
        sample=randint(900, 1100)
        result=randint(58, 69)

        return {
            "population":population,
            "sample":sample,
            "result":result,
        }
