class Generator(BaseGenerator):
    def data(self):
        ND=RealDistribution('gaussian', 1)
        zscore_1=round(uniform(-2.85, 2.85),2)
        zscore_2=round(uniform(-1.88, 2.03),2)
        zscore_3=round(uniform(-1.75, -.05),2)
        zscore_4=round(uniform(.03, 1.79),2)
        
        mean_1=70
        SD_1=3
        mean_2=64.5
        SD_2=2.5
        sex_1=choice(["man", "woman"])
        high_1=round((zscore_1*SD_1+mean_1),1)
        if sex_1=="woman":
            high_1=round((zscore_1*SD_2+mean_2),1)
        answer_1=round(((high_1-mean_1)/SD_1),2)
        if sex_1=="woman":
            answer_1=round(((high_1-mean_2)/SD_2),2)
        sex_2=choice(["male", "female"])
        high_2=round((zscore_2*SD_1+mean_1),1)
        if sex_2=="female":
            high_2=round((zscore_2*SD_2+mean_2),1)
        answer_2=round(ND.cum_distribution_function((high_2 - mean_1)/SD_1),4)
        if sex_2=="female":
            answer_2=round(ND.cum_distribution_function((high_2 - mean_2)/SD_2),4)
        sex_3="female"
        if sex_2=="female":
            sex_3="male"
        sex_4="men"
        if sex_3=="female":
            sex_4="women"
        dir_1=choice(["taller", "shorter"])
        min_max="minimum"
        if dir_1=="shorter":
            min_max="maximum"
        percent_1=randint(33, 71)
        percent_1a=percent_1
        if dir_1=="shorter":
            percent_1a=100-percent_1
        answer_3z=ND.cum_distribution_function_inv(percent_1a/100)
        answer_3=round((answer_3z*SD_2 + mean_2),1)
        if sex_2=="female":
            answer_3=round((answer_3z*SD_1 + mean_1),1)
        sex_4="females"
        if sex_1=="woman":
            sex_4="males"
        high_3=round((zscore_3*SD_2+mean_2),1)
        if sex_1=="woman":
            high_3=round((zscore_3*SD_1+mean_1),1)
        high_4=round((zscore_4*SD_2+mean_2),1)
        if sex_1=="woman":
            high_4=round((zscore_4*SD_1+mean_1),1)
        answer_4=ND.cum_distribution_function((high_4 - mean_2)/SD_2) - ND.cum_distribution_function((high_3 - mean_2)/SD_2)
        if sex_1=="woman":
            answer_4=ND.cum_distribution_function((high_4 - mean_1)/SD_1) - ND.cum_distribution_function((high_3 - mean_1)/SD_1)
        high_5=round(uniform(65, 69),1)
        while high_5==67:
            high_5=round(uniform(65, 69),1)
        answer_5a=round(ND.cum_distribution_function((high_5 - mean_1)/SD_1),4)
        answer_5b=round(1-(ND.cum_distribution_function((high_5 - mean_2)/SD_2)),4)

        return {
            "high_1":"{:.1f}".format(high_1),
            "sex_1":sex_1,
            "answer_1":"{:.2f}".format(answer_1),
            "sex_2":sex_2,
            "high_2":"{:.1f}".format(high_2),
            "answer_2":"{:.4f}".format(answer_2),
            "sex_3":sex_3,
            "dir_1":dir_1,
            "min_max":min_max,
            "percent_1":percent_1,
            "sex_4":sex_4,
            "answer_3":"{:.1f}".format(answer_3),
            "sex_4":sex_4,
            "high_3":"{:.1f}".format(high_3),
            "high_4":"{:.1f}".format(high_4),
            "answer_4":"{:.4f}".format(answer_4),
            "high_5":high_5,
            "answer_5a":"{:.4f}".format(answer_5a),
            "answer_5b":"{:.4f}".format(answer_5b),
        }
