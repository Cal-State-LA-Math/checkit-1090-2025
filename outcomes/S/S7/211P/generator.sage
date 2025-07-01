class Generator(BaseGenerator):
    def data(self):
        AA=randint(1,3)
        BB=randint(1,4)
        OC=randint(1,3)
        OC3_a=randint(1,4)
        OC3_b=randint(1,4)
        OC4_a=randint(1,3)
        OC4_b=randint(1,4)
        while(OC3_a==OC3_b):
            OC3_b=randint(1,4)
        OC5_a=randint(1,4)
        while(OC4_b==OC5_a):
            OC5_a=randint(1,4)
        OC5_b=randint(1,3)
        title_row=[["Color of helmet"], ["Black"], ["White"], ["Red"], ["Yellow"], ["Total"]]
        title_col=[["Color of helmet"], ["Uninjured"], ["Injured"], ["Killed"]]
        var=title_row[0][0]
        choice1=title_row[1][0]
        choice2=title_row[2][0]
        choice3=title_row[3][0]
        choice4=title_row[4][0]
        choice5=title_row[5][0]
        dep_row1=[[title_col[1][0]], [randint(350, 500)], [randint(200, 400)], [randint(50, 250)], [randint(150, 350)]]
        dep_var1=dep_row1[0][0]
        dep_var1_1=dep_row1[1][0]
        dep_var1_2=dep_row1[2][0]
        dep_var1_3=dep_row1[3][0]
        dep_var1_4=dep_row1[4][0]
        dep_var1_5a=dep_row1[4][0]+dep_row1[3][0]+dep_row1[2][0]+dep_row1[1][0]
        dep_var1_5=dep_var1_5a
        if AA==1:
            dep_var1_5="A"
        dep_row2=[[title_col[2][0]], [randint(150, 250)], [randint(100, 200)], [randint(50, 150)], [randint(75, 175)]]
        dep_var2=dep_row2[0][0]
        dep_var2_1=dep_row2[1][0]
        dep_var2_2=dep_row2[2][0]
        dep_var2_3=dep_row2[3][0]
        dep_var2_4=dep_row2[4][0]
        dep_var2_5a=dep_row2[4][0]+dep_row2[3][0]+dep_row2[2][0]+dep_row2[1][0]
        dep_var2_5=dep_var2_5a
        if AA==2:
            dep_var2_5="A"
        dep_row3=[[title_col[3][0]], [randint(40, 80)], [randint(25, 65)], [randint(10, 30)], [randint(20, 35)]]
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
        outcome_2=title_col[OC][0]
        answer2_n=total_col[OC][0]
        answer2=round((answer2_n/answer_c),4)
        color1=title_row[OC3_a][0]
        color2=title_row[OC3_b][0]
        answer3_1n=total_row[OC3_a][0]
        answer3_2n=total_row[OC3_b][0]
        answer3=round(((answer3_1n+answer3_2n)/answer_c),4)
        hurt=title_col[OC4_a][0]
        color3=title_row[OC4_b][0]
        answer4_n=dep_row1[OC4_b][0]
        if OC4_a==2:
            answer4_n=dep_row2[OC4_b][0]
        if OC4_a==3:
            answer4_n=dep_row3[OC4_b][0]
        answer4_d=total_col[OC4_a][0]
        answer4=round((answer4_n/answer4_d),4)
        color4=title_row[OC5_a][0]
        hurt2=title_col[OC5_b][0]
        answer5_n=dep_row1[OC5_a][0]
        if OC5_b==2:
            answer5_n=dep_row2[OC5_a][0]
        if OC5_b==3:
            answer5_n=dep_row3[OC5_a][0]
        answer5_d=total_row[OC5_a][0]
        answer5=round((answer5_n/answer5_d),4)
        
        return {
            "AA":AA,
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
            "outcome_2":outcome_2,
            "answer2_n":answer2_n,
            "answer2":answer2,
            "color1":color1,
            "color2":color2,
            "answer3_1n":answer3_1n,
            "answer3_2n":answer3_2n,
            "answer3":answer3,
            "hurt":hurt,
            "color3":color3,
            "answer4_n":answer4_n,
            "answer4_d":answer4_d,
            "answer4":answer4,
            "color4":color4,
            "hurt2":hurt2,
            "answer5_n":answer5_n,
            "answer5_d":answer5_d,
            "answer5":answer5,
        }