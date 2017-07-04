###############
## Functions ##
###############

## What are the elements of writing a named function?

## What does the following code do?
thing = list()
for (i in 1:10){
  thing[[i]] = mean(data[, i])
}

## What about this line of code?
thing = lapply(data, mean)


#############
## ggplot2 ##
#############

## Let's practice with ggplot2 :)
## Take a look at the office data set (long or wide) and think of how you
## could present the data informatively. Then answer these questions:
## 1. What type of plot do you want to make?
## 2. What does the data need to look like to get it ready for this plot
##    (i.e., what format does it need to be in)?
## 3. What R code would you use to make it?

## What would you expect this plot to look like?
ggplot(summed_data, aes(x = time, y = mean, 
                        group = gender, 
                        fill = gender,
                        color = gender)) +
  geom_bar(stat = "identity") +
  geom_errorbar(aes(ymin = mean - se, ymax = mean + se))

