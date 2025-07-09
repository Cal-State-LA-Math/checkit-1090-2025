class Generator(BaseGenerator):
    def data(self):
        OC_1=randint(1,2)
        OC_2=randint(1,2)
        OC_2a=randint(0,1)
        OC_3=randint(0,1)
        while OC_1==OC_2:
            OC_2=randint(1,2)
        n_1=randint(150, 200)
        min_1=round(uniform(.2, .6),2)
        q1_1=round((min_1+1.78),2)
        med_1=round((min_1+3.1),2)
        q3_1=round((min_1+6.26),2)
        max_1=round((min_1+17.58),2)
        mean_1=round((min_1*12.47),2)
        stdev_1=round(((max_1-min_1)/4),2)
        n_2=randint(150, 200)
        min_2=round(uniform(.2, .75),2)
        q1_2=round((min_2+1.34),2)
        med_2=round((min_2+3.1),2)
        q3_2=round((min_2+4.75),2)
        max_2=round((min_2+6.1),2)
        mean_2=round((min_2+3.25),2)
        stdev_2=round(((max_2-min_2)/4),2)
        answer_1=n_1
        if OC_1==2:
            answer_1=n_2
        tip_1=[["quartile 3", "less", "25", q3_1], ["quartile 1", "less", "75", q1_1]]
        tip_2=[["quartile 3", "less", "25", q3_2], ["quartile 1", "less", "75", q1_2]]
        min_max=tip_1[OC_2a][0]
        dir_2=tip_1[OC_2a][1]
        percent_2=tip_1[OC_2a][2]
        answer_2=tip_1[OC_2a][3]
        if OC_2==2:
            min_max=tip_2[OC_2a][0]
            dir_2=tip_2[OC_2a][1]
            percent_2=tip_2[OC_2a][2]
            answer_2=tip_2[OC_2a][3]
        question_3=[["one", q1_1, "25"], ["three", q3_1, "75"]]
        quar_3=question_3[OC_3][0]
        money_3=question_3[OC_3][1]
        answer_3=question_3[OC_3][2]
        

        return {
            "OC_1":OC_1,
            "OC_2":OC_2,
            "n_1":n_1,
            "min_1":"{:.2f}".format(min_1),
            "q1_1":"{:.2f}".format(q1_1),
            "med_1":"{:.2f}".format(med_1),
            "q3_1":"{:.2f}".format(q3_1),
            "max_1":"{:.2f}".format(max_1),
            "mean_1":"{:.2f}".format(mean_1),
            "stdev_1":"{:.2f}".format(stdev_1),
            "n_2":n_2,
            "min_2":"{:.2f}".format(min_2),
            "q1_2":"{:.2f}".format(q1_2),
            "med_2":"{:.2f}".format(med_2),
            "q3_2":"{:.2f}".format(q3_2),
            "max_2":"{:.2f}".format(max_2),
            "mean_2":"{:.2f}".format(mean_2),
            "stdev_2":"{:.2f}".format(stdev_2),
            "answer_1":answer_1,
            "min_max":min_max,
            "dir_2":dir_2,
            "percent_2":percent_2,
            "answer_2":"{:.2f}".format(answer_2),
            "quar_3":quar_3,
            "money_3":"{:.2f}".format(money_3),
            "answer_3":answer_3,
            
        }
