class Generator(BaseGenerator):
    def data(self):
        sample=randint(2000, 2550)
        result_1=randint(58, 71)
        agree_1=choice(['"Agree" or "Strongly Agree"','"Disagree" or "Strongly Disagree"'])
        if agree_1=='"Disagree" or "Strongly Disagree"':
            result_1=randint(11, 19)
        result_2=randint(45, 61)
        agree_2=choice(['"Agree" or "Strongly Agree"','"Disagree" or "Strongly Disagree"'])
        if agree_2=='"Disagree" or "Strongly Disagree"':
            result_2=randint(21, 27)
        language=choice(["Spanish", "Chinese", "Russian"])
        state_1=choice(["Wisconsin", "Michigan", "Pennslyvania"])
        state_2=choice(["Oklahoma", "Idaho", "Nebraska"])

        return {
            "sample":sample,
            "result_1":result_1,
            "agree_1":agree_1,
            "result_2":result_2,
            "agree_2":agree_2,
            "language":language,
            "state_1":state_1,
            "state_2":state_2,
}
