class Generator(BaseGenerator):
    def data(self):
        T = RealDistribution('gaussian', 1)
        htt=0
        p0dec=12
        CL=choice([90, 95, 99])
        n=6000
        r=uniform(.145,.175)
        s=randint(5500, 6500)
        if htt==0:
            direction="is not equal to"
            ineqsymb="neq"
        if htt==1:
            direction="is greater than"
            ineqsymb="gt"
        if htt==2:
            direction="is less than"
            ineqsymb="lt"
        
        z = T.cum_distribution_function_inv(1-((100-CL)/200))
        alpha1=numerical_approx((100-CL)/100)
        alpha=float("{:.2f}".format(alpha1))
        p0=p0dec*.01
        pvalue=0
    
        while(pvalue<0.008 or pvalue>0.12):
            if htt==0:
                x=randint(100,s-60)
            if htt==1:
                x=randint(ceil(s*p0),s-15)
            if htt==2:
                x=randint(15,s)
            phat1=numerical_approx(x/s)
            phat=float("{:.4f}".format(phat1))
            SE_c=numerical_approx(sqrt(phat1*(1-phat1)/s))
            SE1=float("{:.4f}".format(SE_c))
            SE_h=numerical_approx(sqrt(p0*(1-p0)/s))
            zscore=(phat1-p0)/SE_h
            if htt==0:
                pvalue=(1-(T.cum_distribution_function(abs(zscore))))*2
            if htt==1:
                pvalue=1-T.cum_distribution_function(zscore)
            if htt==2:
                pvalue=T.cum_distribution_function(zscore)
            
        LB1=numerical_approx(phat1-z*SE_c)
        LB=float("{:.4f}".format(LB1))
        LB_p=LB*100
        UB1=numerical_approx(phat1+z*SE_c)
        UB=float("{:.4f}".format(UB1))
        UB_p=UB*100
        conclusion="fail to reject"
        if pvalue<alpha:
            conclusion="reject"
        context="the claim is NOT supported"
        if conclusion=="reject":
            context="the claim is supported"
            
        return {
        "CL":CL,
        "p0dec":p0dec,
        "n":n,
        "s":s,
        "x":x,
        "alpha":alpha,
        "pvalue":round((pvalue),3),
        "p0dec":p0dec,
        "p0":p0,
        "phat1":phat1,
        "phat":phat,
        "SE_c":SE_c,
        "SE1":SE1,
        "htt":htt,
        "direction":direction,
        "ineqsymb":ineqsymb,
        "conclusion":conclusion,
        "context":context,
        "UB":UB,
        "LB":LB,
        "LB_p":"{:.2f}".format(LB_p),
        "UB_p":"{:.2f}".format(UB_p),
    }