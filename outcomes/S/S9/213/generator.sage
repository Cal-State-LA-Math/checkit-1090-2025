class Generator(BaseGenerator):
    def data(self):
        set_up="See's Candies is noticing that more dark chocolate candy has been purchased over the last year as compared to previous years. They hire a consultant to determine what proportion of people who purchase See's candy prefer dark chocolate."
        pop_var="See's candy purchasers"
        success="prefer dark chocolate and the remainder prefer a different type of chocolate."
        CL=choice([90, 95, 99])
        prose="See's Candy purchasers who prefer dark chocolate"
        claim1="The head of marketing for See's Candy claims that"
        direction=choice(["at least", "no more than"])
        claim2="of people prefer dark chocolate. Does your confidence interval provide evidence that the head of marketing for See's Candy is correct? Provide an argument based on your calculations that it does or does not provide such evidence"
        n=randint(1500,2000)
        c=randint(35,45)
        r=uniform(0.65,0.75)
        s=0
        for i in range(n):
            d=random()
            if d<r:
                s=s+1
        p=uniform(.2,.4)
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
            "LB":LB,
            "UB":UB,
            "LB_p":LB_p,
            "UB_p":UB_p,
            "claimtrue":claimtrue,
            
        }
