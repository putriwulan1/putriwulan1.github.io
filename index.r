# Export Data ke R
data<-read.table("https://online.stat.psu.edu/onlinecourses/sites/stat501/files/data/bluegills.txt", header = TRUE, skipNul = TRUE)

# Diagram Pencar
plot(data$age, data$length)

# Analisis Regresi Tanpa Transformasi Data
summary(lm(length ~ age, data = data))

# Transformasi Data
data$age_p2 <- data$age^2

# Analisis Regresi Dengan Transformasi Data
summary(lm(length ~ age + age_p2, data = data))
