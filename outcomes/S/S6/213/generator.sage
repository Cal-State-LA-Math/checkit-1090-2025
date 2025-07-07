class Generator(BaseGenerator):
    def data(self):
        chest_2=randint(90, 105)
        answer_2=1.263*chest_2 - 51.96
        size_3=choice([randint(50,70), randint(130,165)])
        chest=[[100, 76], [95, 69], [112, 94], [93, 65], [102, 73], [101, 74], [89, 66], [87, 64], [99, 84], [106, 89]]
        head=[[58, 77], [60, 69], [59, 94], [55, 65], [59, 73], [60, 74], [57, 66], [58, 64], [56, 84], [58, 89]]
        OC_4=randint(0,9)
        ind_var4=choice(["chest", "head"])
        point_x=chest[OC_4][0]
        point_y=chest[OC_4][1]
        if ind_var4=="head":
            point_x=head[OC_4][0]
            point_y=head[OC_4][1]

        return {
            "chest_2":chest_2,
            "answer_2":"{:.2f}".format(answer_2),
            "size_3":size_3,
            "ind_var4":ind_var4,
            "point_x":point_x,
            "point_y":point_y,
        }
