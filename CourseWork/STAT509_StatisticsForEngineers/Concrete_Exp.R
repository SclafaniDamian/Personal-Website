#integrity score (Y), concrete thickness (inches), 
#water (Indicator variable for if it was added), temperature

data = read.csv("E:\\Teaching\\Stat 509\\Exp Data\\concrete_exp_data.csv")[,-1]
attach(data)

plot(concrete,integrity)
plot(water,integrity)
plot(temperature,integrity)

#Model1 (Model2 below)
reg.model1 = lm(integrity~concrete+water+temperature)
summary(reg.model1)
plot(reg.model1)













#Model2
reg.model2 = lm(integrity~concrete+water+temperature+concrete*water)
summary(reg.model2)
plot(reg.model2)



##how the data was generated
#integrity = rep(0,100)
#concrete = runif(100,1,10)
#water = rbinom(100,1,.5)
#temperature = rnorm(100,50,3)
#for(i in 1:100){integrity[i] = 10+3*concrete[i]*water[i]+.2*temperature[i]+rnorm(1)}

