#  Array is a multi-dimensional data structure
#  Array creates composition of multiple matrices in a array
#  Array is created by array()
#  Accept input as c()

#creating array
arr<-array(1:24)
#creating a multidimensional array where dim is used to set parameters of dimensions
# Here dim=c(rows, columns, no of matrices)
arr2d<-array(arr,dim=c(3,3,4))
arr2d  # class is array

#we can use multiple vectors or arrays to create different array
a<-c(1:12)
b<-array(13:24)
c<-array(c(a,b),dim=c(4,3,2))
c
class(c)

#doing same but naming rows and columns
r<-c('row1','row2','row3','row4')
c<-c('col1','col2','col3')
m<-c('Basic','Advanced')
a<-c(1:12)
b<-array(13:24)
newC<-array(c(a,b),dim=c(4,3,2),dimnames=list(r,c,m))
newC

#access elements
newC[3,3,2]
name<-'Advanced'
newC[3,3,name]

#access one or multi row
newC[,c(1,3),c(1,2)]
newC[c(2,4),,2]

#update elements in array
newC[1,3,2]<-100  #updates elements of second matrix which is in row1 and col3 to 100

#update elements in a particular matrix 
newC[,,2][newC[,,2]<18]<-50
newC

#check if element is exists or not
24 %in% newC[,,1]

#check array length
length(newC)

#check array dimension
dim(newC)

#loop in array
#1.traverse
for(x in newC){
  print(x)
}

