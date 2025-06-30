class Generator(BaseGenerator):
    def data(self):
        n=randint(40, 80)
        age=choice(["18 to 28 year old adults", "24 to 34 year old adults","30 to 40 year old adults"])
        blinding=choice(["were not aware which drink the participant was getting but the participants could see the color of the drink","were aware which drink the participant was getting and the participants could see the color of the drink"])
        results=choice(["Self-selected running speed and expressed feelings of pleasure were significantly improved for participants using the pink mouth rinse", "Self-selected running speed and expressed feelings of pleasure were not significantly improved for participants using the pink mouth rinse"])
        answer_4="Yes there was single blinding, the researchers evaluating the performance were blinded"
        if blinding=="were aware which drink the participant was getting and the participants could see the color of the drink":
            answer_4="there was no blinding used"

        return {
            "n":n,
            "age":age,
            "blinding":blinding,
            "results":results,
            "answer_4":answer_4
            
        }
