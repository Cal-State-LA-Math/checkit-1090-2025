class Generator(BaseGenerator):
    def data(self):
        graph_var=[[0, 23], [100000, 185], [200000, 203], [300000, 148], [400000, 70], [500000, 53], [600000, 21], [700000, 16], [800000, 21], [900000, 13], [1000000, 2], [1100000, 6], [1200000, 4], [1300000, 4], [1400000, 2], [1500000, 1], [1600000, 1], [1700000, 2], [1800000, 0], [1900000, 2], [2000000, 1]]
        value=[["23", "0 and 100,000 dollars"], ["185", "100,000 and 200,000 dollars"], ["203", "200,000 and 300,000 dollars"],["148", "300,000 and 400,000 dollars"], ["70", "400,000 and 500,000 dollars"], ["53", "500,000 and 600,000 dollars"], ["16", "700,000 and 800,000 dollars"], ["13", "900,000 and 1,000,000 dollars"], ["6", "1,100,000 and 1,200,000 dollars"]]
        OC_2=randint(0,8)
        OC_3=randint(0,11)
        number_2=value[OC_2][0]
        answer_2=value[OC_2][1]
        money_3a=graph_var[OC_3][0]
        money_3b=graph_var[OC_3 + 3][0]
        answer_3a=graph_var[OC_3][1]
        answer_3b=graph_var[OC_3 + 1][1]
        answer_3c=graph_var[OC_3 + 2][1]
        answer_3=round(((answer_3a + answer_3b + answer_3c)/780),4)*100
        

        return {
            "number_2":number_2,
            "answer_2":answer_2,
            "money_3a":money_3a,
            "money_3b":money_3b,
            "answer_3a":answer_3a,
            "answer_3b":answer_3b,
            "answer_3c":answer_3c,
            "answer_3":"{:.2f}".format(answer_3),
            
            }
