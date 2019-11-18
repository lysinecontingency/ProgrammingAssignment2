
## This function creates a special "matrix" object 
## that can cache its inverse.
##START

makeCacheMatrix <- function(x = matrix()) {
## x: a matrix
## 1. set matrix
## 2. get matrix
## 3. set inverse
## 4. get inverse
## these functions input to chachesolve()
  
  inv <- NULL
  
  set <- function(neo) {
    x <<- neo
    inv <<- NULL
  }
  
  get <- function() {
   x
  }
  
  setinverse <- function(inverse) {
    inv <<- inverse 
  }
  
  getinverse <- function() {
    inv
  }
  
  list(set=set, get=get, 
       setinverse=setinverse, getinverse=getinverse)
}


## This function computes the inverse of the 
## special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated 
## (and the matrix has not changed), then the 
## cachesolve should retrieve the inverse from the cache.
##START

cacheSolve <- function(x, ...) {
      
## Return a matrix that is the inverse of 'x'
   inv <-x$getinverse()

##if it's been calcualted already 
   if(!is.null(inv)) {
    print(inv)
  }
  
## calc and show inverse
    neo <- x$get()
  
  inv <- solve(neo)
  
  x$setinverse(inv)
  
  print(inv)
}
