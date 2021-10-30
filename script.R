library("plyr")

resave <- function(file){
  e <- new.env(parent = emptyenv())
  load(file, envir = e)
  objs <- ls(envir = e, all.names = TRUE)

  for(obj in objs) {
    .x <- get(obj, envir =e)
    write.csv(.x, file = paste0(obj, '.csv'))
  }
}

villages <- ldply(
	.data = list.files(path=".", pattern="*.RData"),
	.fun = resave
	)
