## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inverse <- NULL #assigning inverse matrix to null
  set <- function(y){
    x <<- y
    inverse <<- NULL
  }
  get <- function() x #subfunction which returns original matrix
  setInverse <- function(solveMat) inverse <<- solveMat
  getInverse <- function() inverse #extracting saved inversed matrix
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
       inverse <- x$getInverse()
  if(!is.null(inverse)){
    message("getting cache")
    return(inverse)
  }
  data <- x$get()
  inverse <- solve(data)
  x$setInverse(inverse)
  inverse     #returning inverted matrix
}
