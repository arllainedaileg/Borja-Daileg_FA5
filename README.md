### Title: FA 5 – Linear Models

#### Group Members
- Rachelle Erika Borja
- Kristine Arllaine Daileg

#### Research Question

Does penguin body mass differ according to species and sex, and does the effect of species on body mass depend on sex?

#### Dataset Description

This project uses the Palmer Penguins dataset. The analysis focuses on penguin body mass as the response variable and species and sex as categorical explanatory variables.

The cleaned dataset contains 333 observations after removing observations with missing values for body mass, species, or sex.

#### Dataset Source

Palmer Penguins dataset developed from research conducted on penguins in the Palmer Archipelago of Antarctica.

Dataset repository:
https://github.com/allisonhorst/palmerpenguins

CSV file:
https://raw.githubusercontent.com/allisonhorst/palmerpenguins/main/inst/extdata/penguins.csv

#### Variables Used
Variable	Type	Description

body_mass_g     Quantitative	        Penguin body mass in grams

species       	Categorical	          Adelie, Chinstrap, Gentoo

sex	            Categorical	          Female, Male


#### Statistical Methods
The following statistical methods were used:
1. Data preparation and exploratory data analysis
2. Descriptive statistics
3. One-Way ANOVA to examine differences in body mass across species
4. Dummy-variable regression using species as a categorical predictor
5. Two-Way ANOVA to examine the effects of species, sex, and their interaction
6. Interaction analysis to determine whether the effect of species depends on sex
7. Full regression model with the species * sex interaction
8. Visualization using a boxplot and a species × sex interaction plot

#### Brief Summary of Findings

The analysis provides strong evidence that penguin body mass differs by species and sex. The Two-Way ANOVA found statistically significant main effects for species and sex, as well as a statistically significant Species × Sex interaction (p = 0.000197).

The observed male–female body-mass differences vary across species:

**- Adelie:** approximately 675 g

**- Chinstrap:** approximately 412 g

**- Gentoo:** approximately 805 g

Thus, males are heavier than females across all three species, but the size of the sex difference changes depending on species. Gentoo has the widest male–female gap, while Chinstrap has the narrowest.
The full regression model explains approximately **85.46%** of the variation in body mass (R² = 0.8546).

#### Instructions for Reproducing the Analysis
