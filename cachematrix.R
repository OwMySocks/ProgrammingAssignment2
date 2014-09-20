## Put comments here that give an overall description of what your
## functions do
## But I dont know what they do, it doesn't make sense yet
## This creates a matrix object with the ability to solve
## and cache the inverse of this object. It mostly just sets up and
## holds things in little pocket universes

makeCacheMatrix <- function(x = matrix()) {
  ## instantiate inverse. I think this is probably a good idea?
  inv <- NULL
  
  ## set function that sets the matrix to something else
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  
  ##get function returns main matrix
  get <- function() x
  
  ##set function to set the inverse, used by cacheSolve
  setinv <- function(inverse) inv <<- inverse 
  
  ##getinv function returns inverse
  getinv <-  function() inv
  
  ## return matrix of functions that do things
  list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return what currently exists as inv in the other function
  inv <- x$getinv()
  
  ## if that gave us something, then return it
  if (!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  
  ## if not, pull the original matrix from cache and solve for the
  ## inverse, tucking it into the cache if so.
  message("did not find a cached inverse")
  data <- x$get()
  inverse <- solve(data)
  x$setinv(inverse)
  inverse
}
