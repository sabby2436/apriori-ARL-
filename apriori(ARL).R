library(arules)
dataset=read.csv('Market_Basket_Optimisation.csv',header = FALSE)
dataset=read.transactions('Market_Basket_Optimisation.csv', sep=',',
                          rm.duplicates=TRUE)

itemFrequencyPlot(dataset,topN=10)
itemFrequencyPlot(dataset,topN=100)

#applying apriori algorithm
rules=apriori(data=dataset,parameter = list(support=0.003,confidence=0.4))
inspect(sort(rules,by='lift')[1:10])