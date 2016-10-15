## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

#This function creates a matrix object and cache its inverse, set and get the value of the matrix, and set and get the value of the inverse.

makeCacheMatrix <- function(x = matrix()) {  #create the function named makeCacheMatrix which takes a matrix input.

    m<- NULL
    set<-function(y){ 
        x<<-y
	m<<-NULL
    }    # change the matrix stored in the function
    get<-function() x  #return the matrix stored in the function
    settheinverse<-function(solve) m<<-solve  # invert the matrix and store it

    gettheinverse<-function() m  #get the inverted matrix from cache

    list(set=set,get=get,settheinverse=settheinverse,gettheinverse=gettheinverse)   #return the created functions to the working environment
  

}


## Write a short comment describing this function
#this function calculate the inverse of the matrix created in makeCacheMatrix if its inverse in not found in cache.

cacheSolve <- function(x, ...) {
    m<-x$gettheinverse()  #get the inverse of the matrix stored in cache
    if(!is.null(m)){
        message("getting cashed data")
	return(m)
    }   # return the inverted matrix from cache if it exists
    data<-x$get() # create the matrix since it doesn't exists
    m<-solve(data,...) #calculates the inverse
    x$settheinverse(m)  # stores it in the object m in makeCachMatrix
    m

## Return a matrix that is the inverse of 'x'
}
