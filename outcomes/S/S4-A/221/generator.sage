class Generator(BaseGenerator):
    def data(self):
        graph_var=[["health care and social assistance", 77800],["professional and business services", 74000], ["leisure and hospitality", 67000], ["transportation and warehousing", 35500], ["manufacturing",29000], ["information", 25000], ["wholesale trade", 16400], ["retail trade", 15400], ["construction", 13000], ["mining and logging", 6000], ["utilities", 1100], ["financial activities", 1000], ["government", -9000]]
        OC_3=randint(0,12)
        OC_4=randint(0,11)
        while OC_3==OC_4:
            OC_4=randint(0,11)
        graph_2=choice(["scatter plot", "time series", "single pie chart"])
        answer_2="No, there is only one numerical variable"
        if graph_2=="time series":
            answer_2="No, none of the variables are time"
        if graph_2=="single pie chart":
            answer_2="No, you can not have negative numbers in a pie chart"
        industry_3=graph_var[OC_3][0]
        answer_3=graph_var[OC_3][1]
        industry_4=graph_var[OC_4][0]
        answer_4n=graph_var[OC_4][1]
        answer_4=answer_4n/3720

        return {
            "graph_2":graph_2,
            "answer_2":answer_2,
            "industry_3":industry_3,
            "answer_3":answer_3,
            "industry_4":industry_4,
            "answer_4n":answer_4n,
            "answer_4":round((answer_4),2),
            
        }
