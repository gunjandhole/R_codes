base_dir = "D:/Gunjan/Source_codes/R_codes/ML_prac"

#load data from iris
data(iris)

#to load the list of datasets
#library(help=datasets)

#to summarize iris data and getting the values
#print(iris$Sepal.Length)

sumry <- summary(iris)
few_rec <- head(iris)

# write summary to the file
write.table(sumry, file = paste0(base_dir, "/iris_anali/output.txt", collapse = NULL),
 append = TRUE, sep = "\t")
# write few Records to the file
write.table(few_rec, file = paste0(base_dir, "/iris_anali/output.txt", collapse = NULL), append = TRUE, quote = TRUE, sep = "\t",
            eol = "\n", na = "NA", dec = ".", row.names = TRUE,
            col.names = TRUE, qmethod = c("escape", "double"))

library(RColorBrewer)
#perform some visualization over IRIS data
#create a histogram Data
png(paste0(base_dir, '/Plots/Training_data_01.png', collapse = NULL), width = 500, height = 500, pointsize = 12)
par(mfrow = c(2, 2))
hist_info <- hist(iris$Sepal.Length, col = brewer.pal(3, "Set3"), xlab = "Sepal Length", breaks = 10, main = "Sepal Length Distri")
hist_info <- hist(iris$Sepal.Width, col = brewer.pal(3, "Set3"), xlab = "Sepal Width", breaks = 10, main = "Sepal Width Distri")
hist_info <- hist(iris$Petal.Length, col = brewer.pal(3, "Set3"), xlab = "Petal Length", breaks = 10, main = "Petal Length Distri")
hist_info <- hist(iris$Petal.Width, col = brewer.pal(3, "Set3"), xlab = "Petal Width", breaks = 10, main = "Petal Width Distri")
dev.off()

#Create a box plot
png(paste0(base_dir, '/Plots/Training_data_02.png', collapse = NULL), width = 500, height = 500, pointsize = 12)
par(mfrow = c(2, 2))
boxplot(iris$Sepal.Length ~ iris$Species, main = "Sepal Length", col = heat.colors(3))
boxplot(iris$Petal.Length ~ iris$Species, main = "Petal Length", col = heat.colors(3))
dev.off()

#create a scatter plot
png(paste0(base_dir, '/Plots/Training_data_04.png', collapse = NULL), width = 500, height = 500, pointsize = 12)
par(mfrow = c(2, 1))
plot(iris$Sepal.Length, iris$Sepal.width, main = "Scatterplot for Sepals", xlab = "Sepal Length", ylab = "Sepal Width", pch = 19, col = c("red", "green", "blue")[unclass(iris$Species)])
plot(iris$Petal.Length, iris$Petal.width, main = "Scatterplot for Petals", xlab = "Petal Length", ylab = "Petal Width", pch = 19, col = c("red", "green", "blue")[unclass(iris$Species)])
dev.off()

png(paste0(base_dir, '/Plots/Training_data_05.png', collapse = NULL), width = 700, height = 700, pointsize = 12)
plot(iris, col = brewer.pal(3, "Set1"))
dev.off()