# makeCacheMatrix creates a matrix, which is a list containing a function to
# set the value of the matrix, get the value of the matrix
# set the value of the inverse, get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
    # initialize the inverse matrix value
    inv <- NULL
    
    # set the value of the matrix
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    
    # get the value of the matrix
    get <- function() x
    
    # set the value of the inverse
    set_inverse <- function(inv_input) inv <<- inv_input
    # get the value of the inverse
    get_inverse <- function() inv
    
    # return a list of all the above functions
    list(set = set, get = get,
         set_inverse = set_inverse,
         get_inverse = get_inverse)
}


## cacheSolve calculates the inverse of the matrix created with makeCacheMatrix
## It checks whether invers calculated or not. 
## If calculated, it gets the inverse from the cache and skips the 
## computation. If NOT calculated, it calculates the inverse of the 
## matrix and sets the value of the inverse in the cache 

cacheSolve <- function(x, ...) {
    # check if the inverse is already cached,
    # if so, get the inverse from the cache
    inv <- x$get_inverse()
    if(!is.null(inv)) {
        message("getting cached inverse")
        return(inv)
    }
    # else, get the matrix
    data <- x$get()
    # and calculate the inverse
    inv <- solve(data, ...)
    # cache the inverse of the matrix
    x$set_inverse(inv)
    # return the result
    return(inv)
}
