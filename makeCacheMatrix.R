#19 Sep 2015
#This creates the "special" matrix and functions to work with a cached inverse of a matrix

# The function takes a matrix and creates a global variable called my_cache that can be read, set and changed
# Example useage would be: test <- makeCacheMatrix(matrix(data = 1:4, nrow = 2, ncol = 2))

makeCacheMatrix <- function (my_matrix = matrix()){
        my_cache <<- NULL # Sets the global variable so that it can be used in the cacheSolve function
        
        
        #set function creates the new matrix and reses the cached value for the inverse
        set <- function(new_matrix){
                my_matrix <- new_matrix # Replaces the value of my_matrrix with the new_matrix
                my_cache <<- NULL  # The cached is aet to NULL becasue the inverse hasn't be calculated for it yet - clears the cache.
        }
        # Returns tha matrix sent to the makeCacheMatrix function
        getmatrix <- function() {
                my_matrix
        }
        #Used to set the cache once the inverse has been calculated
        setinverse <- function(inverse_my_matrix){
                my_cache <<- inverse_my_matrix
        }
        #Returns the cached matrix, NULL if it hasn't been set
        getinverse <- function(){
                my_cache
        }
        list ( set = set, getmatrix = getmatrix, setinverse = setinverse, getinverse = getinverse)
        
}