class Generator(BaseGenerator):
    def data(self):
        graph_var=[["Asian", "black", "21.9", "in total"], ["Asian", "blue", "26.1", "men"], ["Asian", "teal", "18.8", "women"], ["Black", "black", "19", "in total"], ["Black", "blue", "20.1", "men"], ["Black", "teal", "17.7", "women"], ["Latino", "black", "15.4", "in total"], ["Latino", "blue", "16", "men"], ["Latino", "teal", "14.5", "women"], ["White", "black", "15.6", "in total"], ["White", "blue", "16.6", "men"], ["White", "teal", "14.3", "women"]]
        OC_2=randint(0,11)
        OC_3=randint(0,11)
        OC_4=randint(0,11)
        week_2=graph_var[OC_2][2]
        color_2=graph_var[OC_2][1]
        race_2=graph_var[OC_2][0]
        answer_2=graph_var[OC_2][3]
        graph_3=choice(["scatter plot","histogram","time series","pie chart"])
        answer_3="No, there is only one numerical variable"
        if graph_3=="histogram":
            answer_3="No, we only have the summary statistic and not the individual data"
        if graph_3=="time series":
            answer_3="No, none of the variables are time"
        if graph_3=="pie chart":
            answer_3="No, the data is numerical"
        placement_4=choice(["second highest","lowest","second lowest"])
        answer_4="Black men at 20.1 weeks"
        if placement_4=="lowest":
            answer_4="White women at 14.3 weeks"
        if placement_4=="second lowest":
            answer_4="Latino women at 14.5 weeks"

        return {
            "week_2":week_2,
            "color_2":color_2,
            "race_2":race_2,
            "answer_2":answer_2,
            "graph_3":graph_3,
            "answer_3":answer_3,
            "placement_4":placement_4,
            "answer_4":answer_4,
            
        }
