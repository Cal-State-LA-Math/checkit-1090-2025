class Generator(BaseGenerator):
    def data(self):
        sample=randint(31000, 36750)
        result_1=randint(75, 85)
        agree_1=choice(['"Agree" or "Strongly Agree"','"Disagree" or "Strongly Disagree"'])
        if agree_1=='"Disagree" or "Strongly Disagree"':
            result_1=randint(15, 25)
        result_2=randint(75,85)
        agree_2=choice(['"Agree" or "Strongly Agree"','"Disagree" or "Strongly Disagree"'])
        if agree_2=='"Disagree" or "Strongly Disagree"':
            result_2=randint(15, 25)

        return {
            "sample":sample,
            "result_1":result_1,
            "agree_1":agree_1,
            "result_2":result_2,
            "agree_2":agree_2,
        }
