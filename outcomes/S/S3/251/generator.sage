class Generator(BaseGenerator):
    def data(self):
        n=randint(100, 200)
        blinding=choice(["did not know", "did know"])
        results=choice(["were", "were not"])
        answer_4="Yes, the analysts were blinded so this was single blinded"
        if blinding=="did know":
            answer_4="No, blinding was used"

        return {
            "n":n,
            "results":results,
            "blinding":blinding,
            "answer_4":answer_4,
            
        }
