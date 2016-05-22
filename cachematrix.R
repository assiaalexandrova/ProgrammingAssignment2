#R Course Assignment to compute the inverse of a matrix  via solve() and cache it.

makeCacheMatrix <- function(myMatrix = matrix()) {
      m <- NULL
        set <- function(y) {
          myMatrix <<- y
         m <<- NULL
      }
  get <- function() myMatrix
  setInverseM <- function(solve) m <<- solve
  getInverseM <- function() m
  list(set = set, get = get,
       setInverseM = setInverseM,
       getInverseM = getInverseM)

}


cacheSolve <- function(myMatrix = matrix(), ...) {
      m <- myMatrix$getInverse()
        if(!is.null(m)) {
          message("Getting cached data!")
        return(m)
  }
  data <- myMatrix$get()
      m <- solve(data, ...)
        myMatrix$setInverse(m)
      m
}


