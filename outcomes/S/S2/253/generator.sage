class Generator(BaseGenerator):
    def data(self):
        sample=randint(2000, 2550)
        result_1=randint(55, 64)
        agree_1=choice(['"Agree" or "Strongly Agree"','"Disagree" or "Strongly Disagree"'])
        if agree_1=='"Disagree" or "Strongly Disagree"':
            result_1=randint(15, 20)
        result_2=randint(75, 85)
        agree_2=choice(['"Agree" or "Strongly Agree"','"Disagree" or "Strongly Disagree"'])
        if agree_2=='"Disagree" or "Strongly Disagree"':
            result_2=randint(5, 14)
        language=choice(["Spanish", "French", "Russian"])
        state_3=choice(["Phoenix", "Tucson", "Las Vegas"])
        state_2=choice(["San Antonio", "Austin", "Waco"])
        state_1=choice(["Bakersfield", "Fresno", "Redding"])

        return {
            "sample":sample,
            "result_1":result_1,
            "agree_1":agree_1,
            "result_2":result_2,
            "agree_2":agree_2,
            "language":language,
            "state_1":state_1,
            "state_2":state_2,
            "state_3":state_3,
}
