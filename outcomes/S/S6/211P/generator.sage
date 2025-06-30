class Generator(BaseGenerator):
    def data(self):
        HP=randint(115, 400)
        answer_2=-3162.1 +168.64*HP
        horse=[[300, 59000], [187, 33700], [355, 52400], [215, 35650], [335, 67400], [130, 14995]]
        OC_4=randint(0,5)
        point_4x=horse[OC_4][0]
        point_4y=horse[OC_4][1]

        return {
            "HP":HP,
            "answer_2":"{:.2f}".format(answer_2),
            "point_4x":point_4x,
            "point_4y":point_4y,
            
        }
