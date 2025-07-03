class Generator(BaseGenerator):
    def data(self):
        n=randint(100, 150)
        blinding=choice(["did not know", "did know"])
        results=choice(["did", "did not"])
        answer_4="Yes, both the subjects and the clinicians were blinded so it was double blinded"
        if blinding=="did know":
            answer_4="Yes, the subjects were blinded but they were the only ones so it was single blinded"

        return {
            "n":n,
            "results":results,
            "blinding":blinding,
            "answer_4":answer_4,
            
        }
