class Generator(BaseGenerator):
    def data(self):
        graph_var=[["<$35k", 21], ["$35k - 75k", 15], ["$75k - 100k", 13], [">$100k", 7]]
        OC_3=randint(1,3)
        OC_4=randint(0,3)
        while OC_3==OC_4:
            OC_4=randint(0,3)
        graph_2=choice(["histogram", "scatter plot", "time series", "single pie chart"])
        answer_2="data is not numerical"
        if graph_2=="time series":
            answer_2="none of the variables are time"
        if graph_2=="single pie chart":
            answer_2="data is not a single level variable or it does not add up to 100%"
        money_3=graph_var[OC_3][0]
        answer_3=graph_var[OC_3][1]
        money_4=graph_var[OC_4][0]
        answer_4=graph_var[OC_4][1]
        dir_5=choice(["increases", "decreases"])
        answer_5="decreases"
        if dir_5=="decreases":
            answer_5="increases"

        return {
            "graph_2":graph_2,
            "answer_2":answer_2,
            "money_3":money_3,
            "answer_3":answer_3,
            "money_4":money_4,
            "answer_4":answer_4,
            "dir_5":dir_5,
            "answer_5":answer_5
        }
