class Generator(BaseGenerator):
    def data(self):
        foot=randint(1000, 3775)
        answer_2=283.09*foot - 113509.75
        number_3=randint(1,4)
        size=[[2371, 795000], [1850, 399000], [768, 325000], [3000, 645000], [1131, 219000], [1687, 260000], [1410, 299000], [3474, 890000], [1900,259000], [2100, 266800]]
        room=[[2, 192900], [4, 375000], [2, 199000], [1, 99000], [4, 599000], [4, 469000], [4, 215000], [2, 109900], [3, 364450], [3, 219900]]
        ind_var4=choice(["sqft", "bedrooms"])
        OC_4=randint(0,9)
        point_x=size[OC_4][0]
        point_y=size[OC_4][1]
        if ind_var4=="bedrooms":
            point_x=room[OC_4][0]
            point_y=room[OC_4][1]

        return {
            "foot":foot,
            "answer_2":"{:.2f}".format(answer_2),
            "number_3":number_3,
            "ind_var4":ind_var4,
            "point_x":point_x,
            "point_y":point_y,
            
        }
