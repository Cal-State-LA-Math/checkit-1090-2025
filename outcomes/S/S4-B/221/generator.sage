class Generator(BaseGenerator):
    def data(self):
        graph_var=[[0, 3035], [25, 1052], [50, 514], [75, 250], [100, 115], [125, 82], [150, 73], [175, 43], [200, 32]]
        AA=[["1052", "25 and 50"], ["514", "50 and 75"], ["250", "75 and 100"], ["115", "100 and 125"], ["82", "125 and 150"], ["73", "150 and 175"], ["43", "175 and 200"]]
        OC_2=randint(0,6)
        OC_3=randint(0,5)
        number_2=AA[OC_2][0]
        answer_2=AA[OC_2][1]
        assault_3a=graph_var[OC_3][0]
        assault_3b=graph_var[OC_3 + 3][0]
        answer_3a=graph_var[OC_3][1]
        answer_3b=graph_var[OC_3 + 1][1]
        answer_3c=graph_var[OC_3 + 2][1]
        answer_3=round(((answer_3a + answer_3b + answer_3c)/5222),4)*100
        

        return {
            "number_2":number_2,
            "answer_2":answer_2,
            "assault_3a":assault_3a,
            "assault_3b":assault_3b,
            "answer_3a":answer_3a,
            "answer_3b":answer_3b,
            "answer_3c":answer_3c,
            "answer_3":"{:.2f}".format(answer_3),
        }
