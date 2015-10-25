## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(input) {
    x <<- input
    m <<- NULL
  }
  get <- function() x
  setsolve <- function(input) m <<- input
  getsolve <- function() m
  list(set = set, get = get, setsolve = setsolve, getsolve = getsolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  temp <- x$getsolve()
  if(!is.null(temp)) {
    message("getting cached data")
    return(temp)
  }
  data <- x$get()
  solved <- solve(data)
  x$setsolve(solved)
  solved
}
