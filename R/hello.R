#' Creates Histogram, Box plot and Numerical Summary
#' @export
#' @param  x numeric variable
stat <-  function(x){
  #1 row and 2 columns
  par(mfow = c(1,2))
  # Histogram
  hist(x, col = rainbow(30))
  #Box plot
  boxplot(x, col = "red")
  # 1 row and 1 column
  par(mfrow = c(1,1))

  data.frame(mean = mean(x),
             median = median(x),
             min = min(x),
             max = max(x))
}
