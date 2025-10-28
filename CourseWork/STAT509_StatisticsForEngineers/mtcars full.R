Y - mpg           x's - all variables 

mpg   - miles/gallon
cyl   - number of cylinders
disp  - displacement (cu.in.)
hp    - horsepower
drat  - rear axle ratio
wt    - weight (in 1000s)
qsec  - quarter-mile time 
vs    - engine cylinder configuration (0 = V-shaped, 1 = straight)
am    - transmission type (0 = automatic, 1 = manual)
gear  - number of forward gears
carb  - number of carburetor barrels

1. visually determine if each predictor seems related to mpg and for the continuous predictors
   determine if perhaps a higher-order relationship exists.

Each predictor seems related to mpg. Higher-order relationships do seem to exist for the continuous predictors since the data changes if the function is true or false.

2. fit a multiple linear regression model with all predictors and any relavent higher-order terms.

Intercept = 3.027e+01
disp = -6.680e-03
hp = -8.415e-02
wt = -1.030e+01
vs = -6.513e-01
am = -2.656e-01
carb = -6.815e-01
I(hp^2) = 1.765e-04
I(wt^2) = 1.021e+00

3. Determine which model you believe to be best: If multiple predictors are insignificant drop them 
   one at a time and use adjusted R^2 as a measure of the impact on the model. Diagnostic plots can also
   be used to help choose between models. AIC and BIC (not discussed) are very useful for model selection.

Residuals vs Fitted model doesn't seem too good. Not linear, but not a parabola.
Q-Q Residuals is much better. The line is straight.
Scale-Location is similar to the Residuals vs Fitted model graph.
Therefore, I believe the Q-Q Residuals graph is the best looking.

4. Interpret regression coefficients in the chosen model which have meaning.

disp = -6.68034e-03
hp = -8.415423e-02
wt = -1.030429e+01
vs = -6.512840e-01
am = -2.656476e-01
carb = -6.815289e-01
I(hp^2) = 1.764581e-04
I(wt^2) = 1.021167e+00

5. Interpret R^2 for your model

0.8436948

6. Try to predict the mpg for your vehicle. Did the model predict well??

I inputted a sample data: cyl = 6, disp = 160, hp = 110, drat = 3.9, wt = 2.62, qsec = 16.46, vs = 0, am = 1, gear = 4, carb = 4
The predicted value for this data is 21.70079.
When compared to the rest of the data gotten, this prediction does not seem well.



