class Generator(BaseGenerator):
    def data(self):
        CL=choice([90, 95, 99])
        prose="U.S. adults that believe the minimum age for buying a gun should be rasied to 21 years old"
        claim1="One of the politicians considering running for President in the next presidential election believes that"
        direction=choice(["no more than","at least"])
        claim2="of U.S. adults believe that the minimum age for buying a gun should be raised to 21 years old."
        n=randint(8000,8999)
        c=70
        r=uniform(0.58,0.65)
        s=0
        for i in range(n):
            d=random()
            if d<r:
                s=s+1
        p=uniform(.65,.75)
        x=ceil(p*s)

        
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
            "CL":CL,
            "p":p,
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
