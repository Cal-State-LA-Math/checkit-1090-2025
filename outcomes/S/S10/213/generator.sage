class Generator(BaseGenerator):
    def data(self):
        htt=2
        T = RealDistribution('gaussian', 1)
        p0dec=70
        set_up="A nationwide study of parents of high school students revealed that 70% think that their kids are vaping. A local psychology group thinks that way fewer kids are vaping and that the hype about vaping is excessive."
        pop_var="local high school students"
        success="said that they vape."
        person="lead psychologist"
        claim1="the percentage of high school students that vape"
        n=randint(500, 750)
        r=uniform(.7,.8)
        s=0
        for i in range(n):
            d=random()
            if d<r:
                s=s+1
        if htt==0:
            direction="is not equal to"
            ineqsymb="neq"
        if htt==1:
            direction="is greater than"
            ineqsymb="gt"
        if htt==2:
            direction="is less than"
            ineqsymb="lt"
        p0=p0dec*.01
        pvalue=0
        while(pvalue<0.01 or pvalue>0.1):
            if htt==0:
                x=randint(20,s-20)
            if htt==1:
                x=randint(ceil(s*p0),s-20)
            if htt==2:
                x=randint(20,s)
            phat1=numerical_approx(x/s)
            phat=float("{:.3f}".format(phat1))
            SE=numerical_approx(sqrt(p0*(1-p0)/s))
            zscore=(phat1-p0)/SE
            if htt==0:
                pvalue=(1-(T.cum_distribution_function(abs(zscore))))*2
            if htt==1:
                pvalue=1-T.cum_distribution_function(zscore)
            if htt==2:
                pvalue=T.cum_distribution_function(zscore)
            conclusion="fail to reject"
            if pvalue<.05:
                conclusion="reject"
            context="the claim is NOT supported"
            if conclusion=="reject":
                context="the claim is supported"

        return {
        "set_up":set_up,
        "pop_var":pop_var,
        "success":success,
        "claim1":claim1,
        "p0dec":p0dec,
        "person":person,
        "n":n,
        "s":s,
        "x":x,
        "pvalue":round((pvalue),4),
        "p0dec":p0dec,
        "p0":p0,
        "phat1":phat1,
        "phat":phat,
        "SE":SE,
        "htt":htt,
        "direction":direction,
        "ineqsymb":ineqsymb,
        "conclusion":conclusion,
        "context":context,
            
        }
