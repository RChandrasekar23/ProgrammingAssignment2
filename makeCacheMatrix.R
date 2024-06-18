makeCacheMatrix <- function(x = matrix(c(4, 3, 3, 2), 2, 2)) {
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

