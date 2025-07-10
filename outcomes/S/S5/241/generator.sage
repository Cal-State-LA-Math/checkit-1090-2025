class Generator(BaseGenerator):
    def data(self):
        n_1=randint(175,195)
        min_1=randint(5000,5999)
        q1_1=randint(18000,19000)
        med_1=randint(25000,26000)
        q3_1=randint(42000,43000)
        max_1=randint(66000,67000)
        mean_1=randint(30500, 31500)
        stdev_1=randint(16500,17000)
        n_2=randint(45,55)
        min_2=randint(4500,5500)
        q1_2=randint(10500, 11500)
        med_2=randint(21500,22500)
        q3_2=randint(30000,31000)
        max_2=randint(57500,58500)
        mean_2=randint(23500,24500)
        stdev_2=randint(16500,16800)
        OC_1=randint(0,1)
        sex_1=choice(["California's", "Washington's"])
        score_a=[["least", "less", "25", q1_1], ["most", "more", "75", q3_1]]
        score_b=[["least", "less", "25", q1_2], ["most", "more", "75", q3_2]]
        min_max=score_a[OC_1][0]
        dir_1=score_a[OC_1][1]
        percent_1=score_a[OC_1][2]
        answer_1=score_a[OC_1][3]
        if sex_1=="Washington's":
            min_max=score_b[OC_1][0]
            dir_1=score_b[OC_1][1]
            percent_1=score_b[OC_1][2]
            answer_1=score_b[OC_1][3]
        OC_2=randint(0,3)
        annual=[["California", "one", q1_1], ["California", "three", q3_1], ["Washington", "one", q1_2], ["Washington", "three", q3_2]]
        answer2=[[n_1, "25"], [n_1, "75"], [n_2, "25"], [n_2, "75"]]
        sex_2=annual[OC_2][0]
        quar_2=annual[OC_2][1]
        change_2=annual[OC_2][2]
        number_2=answer2[OC_2][0]
        percent_2=answer2[OC_2][1]
        stand_mean=choice(["standard deviation", "mean"])
        dir_3=choice(["less than the minimum value", "greater than the maximum value"])
        answer_3="The standard deviation would go up"
        if stand_mean=="mean" and dir_3=="less than the minimum value":
            answer_3="The mean would go down"
        if stand_mean=="mean" and dir_3=="greater than the maximum value":
            answer_3="The mean would go up"
        sex_5="Washington"
        if OC_2 ==2 or OC_2==3:
            sex_5="California"
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
            "sex_1":sex_1,
            "min_max":min_max,
            "dir_1":dir_1,
            "percent_1":percent_1,
            "answer_1":answer_1,
            "sex_2":sex_2,
            "quar_2":quar_2,
            "change_2":change_2,
            "number_2":number_2,
            "percent_2":percent_2,
            "stand_mean":stand_mean,
            "dir_3":dir_3,
            "answer_3":answer_3,
            "sex_5":sex_5,
            "answer_5":answer_5,
        }