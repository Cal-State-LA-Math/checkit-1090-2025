class Generator(BaseGenerator):
    def data(self):
        AA=randint(1,3)
        BB=randint(1,4)
        OC2_a=randint(1,4)
        OC3_a=randint(1,3)
        OC3_b=randint(1,3)
        while(OC3_a==OC3_b):
            OC3_b=randint(1,3)
        OC4_a=randint(1,4)
        OC4_b=randint(1,3)
        OC5_a=randint(1,3)
        OC5_b=randint(1,4)
        OC5_c=randint(1,4)
        while(OC5_b==OC5_c):
            OC5_c=randint(1,4)
        title_row=[["Type of Home"], ["Northeast"], ["Midwest"], ["South"], ["West"], ["Total"]]
        title_col=[["Type of Home"],["Single Family"], ["Multi-Family Residential"], ["Multi-Family Commercial"]]
        var=title_row[0][0]
        choice1=title_row[1][0]
        choice2=title_row[2][0]
        choice3=title_row[3][0]
        choice4=title_row[4][0]
        choice5=title_row[5][0]
        dep_row1=[[title_col[1][0]], [randint(350, 650)], [randint(1000, 1300)], [randint(3000, 3300)], [randint(1900, 2200)]]
        dep_var1=dep_row1[0][0]
        dep_var1_1=dep_row1[1][0]
        dep_var1_2=dep_row1[2][0]
        dep_var1_3=dep_row1[3][0]
        dep_var1_4=dep_row1[4][0]
        dep_var1_5a=dep_row1[4][0]+dep_row1[3][0]+dep_row1[2][0]+dep_row1[1][0]
        dep_var1_5=dep_var1_5a
        if AA==1:
            dep_var1_5="A"
        dep_row2=[[title_col[2][0]], [randint(30, 60)], [randint(50, 80)], [randint(220, 250)], [randint(120, 150)]]
        dep_var2=dep_row2[0][0]
        dep_var2_1=dep_row2[1][0]
        dep_var2_2=dep_row2[2][0]
        dep_var2_3=dep_row2[3][0]
        dep_var2_4=dep_row2[4][0]
        dep_var2_5a=dep_row2[4][0]+dep_row2[3][0]+dep_row2[2][0]+dep_row2[1][0]
        dep_var2_5=dep_var2_5a
        if AA==2:
            dep_var2_5="A"
        dep_row3=[[title_col[3][0]], [randint(700, 730)], [randint(810, 840)], [randint(3100, 3150)], [randint(1020, 1050)]]
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
        region_1=title_row[OC2_a][0]
        answer2_n=total_row[OC2_a][0]
        answer2=round((answer2_n/answer_c),4)
        type1=title_col[OC3_a][0]
        type2=title_col[OC3_b][0]
        answer3_1n=total_col[OC3_a][0]
        answer3_2n=total_col[OC3_b][0]
        answer3=round(((answer3_1n +answer3_2n)/answer_c),4)
        region_2=title_row[OC4_a][0]
        type3=title_col[OC4_b][0]
        answer4_1n=dep_row1[OC4_a][0]
        if OC4_b==2:
            answer4_1n=dep_row2[OC4_a][0]
        if OC4_b==3:
            answer4_1n=dep_row3[OC4_a][0]
        answer4_d=total_col[OC4_b][0]
        answer4=round((answer4_1n/answer4_d),4)
        region_3=title_col[OC5_a][0]
        type4=title_row[OC5_b][0]
        answer5_1n=dep_row1[OC5_b][0]
        if OC5_a==2:
            answer5_1n=dep_row2[OC5_b][0]
        if OC5_a==3:
            answer5_1n=dep_row3[OC5_b][0]
        answer5_1d=total_row[OC5_b][0]
        answer5_1=round((answer5_1n/answer5_1d),4)
        region_4=title_row[OC5_c][0]
        answer5_2n=total_row[OC5_c][0]
        answer5_2=round(1-(answer5_2n/answer_c),4)
        
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
            "region_1":region_1,
            "answer2_n":answer2_n,
            "answer2":answer2,
            "type1":type1,
            "type2":type2,
            "answer3":answer3,
            "answer3_1n":answer3_1n,
            "answer3_2n":answer3_2n,
            "region_2":region_2,
            "type3":type3,
            "answer4_1n":answer4_1n,
            "answer4_d":answer4_d,
            "answer4":answer4,
            "region_3":region_3,
            "type4":type4,
            "answer5_1n":answer5_1n,
            "answer5_1d":answer5_1d,
            "answer5_1":answer5_1,
            "region_4":region_4,
            "answer5_2n":answer5_2n,
            "answer5_2":answer5_2,
            }