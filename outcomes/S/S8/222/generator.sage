class Generator(BaseGenerator):
    def data(self):
        ND=RealDistribution('gaussian', 1)
        zscore_1=round(uniform(-2.85, 2.85),2)
        zscore_2=round(uniform(-1.88, 2.03),2)
        zscore_3=round(uniform(-1.75, -.05),2)
        zscore_4=round(uniform(.03, 1.79),2)
        
        mean_1=.50
        SD_1=0.0745
        mean_2=.45
        SD_2=0.0742
        ind_1=choice(["A", "B"])
        dep_1=round((zscore_1*SD_1+mean_1),3)
        if ind_1=="B":
            dep_1=round((zscore_1*SD_2+mean_2),3)
        answer_1=round(((dep_1-mean_1)/SD_1),3)
        if ind_1=="B":
            answer_1=round(((dep_1-mean_2)/SD_2),3)
        ind_2=choice(["A", "B"])
        dep_2=round((zscore_2*SD_1+mean_1),2)
        if ind_2=="B":
            dep_2=round((zscore_2*SD_2+mean_2),2)
        answer_2=round(ND.cum_distribution_function((dep_2 - mean_1)/SD_1),4)
        if ind_2=="B":
            answer_2=round(ND.cum_distribution_function((dep_2 - mean_2)/SD_2),4)
        ind_3="B"
        if ind_2=="B":
            ind_3="A"
        dir_1=choice(["larger", "smaller"])
        min_max="minimum"
        if dir_1=="smaller":
            min_max="maximum"
        percent_1=randint(33, 71)
        percent_1a=percent_1
        if dir_1=="smaller":
            percent_1a=100-percent_1
        answer_3z=ND.cum_distribution_function_inv(percent_1a/100)
        answer_3=round((answer_3z*SD_2 + mean_2),3)
        if ind_2=="B":
            answer_3=round((answer_3z*SD_1 + mean_1),3)
        ind_4="B"
        if ind_1=="B":
            ind_4="A"
        dep_3=round((zscore_3*SD_2+mean_2),2)
        if ind_1=="B":
            dep_3=round((zscore_3*SD_1+mean_1),2)
        dep_4=round((zscore_4*SD_2+mean_2),2)
        if ind_1=="B":
            dep_4=round((zscore_4*SD_1+mean_1),2)
        answer_4=round(round(ND.cum_distribution_function((dep_4 - mean_2)/SD_2),4) - round(ND.cum_distribution_function((dep_3 - mean_2)/SD_2),4),4)
        if ind_1=="B":
            answer_4=round(round(ND.cum_distribution_function((dep_4 - mean_1)/SD_1),4) - round(ND.cum_distribution_function((dep_3 - mean_1)/SD_1),4),4)
        percent_2=randint(5, 10)
        dep_5=ND.cum_distribution_function_inv(percent_2/100)
        answer_5a=round((dep_5*SD_1+mean_1),3)
        answer_5b=round((dep_5*SD_2+mean_2),3)
        
        
        return {
            "ind_1":ind_1,
            "dep_1":dep_1,
            "answer_1":"{:.2f}".format(answer_1),
            "ind_2":ind_2,
            "dep_2":dep_2,
            "answer_2":"{:.4f}".format(answer_2),
            "ind_3":ind_3,
            "dir_1":dir_1,
            "min_max":min_max,
            "percent_1":percent_1,
            "answer_3":answer_3,
            "ind_4":ind_4,
            "dep_3":dep_3,
            "dep_4":dep_4,
            "answer_4":100*answer_4,
            "percent_2":percent_2,
            "answer_5a":answer_5a,
            "answer_5b":answer_5b,

        }
