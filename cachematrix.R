## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
    # cache the matrix and inverse
    x   <<- y
    inv <<- NULL
  }
  get <- function() {
    # return the matrix
    x 
  }
  setinv <- function(inverse) {
    # cache the inverse
    inv <<- inverse    
  }
  getinv <- function(){
    # return the inverse
    inv
  }
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv <- x$getinv()
  # check if inverse is cached
  if(!is.null(inv)) {
    message("getting cached data!")
    return(inv)
  }
  data <- x$get()
  # calculate the inverse if it's not cached
  inv <- solve(data)
  # set the inverse inside the matrix object
  x$setinv(inv)
  # return the inverse
  inv
}
