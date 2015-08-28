#This is a function that will return a cached inverse of a matrix or create the inverse if it isn't already cached.

#Uses the global variable, my_cache, to test to see if there is a valid cached inverse matrix. 
cacheSolve <- function(x, ...) {
        cached_inverse <- x$getinverse() # Gets the cache that was set by makeCacheMatrix 
        
        #Tests to see if the cache is NULL, if not then there is a valid cache and returns it.
        if (!is.null(cached_inverse)){
                message("Getting cached matrix inverse....")
                return(cached_inverse)
        }
        #If it is NULL, then get the matrix, create the inverse, put it in the cache and return the inverse.
        my_matrix <- x$getmatrix()
        cached_inverse <- solve(my_matrix)
        x$setinverse(cached_inverse)
        cached_inverse
        
}