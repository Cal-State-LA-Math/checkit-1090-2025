class Generator(BaseGenerator):
    def data(self):
        graph_var=[[0, 19], [50, 327], [100, 71], [150, 27], [200, 16], [250, 7], [300, 8], [350, 5], [400, 7], [450, 2]]
        weight=[["19", "0 and 50 kg"], ["327", "50 and 100 kg"], ["71", "100 and 150 kg"], ["27", "150 and 200 kg"], ["16", "200 and 250 kg"], ["8", "300 and 350 kg"], ["5", "350 and 400 kg"], ["2", "450 and 500 kg"]]
        OC_2=randint(0,7)
        OC_3=randint(0,6)
        OC_4=randint(0,3)
        number_2=weight[OC_2][0]
        answer_2=weight[OC_2][1]
        weigh_3a=graph_var[OC_3][0]
        weigh_3b=graph_var[OC_3 + 3][0]
        answer_3a=graph_var[OC_3][1]
        answer_3b=graph_var[OC_3 + 1][1]
        answer_3c=graph_var[OC_3 + 2][1]
        answer_3=(answer_3a + answer_3b + answer_3c)/4.95
        
        return {
            "number_2":number_2,
            "answer_2":answer_2,
            "weigh_3a":weigh_3a,
            "weigh_3b":weigh_3b,
            "answer_3a":answer_3a,
            "answer_3b":answer_3b,
            "answer_3c":answer_3c,
            "answer_3":"{:.2f}".format(answer_3),
            #"min_max":min_max,
            #"dir_4":dir_4,
            #"percent_4":percent_4,
            #"answer_4":"{:.2f}".format(answer_4),
            
        }
