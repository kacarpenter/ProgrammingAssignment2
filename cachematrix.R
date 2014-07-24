


## Creates a matrix that can cache its inverse 

makeCacheMatrix <- function(x = matrix()) {
	m <- null
	set <- function(y){
	x <<- y
	m <<- NULL
}
get <- function()x
setsolve <- function(solve) m <<- solve
getsolve <- function()m
list (set=set, get=get, setsolve=setsolve, getsolve=getsolve)

}


## functions computes inverse of special matrix returned by makeCachematrix

cacheSolve <- function(x, ...) {
	m <- x$getsolve()
	if(!is.null(m)){
		message ("getting cached matrix")
		return m
}
	data <- x$get()
	m <- solve(matrix, ...)
	x$setsolve(m)
	m
}
        ## Return a matrix that is the inverse of 'x'

