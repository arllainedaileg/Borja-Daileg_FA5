# ==========================================
# FA 5 LINEAR MODELS
# Palmer Penguins Dataset
# ==========================================

# 1. Import data
# Ensure your working directory is set to the location containing the "data" folder
penguins <- read.csv("/Users/rachelleborja/Downloads/data/penguins.csv")

# 2. Data preparation
penguins_clean <- subset(
  penguins,
  !is.na(body_mass_g) &
    !is.na(species) &
    !is.na(sex)
)

penguins_clean$species <- factor(penguins_clean$species)
penguins_clean$sex <- factor(penguins_clean$sex)

# 3. Descriptive statistics
summary(penguins_clean)
aggregate(body_mass_g ~ species, data = penguins_clean, mean)
aggregate(body_mass_g ~ sex, data = penguins_clean, mean)
aggregate(body_mass_g ~ species + sex, data = penguins_clean, mean)

# 3.1 Export Figure 1: Boxplot
png("boxplot_body_mass.png", width = 800, height = 600, res = 120)
boxplot(body_mass_g ~ sex * species, 
        data = penguins_clean,
        col = c("pink", "lightblue"),
        main = "Body Mass by Species and Sex",
        xlab = "Sex.Species",
        ylab = "Body Mass (g)")
dev.off() # Closes the plotting device and saves the file

# 4. One-Way ANOVA
oneway_model <- aov(
  body_mass_g ~ species,
  data = penguins_clean
)
print("--- One-Way ANOVA Summary ---")
summary(oneway_model)

# 5. Dummy-variable regression
dummy_model <- lm(
  body_mass_g ~ species,
  data = penguins_clean
)
print("--- Dummy-Variable Regression Summary ---")
summary(dummy_model)

# 6. Two-Way ANOVA with interaction
twoway_model <- aov(
  body_mass_g ~ species * sex,
  data = penguins_clean
)
print("--- Two-Way ANOVA Summary ---")
summary(twoway_model)

# 7. Full regression model
full_model <- lm(
  body_mass_g ~ species * sex,
  data = penguins_clean
)
print("--- Full Regression Model Summary ---")
summary(full_model)
print("--- Full Regression Model ANOVA ---")
anova(full_model)

# 8. Export Figure 2: Interaction plot
png("interaction_plot.png", width = 800, height = 600, res = 120)
interaction.plot(
  x.factor = penguins_clean$species,
  trace.factor = penguins_clean$sex,
  response = penguins_clean$body_mass_g,
  fun = mean,
  type = "b",
  xlab = "Penguin Species",
  ylab = "Mean Body Mass (g)",
  trace.label = "Sex",
  main = "Interaction Plot of Body Mass by Species and Sex" 
)
dev.off() # Closes the plotting device and saves the file