class Generator(BaseGenerator):
    def data(self):
        set_up="Toy companies are interested in knowing the percentage of households in the population that have children under the age of 10."
        pop_var="households"
        success="of the households had children under the age 10 in them."
        CL=choice([90, 95, 99])
        prose="households that have children under the age of 10 in them"
        claim1="The head of marketing for a toy company claims that"
        direction=choice(["at least", "no more than"])
        claim2="of households have children under the age of 10 in them. Does your confidence interval provide evidence that the head of marketing is correct? Provide an argument based on your calculations that it does or does not provide such evidence"
        n=randint(500,750)
        c=randint(45,55)
        r=uniform(0.65,0.75)
        s=0
        for i in range(n):
            d=random()
            if d<r:
                s=s+1
        p=uniform(.47,.53)
        x=0
        for i in range(s):
            b=random()
            if b<p:
                x=x+1

        
        T = RealDistribution('gaussian', 1)
        z = T.cum_distribution_function_inv(1-((100-CL)/200))
    
        phat1=numerical_approx(x/s)
        phat=float("{:.4f}".format(phat1))
        SE1=numerical_approx(sqrt(phat*(1-phat)/s))
        SE=float("{:.4f}".format(SE1))
        LB1=numerical_approx(phat-z*SE)
        LB=float("{:.4f}".format(LB1))
        UB1=numerical_approx(phat+z*SE)
        UB=float("{:.4f}".format(UB1))
        LB_p="{:.2%}".format(LB)
        UB_p="{:.2%}".format(UB)
    
        claimtrue="does not support"
        if c/100<LB and direction=="at least":
            claimtrue="does support"
        if c/100>UB and direction=="no more than":
            claimtrue="does support"
        return {
            "set_up":set_up,
            "pop_var":pop_var,
            "success":success,
            "CL":CL,
            "prose":prose,
            "claim1":claim1,
            "claim2":claim2,
            "direction":direction,
            "n":n,
            "s":s,
            "x":x,
            "c":c,
            "phat":phat,
            "SE":SE,
            "LB":"{:.4f}".format(LB),
            "UB":"{:.4f}".format(UB),
            "LB_p":LB_p,
            "UB_p":UB_p,
            "claimtrue":claimtrue,
            
            }
