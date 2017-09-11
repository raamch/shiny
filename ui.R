
fluidPage(
  titlePanel("K-means Clustering"),
  sidebarLayout(
    sidebarPanel(
      selectInput('xcol', 'X Variable', names(iris)),
      selectInput('ycol', 'Y Variable', names(iris),
                  selected=names(iris)[[2]]),
      sliderInput("clusters",
                  "Numer of Clusters:",
                  min = 1,  max = 100,  value = 5)
    ),
    mainPanel(
      plotOutput('plot'),
      h3("Notes:"),
      h5("This portal generates the k-means of iris data set."),
      h5("You can:"),
      h5("a. Choose the X and Y axis data to analyse the corelation"),
      h5("b. Choose the number of clusters to analyse the data")
    )
  )
)
