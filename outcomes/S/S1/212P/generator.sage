class Generator(BaseGenerator):
    def data(self):
        population=randint (750, 1100)
        sample=randint(450, 600)
        result=randint(5, 17)

        return {
            "population":population,
            "sample":sample,
            "result":result,
        }
