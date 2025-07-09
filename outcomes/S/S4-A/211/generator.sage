class Generator(BaseGenerator):
    def data(self):
        x=[["Cornell", 6277, 44966], ["Harvard", 2037, 39041], ["UPenn", 3661, 38918], ["Columbia", 2193, 36292], ["Brown", 2919, 32390], ["Yale", 1972, 31455], ["Princeton", 1894, 29303], ["Dartmouth", 2176, 20675]]
        a=randint(0,7)
        b=randint(0,7)
        while(a==b):
            b=randint(0,7)
        var_name1= x[a][0]
        var_big1= x[a][2]
        var_small1= x[a][1]
        percentage1=n(var_small1/var_big1*100)
        formatted_string="{:.2f}".format(percentage1)
        percentage_value1=float(formatted_string)
        var_name2= x[b][0]
        var_big2= x[b][2]
        var_small2= x[b][1]
        percentage2=n(var_small2/var_big2*100)
        formatted_string="{:.2f}".format(percentage2)
        percentage_value2=float(formatted_string)
        color=choice(["yellow", "blue"])
        action="were accepted by "
        if color=="blue":
            action="applied to "
        color_meaning="number of people that applied to that college"
        if color=="blue":
            color_meaning="number of people that were accepted to that college"
        if action=="were accepted by ":
            var_big2= x[b][1]
        

        return {
            "var_name1":var_name1,
                "var_big1":var_big1,
                "var_small1":var_small1,
                "percentage_value1":percentage_value1,
                "var_name2":var_name2,
                "var_big2":var_big2,
                "var_small2":var_small2,
                "percentage_value2":percentage_value2,
                "color":color,
                "color_meaning":color_meaning,
                "action":action,
        }
