## Put comments here that give an overall description of what your
## functions do

## make matrix assign to variable x, and initialize m to NULL

makeCacheMatrix <- function(x = matrix()) {
m <- NULL
        set <- function(y) {     ## if user wants to reset matrix
                x <<- y          ## reassigning the new matrix to x
                m <<- NULL       ## re-initialize m to NULL
        }
        get <- function() x
        setInvmatrix <- function(InvMatrix) m <<- InvMatrix
        
}

###############################################################################
###############################################################################


## Return a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
        m <- x$getInvmatrix()              
        if(!is.null(m)) {           ## if user had calculated the same matrix before
            message("getting cached data")  
            return(m)               ## return old result(m) directly 

        }
        data <- x$get()             ## otherwise, get the uncalculated matrix
        m <- solve(data, ...)       ## calculate the inverse matrix
        x$setInvmatrix(m)           ## reassign inverse matrix 
        m                           ## print the inverse matrix 
}
