## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

    m<- NULL
    set<-function(y){
        x<<-y
	m<<-NULL
    }
    get<-function() x
    settheinverse<-function(solve) m<<-solve
    gettheinverse<-function() m
    list(set=set,get=get,settheinverse=settheinverse,gettheinverse=gettheinverse)


}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    m<-x$gettheinverse()
    if(!is.null(m)){
        message("getting cashed data")
	return(m)
    }
    data<-x$get()
    m<-solve(data,...)
    x$settheinverse(m)
    m

## Return a matrix that is the inverse of 'x'
}
