class Generator(BaseGenerator):
    def data(self):
        sample=randint(1150, 1975)
        result=randint(60, 69)
        outcome=choice(["very confident or somewhat confident that the elected officials will protect their right to vote", "somewhat unconfident or very unconfident that the elected officials will protect their right to vote"])
        if outcome=="somewhat unconfident or very unconfident that the elected officials will protect their right to vote":
            result=randint(30,39)

        return {
            "sample":sample,
            "result":result,
            "outcome":outcome,
            
        }
