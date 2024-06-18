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