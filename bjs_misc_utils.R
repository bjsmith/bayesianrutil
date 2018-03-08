
save_png = function(filename,outputDir){
  if(!exists("output_dir")){
    output_dir<-outputDir
  }
  dev.copy(device=png,paste0(output_dir,"/",filename,'.png'))
  dev.off()
}
catnl=function(text){
  cat(paste0(text,"\n"))
}

get.datetimestamp <- function(){
  return(format(Sys.time(), "%Y%m%dT%H%M%S"))
}

printv<-function(m){
  if (exists("verbose")){
    if(verbose==TRUE){
      print(m)
    }
  }
  
}