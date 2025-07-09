class Generator(BaseGenerator):
    def data(self):
        graph_var=[[0, 50], [10, 23], [20, 7], [30, 6], [40, 2], [50, 2], [60, 1], [70, 2], [80, 4], [90, 0], [100, 1], [110, 1], [120, 0]]
        sales=[["50", "0 and 10 billion"], ["23", "10 billion and 20 billion"], ["7", "20 billion and 30 billion"], ["6", "30 billion and 40 billion"], ["4", "80 billion and 90 billion"]]
        OC_2=randint(0,4)
        OC_3=randint(0,9)
        number_2=sales[OC_2][0]
        answer_2=sales[OC_2][1]
        money_3a=graph_var[OC_3][0]
        money_3b=graph_var[OC_3 + 3][0]
        answer_3a=graph_var[OC_3][1]
        answer_3b=graph_var[OC_3 + 1][1]
        answer_3c=graph_var[OC_3 + 2][1]
        answer_3=round(((answer_3a + answer_3b + answer_3c)/99),4)*100
        

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
