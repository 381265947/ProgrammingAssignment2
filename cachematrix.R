## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(m = matrix()) {
	matrix <- m
	inverseCache <- NULL
	getMatrix <- function() matrix
	getInverse <- function() inverseCache
	setInverse <- function(inverse) inverseCache <<- inverse
	list(getMatrix = getMatrix, getInverse = getInverse, setInverse = setInverse)
}


## Write a short comment describing this function

cacheSolve <- function(m, ...) {
        inverse <- m$getInverse()
        if(!is.null(inverse)){
        	message("returning cached inverse")
        	return(inverse)
        }
        message("computing inverse")
        matrix <- m$getMatrix()
        result <- solve(matrix)
        m$setInverse(result)
        result
}
