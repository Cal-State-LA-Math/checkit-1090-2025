class Generator(BaseGenerator):
    def data(self):
        htt=1
        T = RealDistribution('gaussian', 1)
        p0dec=1
        n=5000
        r=uniform(.45,.55)
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
        p0=p0dec*.52
        pvalue=0
        while(pvalue<0.02 or pvalue>0.08):
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
            context="the head of marketing's claim is NOT supported"
            if conclusion=="reject":
                context="the head of marketing's claim is supported"

        return {
        "p0dec":p0dec,
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
