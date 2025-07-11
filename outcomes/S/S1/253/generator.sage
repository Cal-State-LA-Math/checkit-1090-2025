class Generator(BaseGenerator):
    def data(self):
        out=randint(0,3)
        population=randint(1300, 1500)
        sample=randint(2000, 2350)
        result_opt=[[randint(67, 75)], [randint(70, 81)], [randint(30, 48)], [randint(25, 65)]]
        outcome_opt=[["used AI tools like ChatGPT to help with at least one academic assignment during the Fall 2024 semester"], ["they believe using AI for writing assignments should be considered academic dishonesty"], ["never having used AI tools in their coursework"], ["they trust AI-generated content more than content from traditional textbooks"]]
        result=result_opt[out][0]
        outcome=outcome_opt[out][0]
        return {
            "sample":sample,
            "population":population,
            "result":result ,
            "outcome":outcome,
        }
