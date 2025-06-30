class Generator(BaseGenerator):
    def data(self):
        graph_var=[["red", "Singapore", "90%"], ["dark purple", "UK", "36%"], ["light purple", "France", "78%"], ["green", "US", "73%"], ["gold", "Japan", "86%"], ["teal", "Australia", "20%"]]
        country_pair=[["gold", "Japan", "86%"], ["teal", "Australia", "20%"], ["green", "US", "73%"]]
        compare=[["April", "Singapore catches up to and passes Japan in percentage of people wearing face coverings in public"], ["May", "The UK catches up to and passes Australia in percentage of people wearing face coverings in public"], ["May", "The France catches up to and passes the US in percentage of people wearing face coverings in public"]]
        OC_3=randint(0,5)
        OC_4=randint(0,2)
        color_3=graph_var[OC_3][0]
        answer_3=graph_var[OC_3][1]
        country_4a=graph_var[OC_4][1]
        country_4b=country_pair[OC_4][1]
        month_4=compare[OC_4][0]
        answer_4=compare[OC_4][1]
        

        return {
            "color_3":color_3,
            "answer_3":answer_3,
            "country_4a":country_4a,
            "country_4b":country_4b,
            "month_4":month_4,
            "answer_4":answer_4,
        }
