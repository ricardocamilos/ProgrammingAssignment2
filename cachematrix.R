## Put comments here that give an overall description of what your
## functions do

## set: set the value of matrix
## get: get the value of matrix
## setinverse: set the value of inverse matrix
## getinverse: get the value of inverse matrix

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
set <- function(y) {
x <<- y
inv <<- NULL
}
get <- function() x
setinverse <- function(inverse) inv <<- inverse
getinverse <- function() inv
list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## The function cacheSolve returns the inverse of matrix.
## First it try to check if the matrix already been computed.
## If no, it resolve with the setinverse function.

cacheSolve <- function(x, ...) {
inv <- x$getinverse()
if(!is.null(inv)) {
message("getting cached data.")
return(inv)
}
data <- x$get()
inv <- solve(data)
x$setinverse(inv)
inv
}
