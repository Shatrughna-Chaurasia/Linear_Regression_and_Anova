#P1
install.packages("openxlsx")
library(openxlsx)
library(readxl)
library(xlsx)
file_path <- "C:/Users/Shatrughna/Desktop/SEM3/Linear regression/LRA441_221417/221417.csv"
Data_exp  = read.csv(file_path)
Data_exp

#P2
y = Data_exp$Y;y
x1 = Data_exp$x1
x2 = Data_exp$x2

ys = y^2;ys
x1s = x1^2;x1s
x2s = x2^2;x2s
E_Data_1 = matrix(data = c(ys,x1s,x2s),6,3);E_Data_1
E_Data_1 = data.frame(ys,x1s,x2s);E_Data_1
output_file = "Lab1_file1_export.xlsx"
write.xlsx(E_Data_1,output_file, sheetName = "Sheet1", colnames = TRUE, row.names = FALSE)
#P3
X = matrix(c(98,89,78,35,105,102,34,54,65,87,54,65),6,2);X
Y = matrix(c(200,254,342,256,342,345),6,1);Y
beta = (solve(t(X)%*%X))%*%(t(X)%*%Y)
#P4
summary(lm(y~ x1 +x2))
