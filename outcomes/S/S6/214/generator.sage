class Generator(BaseGenerator):
    def data(self):
        number_2=round(uniform(.1, .8),2)
        answer_2=575.6 - 101.3*number_2
        pop_3=randint(1000000,9999999)
        prop=[[.49, 501], [.12, 559], [.08, 522], [.07, 569], [.52, 493], [.70, 499], [.29, 537], [.32, 523], [.76, 505], [.87, 497]]
        pop=[[4515770, 564], [655435, 518], [1747214, 569], [634366, 582], [3523553, 569], [6203788, 528], [2954451, 593], [4601403, 554], [5509026, 587], [506529, 551]]
        OC_4=randint(0,9)
        ind_var4=choice(["proportion of testers", "population of the state"])
        point_x=prop[OC_4][0]
        point_y=prop[OC_4][1]
        if ind_var4=="population of the state":
            point_x=pop[OC_4][0]
            point_y=pop[OC_4][1]

        return {
            "number_2":number_2,
            "answer_2":"{:.2f}".format(answer_2),
            "pop_3":pop_3,
            "ind_var4":ind_var4,
            "point_x":"{:.2f}".format(point_x),
            "point_y":point_y,
            
            }
