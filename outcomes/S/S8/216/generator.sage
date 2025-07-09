class Generator(BaseGenerator):
    def data(self):
        ND=RealDistribution('gaussian', 1)
        zscore_1=round(uniform(-2.85, 2.85),2)
        zscore_2=round(uniform(-.4, 2.03),2)
        zscore_3=round(uniform(-1.75, -.05),2)
        zscore_4=round(uniform(.03, 1.79),2)
        
        mean_1=.09
        SD_1=.2
        mean_2=.12
        SD_2=.1
        ind_1=choice(["NYSE", "NASDAQ"])
        dep_1=round((zscore_1*SD_1+mean_1),2)
        if ind_1=="NASDAQ":
            dep_1=round((zscore_1*SD_2+mean_2),2)
        answer_1=round(((dep_1-mean_1)/SD_1),2)
        if ind_1=="NASDAQ":
            answer_1=round(((dep_1-mean_2)/SD_2),2)
        ind_2=choice(["NYSE", "NASDAQ"])
        dep_2=round((zscore_2*SD_1+mean_1),2)
        if ind_2=="NASDAQ":
            dep_2=round((zscore_2*SD_2+mean_2),2)
        answer_2=round(ND.cum_distribution_function((dep_2 - mean_1)/SD_1),4)
        if ind_2=="NASDAQ":
            answer_2=round(ND.cum_distribution_function((dep_2 - mean_2)/SD_2),4)
        ind_3="NASDAQ"
        if ind_2=="NASDAQ":
            ind_3="NYSE"
        dir_1=choice(["higher", "lower"])
        min_max="minimum"
        if dir_1=="lower":
            min_max="maximum "
        percent_1=randint(33, 71)
        percent_1a=percent_1
        if dir_1=="lower":
            percent_1a=100-percent_1
        answer_3z=ND.cum_distribution_function_inv(percent_1a/100)
        answer_3=round((answer_3z*SD_2 + mean_2),2)
        if ind_2=="NASDAQ":
            answer_3=round((answer_3z*SD_1 + mean_1),2)
        ind_4="NASDAQ"
        if ind_1=="NASDAQ":
            ind_4="NYSE"
        dep_3=round((zscore_3*SD_2+mean_2),2)
        if ind_1=="NASDAQ":
            dep_3=round((zscore_3*SD_1+mean_1),2)
        dep_4=round((zscore_4*SD_2+mean_2),2)
        if ind_1=="NASDAQ":
            dep_4=round((zscore_4*SD_1+mean_1),2)
        answer_4=round(ND.cum_distribution_function((dep_4 - mean_2)/SD_2),4) - round(ND.cum_distribution_function((dep_3 - mean_2)/SD_2),4)
        if ind_1=="NASDAQ":
            answer_4=round(ND.cum_distribution_function((dep_4 - mean_1)/SD_1),4) - round(ND.cum_distribution_function((dep_3 - mean_1)/SD_1),4)
        percent_2=randint(52, 72)
        dep_5=ND.cum_distribution_function_inv(percent_2/100)
        answer_5a=round((dep_5*SD_1+mean_1),2)
        answer_5b=round((dep_5*SD_2+mean_2),2)
        
        return {
            "ind_1":ind_1,
            "dep_1":"{:.2f}".format(dep_1),
            "answer_1":"{:.2f}".format(answer_1),
            "ind_2":ind_2,
            "dep_2":"{:.0f}".format(dep_2*100),
            "answer_2":"{:.4f}".format(answer_2),
            "ind_3":ind_3,
            "dir_1":dir_1,
            "min_max":min_max,
            "percent_1":percent_1,
            "answer_3":answer_3,
            "ind_4":ind_4,
            "dep_3":"{:.0f}".format(dep_3*100),
            "dep_4":"{:.0f}".format(dep_4*100),
            "answer_4":"{:.4f}".format(answer_4),
            "percent_2":percent_2,
            "answer_5a":"{:.2f}".format(answer_5a),
            "answer_5b":"{:.2f}".format(answer_5b),

        }
