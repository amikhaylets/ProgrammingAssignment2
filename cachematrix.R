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


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
