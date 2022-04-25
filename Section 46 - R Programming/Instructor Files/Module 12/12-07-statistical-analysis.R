#### Statistical Analysis #### 

rides <- read_csv("ride_data.csv")
# Remember our questions from the beginning of the module??


# 1. Is there a significant difference between the number of pickups between any of
# the days of the week?


# ANOVA
weekday_anova <- aov(Total ~ factor(dayofweek), data=per_day_totals)
summary(weekday_anova)

# slightly significant difference!
# But the question is now, where is that difference

tukey_week <- TukeyHSD(weekday_anova)
tukey_df <- as.data.frame(tukey_week$dayofweek)
tukey_df[tukey_df$p.adj < 0.05]


# 2. Is there a significant difference between any hour of the day? 
hourly_anova <- aov(Total ~ factor(hour), data=per_hour_totals)
summary(hourly_anova)

# Highly Significant difference - but where?

tukey_hour <- TukeyHSD(hourly_anova)
tukey_df_hour <- data.frame(tukey_hour$`factor(hour)`)
names <- rownames(tukey_df_hour)[tukey_df_hour$p.adj < 0.05]
p_values <- tukey_df_hour$p.adj[tukey_df_hour$p.adj < 0.05]
significant <- tibble(names, p_values)
significant

# What about your questions? Any thoughts on how to answer those? 

