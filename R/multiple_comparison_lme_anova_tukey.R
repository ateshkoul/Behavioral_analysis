lme_velocity = lme(Velocity ~ Material, data=scrd, random = ~1|Subject)
anova(aov_velocity)

require(multcomp)
summary(glht(lme_velocity, linfct=mcp(Material = "Tukey")), test = adjusted(type = "bonferroni"))