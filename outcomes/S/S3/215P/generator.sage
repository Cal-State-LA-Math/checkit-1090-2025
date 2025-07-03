class Generator(BaseGenerator):
    def data(self):
        n=randint(1000, 2000)
        age=choice(["adults ages 18 to 39","adults ages 40 to 59","adults 60 and older"])
        n_e=round(((n/2)+15),0)
        n_p=n-n_e
        diff=randint(13,18)
        results="This result was not statistically significant"
        if diff > 16.5:
            results="This result was statistically significant"
        

        return {
            "n":n,
            "age":age,
            "n_e":n_e,
            "n_p":n_p,
            "diff":diff,
            "results":results,
            "answer_4":diff-11
        }
