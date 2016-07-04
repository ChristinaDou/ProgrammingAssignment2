## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
set <- function(y) {
	x <<-y
	inv <<- NULL
}
get <- function() x
setreverse<-function(reverse) inv <<-reverse
getreverse <-function() inv
list(set = set, get = get, setseverse = setreverse, getreverse = getreverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
elc <- x$getreverse()
if (!is.null(elc) {
	message("getting cached data")
return (elc)
} else {
	elc <- solve(x$get())
	x$setreverse(elc)
	return(elc)
}
