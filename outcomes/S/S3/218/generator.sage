class Generator(BaseGenerator):
    def data(self):
        n=randint(2000, 3000)
        age=choice(["women ages 14 to 25","women ages 16 to 27","women ages 18 to 29"])
        blinding=choice(["who did not know who was in the gum chewing group","who did know who was in the gum chewing group"])
        result=choice(["The difference was not statistically significant","The difference was statistically significant"])
        answer_4="Yes, the researchers that tracked the preterm birth and oral disease were blinded"
        if blinding=="who did know who was in the gum chewing group":
            answer_4="No blinding was used"
        return {
            "n":n,
            "age":age,
            "result":result,
            "blinding":blinding,
            "answer_4":answer_4
            
        }
