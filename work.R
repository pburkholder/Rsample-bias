
# Input populations
cam <- c(27,28,39,41,41,41)
cse <- c(27,29,29,30,31,32,33,34,38,39,41,51)
se  <- c(23,27,28,30,31,34,38,39,rep(41,2),43,45)
tr  <- c(49,38,47,58)
exc <- c(38,39,rep(40,3),46,47,49,51,53)

# Populations released: 
rif <- c(27,28,41,51,34,49,53) # 4 of 7 over 40, 2 over 50
xrif<- c(27,28,41,51,34,49) # 3 of 6 over 40,
xcam<- c(51,34,49,53)  # 3 of 4

all <- c(cam,cse,se,tr,exc)
prol<- c(cam,cse,se,tr)
nocam <- c(cse,se,tr,exc)

n_over_age <- function(x,size=7,age=40) {
  y <- sample(x, size)  # take sample
  z <- sum(y >= age)	  # count elements over 40
  z
}

loopn <- function(count=100, input, size=7,age=40) {
  x <- c(NULL)
  for (i in 0:count){
    a <- n_over_age(input,size,age)
    x <- append(x,a)
  }
  x
}

l_all <- loopn(10000,all,7)
l_prol <- loopn(10000,prol,6)
l_nocam <- loopn(10000,nocam,4)
l_forty <- loopn(10000,nocam,4,age=40)
l_fifty <- loopn(10000,nocam,4,age=50)
l_50all  <- loopn(10000,all,7,age=50)
