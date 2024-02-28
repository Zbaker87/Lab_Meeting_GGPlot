#### CONTENTS ####
# The following script works though: 
# 1) R packages
# 2) Basic ggplot examples
# 3) Additional package suggestions
#
#### 1 | R Packages ####
# An R package is a collection of code (functions) designed to perform a
# particular task (or set of tasks). When you download and install R there are
# several "base" packages that are installed with the base version of R, but
# many tasks (e.g. advanced statistics, graphing, data management) require or
# are helped by additional packages that can be downloaded directly in R Studio.
#
# Before a package can be used, it must first be downloaded and then loaded.
# This process can be done from the packages tab in RStudio, or in line with
# the code that follows:

install.packages("tidyverse")   #installs the package "tidyverse"
library(tidyverse)              #loads the package "tidyverse" (which includes
                                #   the "ggplot2" package that will be used
                                #   below)
#
#### 2 | ggplot package ####
data("iris")  #load the example dataset "iris"

ggplot(data=iris,aes(x=Sepal.Length,y=Sepal.Width)) +   #build the (blank) base plot
  geom_point(size=3, color="red") +                     #add points (with specific size and color)
  labs(x="Sepal Length",y="Sepal Width")                #make better x/y axis labels

# ggplot is nearly infinitely flexible. For example, you can also:
#  - add lines with the geom_line function
#  - create bar graphs with the geom_bar (or geom_column) function
#  - add means and error bars with the geom_errorbar function
#  - adjust a variety of graphing parameters with the theme function
# 
# further information on the ggplot2 package can be found here: 
#               https://ggplot2.tidyverse.org/

#### 3 | additional suggested packages ####