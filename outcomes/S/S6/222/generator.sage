class Generator(BaseGenerator):
    def data(self):
        number_2=randint(25, 150)
        answer_2=39.7 + .73*number_2
        var_3=choice(["2000","2010"])
        value_3=randint(30,139)
        if var_3=="2010":
            value_3=randint(250, 400)
        unit_3="cell phones per 100 people"
        answer_3="low correlation"
        if var_3=="2010":
            answer_3="outside of the data range or extrapolation"
        year_2000=[[13, 91], [81, 119], [58, 186], [35, 86], [8, 147], [22, 95], [26, 130], [77, 116], [45, 106], [42, 159]]
        year_2010=[[46, 58], [78, 122], [83, 119], [101, 133], [95, 126], [82, 95], [128, 135], [111, 133], [134, 153], [95, 106]]
        OC_4=randint(0,9)
        ind_var4=choice(["2000", "2010"])
        point_x=year_2000[OC_4][0]
        point_y=year_2000[OC_4][1]
        unit_4="seconds"
        if ind_var4=="2010":
            point_x=year_2010[OC_4][0]
            point_y=year_2010[OC_4][1]
            unit_4="feet"

        return {
            "number_2":number_2,
            "answer_2":"{:.2f}".format(answer_2),
            "var_3":var_3,
            "unit_3":unit_3,
            "value_3":value_3,
            "answer_3":answer_3,
            "ind_var4":ind_var4,
            "unit_4":unit_4,
            "point_x":point_x,
            "point_y":point_y,
            
            }
