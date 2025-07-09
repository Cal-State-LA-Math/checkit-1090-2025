class Generator(BaseGenerator):
    def data(self):
        number_2=randint(75, 200)
        answer_2=34.9793 + .1993*number_2
        var_3=choice(["duration","drop"])
        value_3=randint(75,200)
        if var_3=="drop":
            value_3=randint(450, 600)
        unit_3="seconds"
        if var_3=="drop":
            unit_3="feet"
        answer_3="low correlation"
        if var_3=="drop":
            answer_3="outside of the data range or extrapolation"
        duration=[[165, 93], [180, 85], [150, 73], [210, 85], [140, 68], [180, 65], [135, 65], [150, 65], [108, 63], [75, 47]]
        drop=[[300, 93], [225, 80], [171, 70], [105, 67], [155, 66], [147, 66], [92, 62], [155, 66], [177, 66], [208, 73]]
        OC_4=randint(0,9)
        ind_var4=choice(["duration", "drop"])
        point_x=duration[OC_4][0]
        point_y=duration[OC_4][1]
        unit_4="seconds"
        if ind_var4=="drop":
            point_x=drop[OC_4][0]
            point_y=drop[OC_4][1]
            unit_4="feet"
        quest_3 = "the Speed vs Drop model"
        if var_3=="duration":
            quest_3="the Speed vs Duration model"

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
            "quest_3":quest_3,
            
            }
