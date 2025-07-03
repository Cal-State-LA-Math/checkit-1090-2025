class Generator(BaseGenerator):
    def data(self):
        n=randint(225, 325)
        age=choice(["adults ages 18 to 25","adults ages 26 to 35","adults ages 36 to 45","adults ages 46 to 55"])
        blinding=choice(["did know who was in which group","did not know who was in which group"])
        results=choice(["The difference was statistically significant","The difference was not statistically significant"])
        answer_4="No blinding was used"
        if blinding=="did not know who was in which group":
            answer_4="Yes, the observers who measured the anxiety symptoms were blinded"
        return {
            "n":n,
            "age":age,
            "results":results,
            "blinding":blinding,
            "answer_4":answer_4
            
        }
