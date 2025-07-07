class Generator(BaseGenerator):
    def data(self):
        money_2=randint(1,250)
        answer_2=2.3922*money_2 - 9.62
        money_3=randint(900, 999)
        budget=[[306, 2059], [200, 1331], [94,1141], [115, 1027], [115, 849], [11, 787], [150, 665], [33, 573], [23, 534], [88, 496]]
        domestic=[[171, 464], [64, 404], [122, 376], [82, 311], [72, 282], [157, 277], [125, 260], [125, 239], [94, 233], [108, 213]]
        OC_4=randint(0,9)
        ind_var4=choice(["a budget", "domestic gross revenue"])
        point_x=budget[OC_4][0]
        point_y=budget[OC_4][1]
        if ind_var4=="domestic gross revenue":
            point_x=domestic[OC_4][0]
            point_y=domestic[OC_4][1]

        return {
            "money_2":money_2,
            "answer_2":"{:.2f}".format(answer_2),
            "money_3":money_3,
            "ind_var4":ind_var4,
            "point_x":point_x,
            "point_y":point_y,
            
            }
