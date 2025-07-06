class Generator(BaseGenerator):
    def data(self):
        graph_var=[[0, 3773], [50, 785], [100, 329], [150, 146], [200, 76], [250, 38], [300, 30], [350, 17], [400, 14]]
        AA=[["785", "50 and 100"], ["329", "100 and 150"], ["146", "150 and 200"], ["76", "200 and 250"], ["38", "250 and 300"], ["30", "300 and 350"], ["17", "350 and 400"]]
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
