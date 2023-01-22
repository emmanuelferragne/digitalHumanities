#load data
dataMeaning<-read.table('meaningExample.txt', header=T, sep="\t")

#visualize table
head(dataMeaning)

#plot data using a scatterplot to see if shorter words
#have more definitions in dictionaries than longer words

plot(dataMeaning$length,dataMeaning$meanings)

# Visually, there seems to be a negative correlation which confirms our intuition. Now we’ve got to quantify the strength of this negative relationship, so I’m going to use the cor function to compute a correlation coefficient. 

cor(dataMeaning$length,dataMeaning$meanings)

cor.test(dataMeaning$length,dataMeaning$meanings)

