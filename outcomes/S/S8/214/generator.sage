class Generator(BaseGenerator):
    def data(self):
        ND=RealDistribution('gaussian', 1)
        zscore_1=round(uniform(-2.85, 2.85),2)
        zscore_2=round(uniform(-1.88, 2.03),2)
        zscore_3=round(uniform(-1.75, -.05),2)
        zscore_4=round(uniform(.03, 1.79),2)
        
        mean_1=955
        SD_1=123
        mean_2=1040
        SD_2=135
        ind_1=choice(["White woman", "Black woman"])
        dep_1=round((zscore_1*SD_1+mean_1),0)
        if ind_1=="Black woman":
            dep_1=round((zscore_1*SD_2+mean_2),0)
        answer_1=round(((dep_1-mean_1)/SD_1),2)
        if ind_1=="Black woman":
            answer_1=round(((dep_1-mean_2)/SD_2),2)
        ind_2=choice(["White woman", "Black woman"])
        dep_2=round((zscore_2*SD_1+mean_1),0)
        if ind_2=="Black woman":
            dep_2=round((zscore_2*SD_2+mean_2),0)
        answer_2=round(ND.cum_distribution_function((dep_2 - mean_1)/SD_1),4)
        if ind_2=="Black woman":
            answer_2=round(ND.cum_distribution_function((dep_2 - mean_2)/SD_2),4)
        ind_3="Black woman"
        if ind_2=="Black woman":
            ind_3="White woman"
        ind_3a="Black women"
        if ind_2=="Black woman":
            ind_3a="White women"
        dir_1=choice(["higher", "lower"])
        min_max="minimum"
        if dir_1=="lower":
            min_max="maximum"
        percent_1=randint(33, 71)
        percent_1a=percent_1
        if dir_1=="lower":
            percent_1a=100-percent_1
        answer_3z=ND.cum_distribution_function_inv(percent_1a/100)
        answer_3=round((answer_3z*SD_2 + mean_2),0)
        if ind_2=="Black woman":
            answer_3=round((answer_3z*SD_1 + mean_1),0)
        ind_4="Black women"
        if ind_1=="Black woman":
            ind_4="White women"
        dep_3=round((zscore_3*SD_2+mean_2),0)
        if ind_1=="Black woman":
            dep_3=round((zscore_3*SD_1+mean_1),0)
        dep_4=round((zscore_4*SD_2+mean_2),0)
        if ind_1=="Black woman":
            dep_4=round((zscore_4*SD_1+mean_1),0)
        answer_4=round(ND.cum_distribution_function((dep_4 - mean_2)/SD_2),4) - round(ND.cum_distribution_function((dep_3 - mean_2)/SD_2),4)
        if ind_1=="Black woman":
            answer_4=round(ND.cum_distribution_function((dep_4 - mean_1)/SD_1),4) - round(ND.cum_distribution_function((dep_3 - mean_1)/SD_1),4)
        dep_5=randint(980, 1010)
        answer_5b=round(1-(ND.cum_distribution_function((dep_5 - mean_1)/SD_1)),4)
        answer_5a=round(ND.cum_distribution_function((dep_5 - mean_2)/SD_2),4)
        
        return {
            "ind_1":ind_1,
            "dep_1":dep_1,
            "answer_1":"{:.2f}".format(answer_1),
            "ind_2":ind_2,
            "dep_2":dep_2,
            "answer_2":"{:.4f}".format(answer_2),
            "ind_3":ind_3,
            "ind_3a":ind_3a,
            "dir_1":dir_1,
            "min_max":min_max,
            "percent_1":percent_1,
            "answer_3":answer_3,
            "ind_4":ind_4,
            "dep_3":dep_3,
            "dep_4":dep_4,
            "answer_4":"{:.4f}".format(answer_4),
            "dep_5":dep_5,
            "answer_5a":answer_5a,
            "answer_5b":answer_5b,

        }
