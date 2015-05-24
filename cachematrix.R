## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

m=matrix(c(9,10,3,20,25,30,35,40,45,50,3,8,65,70,75,80), nrow=4, byrow=T)

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
    
  }
  get <- function() x
  setinverse <- function(inverse) m <<- solve
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
  }
result<-makeCacheMatrix(m)
result$setinverse(m)
result$getinverse(m)

## makeCacheMatrix function calculates the inverse of the matrix and 
## store the result for future references

cacheSolve <- function(x, ...) {
  if(!is.null(result)) {
    message("getting the inverse of the matrix")
    return(result)
  }
  calculate <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
## Return a matrix that is the inverse of 'x'. If there was result stored from
## makeCacheMatrix, use the result directly.
}
