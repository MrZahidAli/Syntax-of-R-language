#assigning value and printing value
a = 1      #using =
print(a)          #printing a
b <- a+2   #using <-
print(b)
4 -> a     #using ->
print(a)

#printing multiple data types
cat("value of a: ", a, "value of b: ", b)

#check data type of variable a

print(class(a))

#list all available variable at workspace

print(ls())

#usually variable name start with dot are not displayed with ls() 
#so use this command to show them too
print(ls(all.names = TRUE))

#print variable at workspace which includes letters 'za'
print(ls(pattern = 'za'))

#delete variable from workspace, a is variable
rm(a)

#to all variable on workspace
rm(list = ls())

#adding to vectors mean array

v <- c(2, 0, 4, 1)
d <- c(2, 14, 0, 11)
sum2 <- (v+d)
print(sum2)

#adding all elements of two arrays
sum4 <- sum(v,d)
print(sum4)

#adding all elements of one array
sum5 <- sum(v)
print(sum5)

#subtract arrays
print(d-v)

#multiply arrays element
print(d*v)

#devide elements of arrays
print(d/v)

#modules of two array's element
print(d%%v)   #reminder will be answer

#
print(d%/%v)  #quotient will be answer

#Relational Operators
print(d > v)
print(d < v)
print(d == v)
print(d >= v)
print(d <= v)
print(d != v)

#logical operator
print(d & v)
print(d | v)
print(!v)

#Left Assignment
a <- 3
a = 3
a <<- 3

#Right Assignment
3 -> a
3 ->> a

#Scan value
d <- 1:8
a <- 4
b <- a %in% d
print(b)

#Multiply matrix with its transpose
ma = matrix( c(1,2,3,4,5,6), nrow = 2,ncol = 3,byrow = TRUE)  #making matrix
tra = ma %*% t(ma)
print(tra)

#to check a is integer
a <- 10L  #L for integer data, integer is also numaric but numaric is not integer
is.integer(a)  #true if a is integer
is.numeric(a)   #true if a is numaric
is.character(a)  #true if a is characer


#if else condition
if(a<2){
  print("a is less than 2")
}else{
  print("a is greater")
}

#array
arr<-c(1,2,3,4,5)
print(arr)

#array from 1 to 4
arr<-1:4

#array from 4 to 1
arr<-4:1

#loop and continue
s<-"value in v"
v<-4:1              #v=4,3,2,1  array
for(c in v){        #c = 4,3,2,1 values from 4 to 1
  #print(s)
  if(c==2){
    next  #skipt 2
  }
  print (c)
}

#repeat and break mean do-while

r<-1
repeat{      #repeat 
  print(r)
  if(r==6){  #until condition match
    break       
  }
  r<-r+1
}

#while

w<-1         #starting value
while(w<3){  #condition
  print(w)
  w<-w+1     #incrementing
}

#procedure
a<-1
b<-2
c<-3
addThreeVlaues <- function(a, b, c){
  d<-a+b+c
  return(d)
}
d<-addThreeVlaues(a,b,c)
print(d)

#taking input from user as string into a
a<-readline()

#convert string or character into integer and store into b
b<- as.integer(a)

#creat list of diff data types and store in list1
list1 <- list(c(11,12,13,14), "zahid", sin, 2)
print(list1[[1]])           #printin first index data that is array
print(list1[[1]][2])        #printing the 2nd element of array

#creat matrix
ma <- matrix(c(2,3,4,5,6,7), nrow = 2,ncol = 3, byrow = TRUE)
print(ma)

#factors  create levels base of distinct values

arr<-c('red', 'green', 'blue', '1', '1', 'red')
fac<-factor(arr)
print(fac)
print(nlevels(fac))   #LEVELS

#data frame

fra <- data.frame(
  name = c('zahid ali', 'abdul samad', 'waleed', 'Riana'),
  age = c(20, 19, 19, 25),
  gender = c('male', 'male', 'male', 'female')
)
print(fra)

#switch
x <- switch(
  2,             #expression
  'zahid',     #case1
  'Ali',       #case2
  'sikander'   #case3
)
print(x)

#input from user in array using for loop
rm(list = ls())
arr<-
v <- 1:5
for (i in v) {
  arr[i] <- readline(prompt = "enter value: ")
}

#printing multiple strings

a<-"zahid"
b<-"ali"
c<-"raina"
print(paste(c,a,b,sep="-", collapse = ""))

#Formating

# Total number of digits displayed. Last digit rounded off.
result <- format(23.123456789, digits = 9)
print(result)

# Display numbers in scientific notation.
result <- format(c(6, 13.14521), scientific = TRUE)
print(result)

# The minimum number of digits to the right of the decimal point.
result <- format(23.47, nsmall = 5)
print(result)

# Format treats everything as a string.
result <- format(6)
print(result)

# Numbers are padded with blank in the beginning for width.
result <- format(13.7, width = 6)
print(result)

# Left justify strings.
result <- format("Hello", width = 8, justify = "1")
print(result)

# Justfy string with center.
result <- format("Hello", width = 8, justify = "c")
print(result)
