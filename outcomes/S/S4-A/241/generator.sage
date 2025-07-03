class Generator(BaseGenerator):
    def data(self):
        n = randint(10000, 20000)
        graph_2=choice(["scatter plot", "histogram", "bar graph"])
        answer_2="No, there is only one variable or because the variable is categorical."
        if graph_2=="histogram":
            answer_2="No, histograms can only be used with numerical variables"
        if graph_2=="bar graph":
            answer_2="Yes, a bar graph could be used"
        pie = (["red", "Idiopathic", 23], ["green", "chemo treatments",10],["purple","HIV/AIDS", 2])
        q3 = randint(0,2)
        color = pie[q3][0]
        percent = pie[q3][2]
        cause = pie[q3][1]
        pie_2 = (["diabetes", .6],["chemo treatments",.1],["HIV/AIDS",.02])
        q4 = randint(0,2)
        reason = pie_2[q4][0]
        answer_4 = n * (pie_2[q4][1])
        
        

        return {
            "n":n,
            "color":color,
            "percent":percent,
            "cause":cause,
            "graph_2":graph_2,
            "answer_2":answer_2,
            "reason":reason,
            "answer_4":round(answer_4,0),
        }
