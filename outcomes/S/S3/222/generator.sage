class Generator(BaseGenerator):
    def data(self):
        n=randint(500, 600)
        blinding=choice(["did know", "did not know"])
        results=choice(["The group that received the full dose had a significant reduction in the risk of losing kidney function and kidney failure as compared to the placebo group", "The group that received the half dose had a significant reduction in the risk of losing kidney function and kidney failure as compared to the placebo group", "The group that received the full dose did not have a significant reduction in the risk of losing kidney function and kidney failure as compared to the group that got the half dose or the placebo group"])
        answer_4="Yes, the subjects were blinded so it was single blinded"
        if blinding=="did not know":
            answer_4="Yes the subjects and the clinicians that tracked the kidney function of the patients, so it was double blinded"

        return {
            "n":n,
            "blinding":blinding,
            "results":results,
            "answer_4":answer_4,
            
        }
