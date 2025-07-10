class Generator(BaseGenerator):
    def data(self):
        T = RealDistribution('gaussian', 1)
        htt=0
        p0dec=randint(75, 85)
        set_up="The Georgia state legislature is considering running their upcoming Senate runoff as a vote by mail only election. The legislators have asked the Election board to commission a study to determine, with"
        set_up2="of voters will support a vote by mail only election. The Election board surveys a sample of Georgia voters."
        CL=choice([90, 95, 99])
        pop_var="registered voters"
        success="said they would support a vote by mail only election."
        set_up_B="After receiving the results of the study, the state legislature decides to do a vote by mail only election and issues a press release stating that"
        proseB="A local advocacy group is concerned about voter fraud or suppression and disagrees with the conclusion of the state legislature. It claims that the support from voters"
        person="the local advocacy group"
        claim1="would support a mail in only vote"
        n=randint(1900, 2500)
        r=uniform(.6,.7)
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
        
        z = T.cum_distribution_function_inv(1-((100-CL)/200))
        alpha1=numerical_approx((100-CL)/100)
        alpha=float("{:.2f}".format(alpha1))
        p0=p0dec*.01
        pvalue=0
    
        while(pvalue<0.008 or pvalue>0.15):
            if htt==0:
                x=randint(15,s-15)
            if htt==1:
                x=randint(ceil(s*p0),s-15)
            if htt==2:
                x=randint(15,s)
            phat1=numerical_approx(x/s)
            phat=float("{:.3f}".format(phat1))
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
        LB_p="{:.2%}".format(LB)
        UB1=numerical_approx(phat1+z*SE_c)
        UB=float("{:.4f}".format(UB1))
        UB_p="{:.2%}".format(UB)
        conclusion="fail to reject"
        if pvalue<alpha:
            conclusion="reject"
        context="the claim is NOT supported"
        if conclusion=="reject":
            context="the claim is supported"
            
        return {
        "set_up":set_up,
        "set_up2":set_up2,
        "set_up_B":set_up_B,
        "pop_var":pop_var,
        "CL":CL,
        "success":success,
        "claim1":claim1,
        "p0dec":p0dec,
        "proseB":proseB,
        "person":person,
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
        "LB_p":LB_p,
        "UB_p":UB_p,
    }