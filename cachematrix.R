
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
## This function calculates the inverse of the special matrix created by
## makeCacheMatrix above. If inverse has already been calculated for the given matrix
## it will fetch its value from the cache else it will calculate the inverse

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv <- x$getinv()
  if (!is.null(inv)){
    message("getting value from cached data")
    return(inv)
  }
  z<- x$get()
  inv<-solve(z,...)
  x$setinv(inv)
  inv
}
