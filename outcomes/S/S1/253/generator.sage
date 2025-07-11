class Generator(BaseGenerator):
    def data(self):
        out=randint(0,3)
        population=randint(1300, 1500)
        sample=randint(2000, 2350)
        result_opt=[[randint(67, 75)], [randint(70, 81)], [randint(30, 48)], [randint(25, 65)]]
        outcome_opt=[["reported using AI tools like ChatGPT to help with at least one academic assignment during the Fall 2024 semester"], ["reported never having used AI tools in their coursework"],["reported they believe using AI for writing assignments should be considered academic dishonesty"], ["said they trust AI-generated content more than content from traditional textbooks"]]
        result=result_opt[out][0]
        outcome=outcome_opt[out][0]
        question_opt=[["Did you use an AI tool such as ChatGPT to help with at least one academic assignment during the Fall 2024 semester?"], ["Did you use an AI tool such as ChatGPT to help with at least one academic assignment during the Fall 2024 semester?"], ["Do you believe using AI for writing assignments should be considered academic dishonesty?"], ["Do you trust AI-generated contect more that the content from traditional textbooks?"]]
        question=question_opt[out][0]
        
        return {
            "sample":sample,
            "population":population,
            "result":result ,
            "outcome":outcome,
            "result":result,
            "question":question,
        }
