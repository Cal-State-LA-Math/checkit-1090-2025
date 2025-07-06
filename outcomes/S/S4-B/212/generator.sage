class Generator(BaseGenerator):
    def data(self):
        graph_var=[[60, 3], [80, 27], [100, 37], [120, 28], [140, 8], [160, 7], [180, 0], [200, 1], [220, 1], [240, 0]]
        times=[["3", "60 and 80 minutes"], ["27", "80 and 100 minutes"], ["37", "100 and 120 minutes"], ["28", "120 and 140 minutes"], ["8", "140 and 160 minutes"], ["7", "160 and 180 minutes"]]
        OC_2=randint(0,5)
        OC_3=randint(0,5)
        number_2=times[OC_2][0]
        answer_2=times[OC_2][1]
        minutes_3a=graph_var[OC_3][0]
        minutes_3b=graph_var[OC_3 + 3][0]
        answer_3a=graph_var[OC_3][1]
        answer_3b=graph_var[OC_3 + 1][1]
        answer_3c=graph_var[OC_3 + 2][1]
        answer_3=round(((answer_3a + answer_3b + answer_3c)/112),4)*100
        

        return {
            "number_2":number_2,
            "answer_2":answer_2,
            "minutes_3a":minutes_3a,
            "minutes_3b":minutes_3b,
            "answer_3a":answer_3a,
            "answer_3b":answer_3b,
            "answer_3c":answer_3c,
            "answer_3":float("{:.2f}".format(answer_3)),
            
        }
