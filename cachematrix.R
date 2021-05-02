## Functions to cache inverse of a matrix

## object to cache inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  
  ## inverse property initialization 
  j <- NULL
  
  ## setting matrix
  set <- function( matrix ) {
    t <<- matrix
    j <<- NULL
  }
  
  ## accessing matrix
  get <- function() {
    ## Return the matrix
    t
  }
  setInverse <- function(inverse) {
    j <<- inverse
  }
  
  getInverse <- function() {
    j
  }
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}

## getting inverse of the matrix returned by "makeCacheMatrix" If the inverse has already been calculated (and the matrix has not changed), then the "cachesolve" shall retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
  
  ## returned matrix that is the inverse of 'x'
  t <- x$getInverse()
  
  if( !is.null(t) ) {
    message("getting cached data")
    return(m)
  }
  
  data <- x$get()
  t <- solve(data) %*% data
  
  x$setInverse(t)
  
  t
}

