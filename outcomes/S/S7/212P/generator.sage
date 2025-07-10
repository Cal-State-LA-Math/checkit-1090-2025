class Generator(BaseGenerator):
    def data(self):
        AA=randint(1,3)
        BB=randint(1,4)
        OC2=randint(1,4)
        OC3=randint(1,3)
        OC4_a=randint(1,4)
        OC4_b=randint(1,3)
        OC5_a=randint(1,3)
        OC5_b=randint(1,4)
        while(OC4_a==OC5_b):
            OC5_b=randint(1,4)
        while(OC4_b==OC5_a):
            OC5_a=randint(1,3)
        title_row=[["Medals"], ["USA"], ["Russia"], ["Canada"], ["Austria"], ["Total"]]
        title_col=[["Medals"], ["Gold"], ["Silver"], ["Bronze"]]
        var=title_row[0][0]
        choice1=title_row[1][0]
        choice2=title_row[2][0]
        choice3=title_row[3][0]
        choice4=title_row[4][0]
        choice5=title_row[5][0]
        dep_row1=[[title_col[1][0]], [randint(12, 22)], [randint(20, 30)], [randint(5, 15)], [randint(7, 17)]]
        dep_var1=dep_row1[0][0]
        dep_var1_1=dep_row1[1][0]
        dep_var1_2=dep_row1[2][0]
        dep_var1_3=dep_row1[3][0]
        dep_var1_4=dep_row1[4][0]
        dep_var1_5a=dep_row1[4][0]+dep_row1[3][0]+dep_row1[2][0]+dep_row1[1][0]
        dep_var1_5=dep_var1_5a
        if AA==1:
            dep_var1_5="A"
        dep_row2=[[title_col[2][0]], [randint(15, 25)], [randint(16, 26)], [randint(10, 20)], [randint(8, 18)]]
        dep_var2=dep_row2[0][0]
        dep_var2_1=dep_row2[1][0]
        dep_var2_2=dep_row2[2][0]
        dep_var2_3=dep_row2[3][0]
        dep_var2_4=dep_row2[4][0]
        dep_var2_5a=dep_row2[4][0]+dep_row2[3][0]+dep_row2[2][0]+dep_row2[1][0]
        dep_var2_5=dep_var2_5a
        if AA==2:
            dep_var2_5="A"
        dep_row3=[[title_col[3][0]], [randint(20, 30)], [randint(6, 16)], [randint(11, 21)], [randint(4, 14)]]
        dep_var3=dep_row3[0][0]
        dep_var3_1=dep_row3[1][0]
        dep_var3_2=dep_row3[2][0]
        dep_var3_3=dep_row3[3][0]
        dep_var3_4=dep_row3[4][0]
        dep_var3_5a=dep_row3[4][0]+dep_row3[3][0]+dep_row3[2][0]+dep_row3[1][0]
        dep_var3_5=dep_var3_5a
        if AA==3:
            dep_var3_5="A"
        total_row=[["Total"], [dep_var1_1 + dep_var2_1 + dep_var3_1], [dep_var1_2 + dep_var2_2 + dep_var3_2], [dep_var1_3 + dep_var2_3 + dep_var3_3], [dep_var1_4 + dep_var2_4 + dep_var3_4], [dep_var1_5a + dep_var2_5a + dep_var3_5a]]
        total_col=[[""], [dep_var1_5a], [dep_var2_5a], [dep_var3_5a]]
        total_title=total_row[0][0]
        total_1=total_row[1][0]
        if BB==1:
            total_1="B"
        total_2=total_row[2][0]
        if BB==2:
            total_2="B"
        total_3=total_row[3][0]
        if BB==3:
            total_3="B"
        total_4=total_row[4][0]
        if BB==4:
            total_4="B"
        total_5=total_row[5][0]
        answer_a=total_col[AA][0]
        answer_b=total_row[BB][0]
        answer_c=total_row[5][0]
        place1=title_row[OC2][0]
        answer2_n=total_row[OC2][0]
        answer2=round((answer2_n/answer_c),4)
        color1=title_col[OC3][0]
        answer3_n=total_col[OC3][0]
        answer3=round((1-(answer3_n/answer_c)),4)
        place2=title_row[OC4_a][0]
        color2=title_col[OC4_b][0]
        answer4_n=dep_row1[OC4_a][0]
        if OC4_b==2:
            answer4_n=dep_row2[OC4_a][0]
        if OC4_b==3:
            answer4_n=dep_row3[OC4_a][0]
        answer4_d=total_row[OC4_a][0]
        answer4=round((answer4_n/answer4_d),4)
        color3=title_col[OC5_a][0]
        place3=title_row[OC5_b][0]
        answer5_n=dep_row1[OC5_b][0]
        if OC5_a==2:
            answer5_n=dep_row2[OC5_b][0]
        if OC5_a==3:
            answer5_n=dep_row3[OC5_b][0]
        answer5_d=total_col[OC5_a][0]
        answer5=round((answer5_n/answer5_d),4)
        
        return {
            "var":var,
            "choice1":choice1,
            "choice2":choice2,
            "choice3":choice3,
            "choice4":choice4,
            "choice5":choice5,
            "dep_var1":dep_var1,
            "dep_var1_1":dep_var1_1,
            "dep_var1_2":dep_var1_2,
            "dep_var1_3":dep_var1_3,
            "dep_var1_4":dep_var1_4,
            "dep_var1_5":dep_var1_5,
            "dep_var2":dep_var2,
            "dep_var2_1":dep_var2_1,
            "dep_var2_2":dep_var2_2,
            "dep_var2_3":dep_var2_3,
            "dep_var2_4":dep_var2_4,
            "dep_var2_5":dep_var2_5,
            "dep_var3":dep_var3,
            "dep_var3_1":dep_var3_1,
            "dep_var3_2":dep_var3_2,
            "dep_var3_3":dep_var3_3,
            "dep_var3_4":dep_var3_4,
            "dep_var3_5":dep_var3_5,
            "total_title":total_title,
            "total_1":total_1,
            "total_2":total_2,
            "total_3":total_3,
            "total_4":total_4,
            "answer_a":answer_a,
            "answer_b":answer_b,
            "answer_c":answer_c,
            "place1":place1,
            "answer2_n":answer2_n,
            "answer2":answer2,
            "color1":color1,
            "answer3_n":answer3_n,
            "answer3":answer3,
            "place2":place2,
            "color2":color2,
            "answer4_n":answer4_n,
            "answer4_d":answer4_d,
            "answer4":answer4,
            "color3":color3,
            "place3":place3,
            "answer5_n":answer5_n,
            "answer5_d":answer5_d,
            "answer5":answer5,
        }