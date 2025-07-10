class Generator(BaseGenerator):
    def data(self):
        n_1="489,236"
        min_1="480"
        q1_1="575"
        med_1="699"
        q3_1="829"
        max_1="1004"
        mean_1="717"
        stdev_1="137"
        n_2="476,935"
        min_2="592"
        q1_2="651"
        med_2="724"
        q3_2="808"
        max_2="1195"
        mean_2="791"
        stdev_2="156"
        OC_1=randint(0,3)
        year_1=choice(["2019", "2021"])
        score_a=[["minimum", "more", "25", q1_1], ["minimum", "more", "75", q3_1], ["maximum", "less", "25", q3_1], ["maximum", "less", "75", q1_1]]
        score_b=[["minimum", "more", "25", q1_2], ["minimum", "more", "75", q3_2], ["maximum", "less", "25", q3_2], ["maximum", "less", "75", q1_2]]
        min_max=score_a[OC_1][0]
        dir_1=choice(["top","bottom"])
        percent_1=score_a[OC_1][2]
        answer_1=q3_1
        if dir_1=="bottom":
            answer_1 = q1_1
        if year_1=="2021":
            min_max=score_b[OC_1][0]
            dir_1=choice(["top","bottom"])
            percent_1=score_b[OC_1][2]
            answer_1=q3_2
            if dir_1=="bottom":
                answer_1 = q1_2
        inequl = "more"
        if dir_1=="bottom":
            inequl = "less"
        OC_2=randint(0,3)
        student=[["2019", "one", q1_1], ["2019", "three", q3_1], ["2021", "one", q1_2], ["2021", "three", q3_2]]
        answer2=[[n_1, "25"], [n_1, "75"], [n_2, "25"], [n_2, "75"]]
        year_2=student[OC_2][0]
        quar_2=student[OC_2][1]
        test_2=student[OC_2][2]
        number_2=answer2[OC_2][0]
        percent_2=answer2[OC_2][1]
        dir_3=choice(["less than the minimum value", "greater than the maximum value"])
        answer_3="The mean would go down"
        if dir_3=="greater than the maximum value":
            answer_3="The mean would go up"
        year_5=choice(["2019", "2021"])
        answer_5="Skewed right or roughly symmetric"
        if year_5=="2021":
            answer_5="Skewed right"
        

        return {
            "n_1":n_1,
            "min_1":min_1,
            "q1_1":q1_1,
            "med_1":med_1,
            "q3_1":q3_1,
            "max_1":max_1,
            "mean_1":mean_1,
            "stdev_1":stdev_1,
            "n_2":n_2,
            "min_2":min_2,
            "q1_2":q1_2,
            "med_2":med_2,
            "q3_2":q3_2,
            "max_2":max_2,
            "mean_2":mean_2,
            "stdev_2":stdev_2,
            "year_1":year_1,
            "min_max":min_max,
            "dir_1":dir_1,
            "percent_1":percent_1,
            "answer_1":answer_1,
            "year_2":year_2,
            "quar_2":quar_2,
            "test_2":test_2,
            "number_2":number_2,
            "percent_2":percent_2,
            "dir_3":dir_3,
            "answer_3":answer_3,
            "year_5":year_5,
            "answer_5":answer_5,
            "inequl":inequl
            
        }
