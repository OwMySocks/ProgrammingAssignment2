## Put comments here that give an overall description of what your
## functions do

## This creates a matrix object with the ability to solve
## and cache the inverse of this object.

makeCacheMatrix <- function(x = matrix()) {
  ## check if matrix is invertible
  if (det(x) == 0) stop
  ## instantiate inverse
  inv <- NULL
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
