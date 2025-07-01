class Generator(BaseGenerator):
    def data(self):
        ND=RealDistribution('gaussian', 1)
        zscore_1=round(uniform(-2.85, 2.85),2)
        zscore_2=round(uniform(-1.88, 2.03),2)
        zscore_3=round(uniform(-1.75, -.05),2)
        zscore_4=round(uniform(.03, 1.79),2)
        
        mean_1=round(uniform(16.70, 17.30),2)
        SD_1=round(uniform(.55, 1.25),2)
        mean_2=round(uniform(17.50, 18.50),2)
        SD_2=round(uniform(.10, .25),2)
        store_1=choice(["Starbucks", "Target"])
        salary_1=round((zscore_1*SD_1+mean_1),2)
        if store_1=="Target":
            salary_1=round((zscore_1*SD_2+mean_2),2)
        answer_1=round(((salary_1 - mean_1)/SD_1),2)
        if store_1=="Target":
            answer_1=round(((salary_1 - mean_2)/SD_2),2)
        store_2=choice(["Starbucks", "Target"])
        salary_2=round((zscore_2*SD_1+mean_1),2)
        if store_2=="Target":
            salary_2=round((zscore_2*SD_2+mean_2),2)
        answer_2=round(ND.cum_distribution_function((salary_2 - mean_1)/SD_1),4)
        if store_2=="Target":
            answer_2=round(ND.cum_distribution_function((salary_2 - mean_2)/SD_2),4)
        store_3="Target"
        if store_2=="Target":
            store_3="Starbucks"
        percent_1=randint(33, 71)
        answer_3z=ND.cum_distribution_function_inv(percent_1/100)
        answer_3=round((answer_3z*SD_2 + mean_2),2)
        if store_2=="Target":
            answer_3=round((answer_3z*SD_1 + mean_1),2)
        store_4="Target"
        if store_1=="Target":
            store_4="Starbucks"
        salary_3=round((zscore_3*SD_2+mean_2),2)
        if store_1=="Target":
            salary_3=round((zscore_3*SD_1+mean_1),2)
        salary_4=round((zscore_4*SD_2+mean_2),2)
        if store_1=="Target":
            salary_4=round((zscore_4*SD_1+mean_1),2)
        answer_4=ND.cum_distribution_function((salary_4 - mean_2)/SD_2) - ND.cum_distribution_function((salary_3 - mean_2)/SD_2)
        if store_1=="Target":
            answer_4=ND.cum_distribution_function((salary_4 - mean_1)/SD_1) - ND.cum_distribution_function((salary_3 - mean_1)/SD_1)
        answer_5a=round((1.28155*SD_1+mean_1),2)
        answer_5b=round((1.28155*SD_2+mean_2),2)
        

        return {
            "mean_1":"{:.2f}".format(mean_1),
            "SD_1":"{:.2f}".format(SD_1),
            "mean_2":"{:.2f}".format(mean_2),
            "SD_2":"{:.2f}".format(SD_2),
            "store_1":store_1,
            "salary_1":"{:.2f}".format(salary_1),
            "answer_1":"{:.2f}".format(answer_1),
            "store_2":store_2,
            "salary_2":"{:.2f}".format(salary_2),
            "answer_2":"{:.4f}".format(answer_2),
            "store_3":store_3,
            "percent_1":percent_1,
            "answer_3":"{:.2f}".format(answer_3),
            "store_4":store_4,
            "salary_3":"{:.2f}".format(salary_3),
            "salary_4":"{:.2f}".format(salary_4),
            "answer_4":"{:.4f}".format(answer_4),
            "answer_5a":"{:.2f}".format(answer_5a),
            "answer_5b":"{:.2f}".format(answer_5b),

        }
