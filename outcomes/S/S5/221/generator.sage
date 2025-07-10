class Generator(BaseGenerator):
    def data(self):
        n_1="61"
        min_1="1.9"
        q1_1="6.9"
        med_1="18.0"
        q3_1="39.3"
        max_1="135.3"
        mean_1="27.4"
        stdev_1="27.8"
        n_2="61"
        min_2="1.6"
        q1_2="5.7"
        med_2="14.9"
        q3_2="34.4"
        max_2="108.7"
        mean_2="20.3"
        stdev_2="20.6"
        OC_1=randint(0,1)
        sex_1=choice(["male", "female"])
        score_a=[["maximum", "less", "25", q3_1], ["maximum", "less", "75", q1_1]]
        score_b=[["maximum", "less", "25", q3_2], ["maximum", "less", "75", q1_2]]
        min_max=score_a[OC_1][0]
        dir_1=score_a[OC_1][1]
        percent_1=score_a[OC_1][2]
        answer_1=score_a[OC_1][3]
        if sex_1=="female":
            min_max=score_b[OC_1][0]
            dir_1=score_b[OC_1][1]
            percent_1=score_b[OC_1][2]
            answer_1=score_b[OC_1][3]
        OC_2=randint(0,3)
        annual=[["male", "one", q1_1], ["male", "three", q3_1], ["female", "one", q1_2], ["female", "three", q3_2]]
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
        sex_5=choice(["male", "female"])
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
