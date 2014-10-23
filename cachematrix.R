## These functions allow to store a Matrix and its inverse in the same function. The first function
## define an object containing the matrix, its inverse and functions to get and set these. THe second function
## Calculates the inverse,  if not already calculated, and returns it.

## This function will define 4 function calls:
## set - let's user set the matrix
## get - gets stored matrix
## setinverse - sets inverse of matrix
## getinverse - gets inverse of matrix

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}
## Caluclates the invers of the matrix in an function of type makeCacheMatrix.
## If inv already exists it gets the stored value
## FInally it returns the inverse
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverse = x$getinvers()
        if (!is.null(inverse)){
          print("Using Cached Inverse")
          return(inverse)
        }
        my_matrix <- x$get()
        inverse <- solve(my_matrix)
        x$setinvers(inverse)
        inverse
}
