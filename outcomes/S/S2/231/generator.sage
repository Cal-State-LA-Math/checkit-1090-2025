class Generator(BaseGenerator):
    def data(self):
        sample=randint(2000, 2550)
        result_1=randint(45, 58)
        agree_1=choice(['"Agree" or "Strongly Agree"','"Disagree" or "Strongly Disagree"'])
        if agree_1=='"Disagree" or "Strongly Disagree"':
            result_1=randint(21, 32)
        result_2=randint(45,58)
        agree_2=choice(['"Agree" or "Strongly Agree"','"Disagree" or "Strongly Disagree"'])
        if agree_2=='"Disagree" or "Strongly Disagree"':
            result_2=randint(21, 27)
        language=choice(["Italian", "Chinese", "Russian"])

        return {
            "sample":sample,
            "result_1":result_1,
            "agree_1":agree_1,
            "result_2":result_2,
            "agree_2":agree_2,
            "language":language,
}
