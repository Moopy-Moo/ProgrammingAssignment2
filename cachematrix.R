## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  ## Now to set the value of this matrix
  set <- function(y){
    x<<-y
    m<<-NULL
  }
  ## To get the value of this matrix
  get<-function()x
  ## To set the inverse of this matrix
  setinverse <- function(inverse)
    m<<-inverse
  ## Get the inverse of the matrix
  getinverse <- function()m
  list(set=set, get=get, setinverse=setinverse,getinverse=getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  m <- x$getinverse()
  ## Check if inverse has been calculated
  if(!is.null(m)) {
    message("getting cached matrix")
    return(m)
  }
  ## Calculate inverse of the matrix
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
        ## Return a matrix that is the inverse of 'x'
}
