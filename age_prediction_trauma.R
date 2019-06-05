data <-read.csv(file = "behav_summary_trauma.csv")
temp <- data$age_at_cnb + data$residual 
cbind(temp, data$predicted_age)
dim(data)
length(unique(data$SUBJID))
str(data)
table(data$ptsd)
head(data)
hist(data$residual,breaks=20)
hist(data$pcet_acc2,breaks=20)
hist(data$pcpt_t_tp,breaks=20) # very skewed
hist(data$lnb_mcr,breaks=20)
hist(data$pwmt_kiwrd_tot,breaks=20) # very skewed
hist(data$pfmt_ifac_tot,breaks=20)
hist(data$volt_svt,breaks=20)
hist(data$pvrt_cr,breaks=20)
hist(data$pmat_cr,breaks=20)
hist(data$plot_tc,breaks=20)
hist(data$peit_cr,breaks=20)
hist(data$pedt_a,breaks=20)
hist(data$padt_a,breaks=20)
hist(data$mp_mp2rtcr,breaks=20)# has outliers
hist(data$tap_tot,breaks=20)

fit1 <-lm(residual ~ pcet_acc2+ pcpt_t_tp + lnb_mcr + pwmt_kiwrd_tot + pfmt_ifac_tot + volt_svt + pvrt_cr + pmat_cr + plot_tc + peit_cr + pedt_a + padt_a + mp_mp2rtcr + tap_tot, data=data)
summary(fit1)

fit2 <-lm(residual ~ pcet_acc2+pwmt_kiwrd_tot +volt_svt + pmat_cr  + padt_a , data=data)
summary(fit2)







