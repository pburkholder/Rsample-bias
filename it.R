
cam <- c(27,28,39,41,41,41)
cse <- c(27,29,29,30,31,32,33,34,38,39,41,51)
se  <- c(23,27,28,30,31,34,38,39,rep(41,2),43,45)
tr  <- c(49,38,47,58)
exc <- c(38,39,rep(40,3),46,47,49,51,53)

rif <- c(27,28,41,51,34,49,53) # 4 of 7
xrif<- c(27,28,41,51,34,49) # 3 of 6
xcam<- c(51,34,49,53)  # 3 of 4

all <- c(cam,cse,se,tr,exc)
prol<- c(cam,cse,se,tr)
nocam <- c(cse,se,tr,exc)

sample_is_under_40 <- function(x,size=7,youngsters=4) {
	y <- sample(x, size)  # take sample
	z <- sum(y < 40)	  # count elements under 40
	res <- (z >= youngsters)   # True if sample is mostly under 40.
  res
}

n_over_40 <- function(x,size=7) {
  y <- sample(x, size)  # take sample
  z <- sum(y >= 40)	  # count elements over 40
  z
}


loopit <- function(n=10,input,size=7,youngsters=4) {
  x <- c(NULL)
  for (i in 0:n){
    a <- sample_is_under_40(input,size,youngsters)
    x <- append(x,a)
  }
  sum(x == TRUE)
}

loopn <- function(count=100, input, size=7) {
  x <- c(NULL)
  for (i in 0:count){
    a <- n_over_40(input,size)
    x <- append(x,a)
  }
  x
}

l_all <- loopn(10000,all,7)
l_prol <- loopn(10000,prol,6)
l_nocam <- loopn(10000,nocam,4)