class Generator(BaseGenerator):
    def data(self):
        n=randint(124000, 125000)
        age=choice(["adults ages 25 to 35","adults ages 35 to 45","adults ages 45 to 55","adults ages 55 to 65"])
        result=choice(["significantly reduced","did not significantly reduce"])
        return {
            "n":n,
            "age":age,
            "result":result,
            
        }
