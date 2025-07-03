class Generator(BaseGenerator):
    def data(self):
        n=randint(100, 150)
        blinding=choice(["did not know", "did know"])
        results=choice(["The group receiving the supplement showed a significant improvement in behavior on the direct observation reports as compared to the placebo group", "The group receiving the supplement did not show a significant improvement in behavior on the parental interview reports"])
        answer_4="Yes, both the subjects and the clinicians were blinded so it was double blinded"
        if blinding=="did know":
            answer_4="Yes, the subjects were blinded but the clinicians were not so it was single blinded"

        return {
            "n":n,
            "results":results,
            "blinding":blinding,
            "answer_4":answer_4,
            
        }
