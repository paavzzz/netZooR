context("test source PPI")

test_that("source.PPI works", {
  load("./testDataset.RData")
  tf <- data.frame(matrix(c("Rv0022c","Rv0023","Rv0042c","Rv0043c","Rv0047c","Rv0054"), 
                          nrow=6, byrow=T),stringsAsFactors=FALSE)
  # STRINGdb Version 10
  if(R.Version()$major=="3"){
  actual_PPI_V10 <- source.PPI(tf,"10",83332)
  expect_equal(actual_PPI_V10, ppiV10)}
  
  # STRINGdb Version 11
  else if(R.Version()$major=="4"){
    actual_PPI_V11 <- source.PPI(tf,"11",83332)
    expect_equal(actual_PPI_V11, ppiV11)}
  
}) 
