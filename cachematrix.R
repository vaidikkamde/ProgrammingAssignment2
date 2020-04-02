
## This program has two functions that creats a special matrix and returns the mean
##of that special matrix

## This function creates a special "matrix" object which is
## a list containg function set value of matrix,get value of the matrix
## set the value of inverse of the matrix and get the value of inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  inv <-NULL
  set<- function(y){
    x<<-y
    m<<-NULL
  }
  get <- function()x
  setinv<- function(inverse) inv<<-inverse
  getinv<-function() inv
  list(set = set,get = get,setinv=setinv,getinv=getinv)
}

cacheSolve <- function(x, ...) {
}
