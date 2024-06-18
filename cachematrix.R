## creates a matrix and its functions to later calculate the inverse
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setMatrix <- function(matrix) m <<- matrix
  ##print(m)
  getMatrix <- function() m
  list(set = set, get = get,
       setMatrix = setMatrix,
       getMatrix = getMatrix)
  ##print(x)
}

## checks to see if the inverse matrix is already made is it is not NULL
## otherwise makes the inverse of the matrix

cacheMatrix <- function(x, ...) {
  ##print(x)
  m <- x$getMatrix()
  ##print(m)
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  
  data <- x$get()
  mInverse <- solve(data)
  x$setMatrix(mInverse)
  mInverse
}
