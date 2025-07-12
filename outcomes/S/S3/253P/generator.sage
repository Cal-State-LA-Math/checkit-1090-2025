class Generator(BaseGenerator):
    def data(self):
        n=randint(100, 200)
        blinding=choice(["did not know", "did know"])
        results=choice(["were", "were not", "were", "were"])
        answer_4="Yes, both the subjects and data analysts were blinded, so this was double blinded"
        if blinding=="did know":
            answer_4="Yes since there was a placebo, the subjects were blinded. The subjects were the only group blinded so this was single blinding"
        age=choice(["25 and 35", "40 and 50", "55 and 65"])

        return {
            "n":n,
            "results":results,
            "blinding":blinding,
            "answer_4":answer_4,
            "age":age,
            
        }
