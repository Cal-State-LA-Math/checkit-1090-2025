class Generator(BaseGenerator):
    def data(self):
        n=randint(40, 60)
        blinding=choice(["Neither the patients nor the therapist treating the patients knew who had a device with magnets or who had a device without them", "The therapist knew who had the devices with the magnets and who did not. The patients did not know which device they had"])
        diff=randint(1, 5)
        results="The difference was not significant."
        answer_4="Yes, it was double blinded since the subjects and the therapist did not know who have the magnets and who did not"
        if blinding=="The therapist knew who had the devices with the magnets and who did not. The patients did not know which device they had":
            answer_4="Yes, it was single blinded since the subjects didn't know if they had the magnets or not but the therapist did "
        
        return {
            "n":n,
            "blinding":blinding,
            "diff":diff,
            "results":results,
            "answer_4":answer_4
        }
