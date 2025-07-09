class Generator(BaseGenerator):
    def data(self):
        OC_1=randint(1,2)
        OC_2=randint(1,2)
        OC_2a=randint(0,3)
        OC_3=randint(0,1)
        while OC_1==OC_2:
            OC_2=randint(1,2)
        n_1=randint(1250, 1700)
        min_1=round(uniform(4, 6.25),2)
        q1_1=round((min_1+46.72),2)
        med_1=round((min_1+71.19),2)
        q3_1=round((min_1+86.26),2)
        max_1=round((min_1+107.78),2)
        mean_1=round((min_1+50.47),2)
        stdev_1=round(((max_1-min_1)/4),2)
        n_2=randint(1500, 2000)
        min_2=round(uniform(30.75, 40.75),2)
        q1_2=round((min_2+19.34),2)
        med_2=round((min_2+49.44),2)
        q3_2=round((min_2+80.61),2)
        max_2=round((min_2+98.58),2)
        mean_2=round((min_2+51.57),2)
        stdev_2=round(((max_2-min_2)/4),2)
        answer_1=n_1
        if OC_1==2:
            answer_1=n_2
        tip_1=[["minimum", "more", "25", q1_1], ["minimum", "more", "75", q3_1], ["maximum", "less", "25", q3_1], ["maximum", "less", "75", q1_1]]
        tip_2=[["minimum", "more", "25", q1_2], ["minimum", "more", "75", q3_2], ["maximum", "less", "25", q3_2], ["maximum", "less", "75", q1_2]]
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
