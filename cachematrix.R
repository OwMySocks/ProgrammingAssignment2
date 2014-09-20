## Put comments here that give an overall description of what your
## functions do
## But I dont know what they do, it doesn't make sense yet
## This creates a matrix object with the ability to solve
## and cache the inverse of this object. It mostly just sets up and
## holds things
## in little pocket universes 

makeCacheMatrix <- function(x = matrix()) {
  ## check if matrix is invertible
  ##if (det(x) == 0) stop
  ## instantiate inverse. I think this is probably a good idea?
  inv <- NULL
  
  ## set function that sets the matrix to something else
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  
  ##get function returns matrix
  get <- function() x
  
  ##set function to set the inverse- not sure if I need this
  setinv <- function(inverse) inv <<- inverse 
  
  ##getinv function returns inverse
  getinv <-  function() inv
  
  ## return matrix of functions that do things
  list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  #print("Hello?")
  ## Return a matrix that is the inverse of 'x'
  inv <- x$getinv()
  ##print("got inverse")
  ## if that gave us something, then pull it out from the banished 
  ## pocket dimension and spit it out
  if (!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  ## on the other hand
  ## get the original matrix from the new makeCacheMatrix
  ## pocket universe where I tucked it
  message("did not find a cached inverse")
  data <- x$get()
  inverse <- solve(data)
  x$setinv(inverse)
  inverse
}
