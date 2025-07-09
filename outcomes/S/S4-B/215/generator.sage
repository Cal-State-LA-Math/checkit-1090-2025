class Generator(BaseGenerator):
    def data(self):
        graph_var=[[50, 3], [100, 8], [150, 11], [200, 6], [250, 5], [300, 6], [350, 3], [400, 2], [450, 4], [500, 2], [550, 0], [600, 1], [650, 0]]
        AA=[["8", "100 and 150"], ["11", "150 and 200"], ["5", "250 and 300"], ["4", "450 and 500"], ["1", "600 and 650"]]
        OC_2=randint(0,4)
        OC_3=randint(0,9)
        number_2=AA[OC_2][0]
        answer_2=AA[OC_2][1]
        assault_3a=graph_var[OC_3][0]
        assault_3b=graph_var[OC_3 + 3][0]
        answer_3a=graph_var[OC_3][1]
        answer_3b=graph_var[OC_3 + 1][1]
        answer_3c=graph_var[OC_3 + 2][1]
        answer_3=round(((answer_3a + answer_3b + answer_3c)/51),4)*100
        

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
