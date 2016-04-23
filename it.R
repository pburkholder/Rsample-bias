
cam <- c(27,28,39,41,41,41)
cse <- c(27,29,29,30,31,32,33,34,38,39,41,51)
se  <- c(23,27,28,30,31,34,38,39,rep(41,2),43,45)
tr  <- c(49,38,47,58)
exc <- c(38,39,rep(40,3),46,47,49,51,53)


all <- c(cam,cse,se,tr,exc)

gt40 <- function(x) {
	return (x > 40)
}

o40 <- function(x,size,n=4) {
	y <- sample(x, size)
	message(y)
	z <- sum(y > 40)	
}

	

