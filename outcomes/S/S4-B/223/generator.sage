class Generator(BaseGenerator):
    def data(self):
        graph_var=[[0, 48106], [1, 20618], [2, 8444], [3, 5321], [4, 3040], [5, 2114], [6, 1471], [7, 1010], [8, 720], [9, 571], [10, 463], [11, 479], [12, 748], [13, 740], [14, 600], [15, 542], [16, 666], [17, 2089], [18, 1114], [19, 209], [20, 153], [21, 101], [22, 50], [23, 38], [24, 53]]
        AA=[["8444", "2 and 3"], ["2114", "5 and 6"], ["5321", "3 and 4"], ["20618", "1 and 2"], ["3040", "4 and 5"], ["1471", "6 and 7"], ["1010", "7 and 8"]]
        OC_2=randint(0,6)
        OC_3=randint(0,21)
        number_2=AA[OC_2][0]
        answer_2=AA[OC_2][1]
        assault_3a=graph_var[OC_3][0]
        assault_3b=graph_var[OC_3 + 3][0]
        answer_3a=graph_var[OC_3][1]
        answer_3b=graph_var[OC_3 + 1][1]
        answer_3c=graph_var[OC_3 + 2][1]
        answer_3=round(((answer_3a + answer_3b + answer_3c)/99460),4)*100
        

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
