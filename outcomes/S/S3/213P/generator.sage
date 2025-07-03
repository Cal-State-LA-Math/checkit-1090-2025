class Generator(BaseGenerator):
    def data(self):
        n=randint(65, 85)
        age=choice(["high school students","undergraduate students","middle school students"])
        blinding=choice(["who did not know which group the students were in","who did know which group the students were in"])
        diff=randint(8,16)
        results="The difference was not significant."
        if diff > 12.5:
            results="The difference was significant"
        answer_4="Yes, the TA that graded the tests"
        if blinding=="who did know which group the students were in":
            answer_4="No blinding was used"
        
        return {
            "n":n,
            "age":age,
            "blinding":blinding,
            "diff":diff,
            "results":results,
            "answer_4":answer_4
            }
