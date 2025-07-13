class Generator(BaseGenerator):
    def data(self):
        CL=choice([90, 95, 99])
        prose="U.S. adults that support a federal policy to ban the construction of new fossil fuel power plants in favor of renewable energy sources"
        claim1="A candidate for the U.S. senate claims that"
        direction="at least"
        claim2="of Americans support banning new fossil fuel plants being constructed."
        n=randint(4500,5500)
        c=65
        r=uniform(0.60,0.71)
        s=randint(4500,5500)
        p=p=uniform(.64,.70)
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
        LB_p=LB*100
        UB_p=UB*100
    
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
            "LB_p":"{:.2f}".format(LB_p),
            "UB_p":"{:.2f}".format(UB_p),
            "claimtrue":claimtrue,
            
        }
