## Implementation of a cached matrix inverse

## Takes a matrix and returns a list containing a function for calculating its inverse

makeCacheMatrix <- function(m = matrix()) {
	matrix <- m
	inverseCache <- NULL
	getMatrix <- function() matrix
	getInverse <- function() inverseCache
	setInverse <- function(inverse) inverseCache <<- inverse
	list(getMatrix = getMatrix, getInverse = getInverse, setInverse = setInverse)
}


## Returns the inverse of a matrix (caches results for performance reasons)

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
