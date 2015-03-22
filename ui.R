require(shiny)
shinyUI(fluidPage(
    titlePanel(title = "Coursera Data Product Project: Central Limit Theorem"),
    sidebarLayout(
        sidebarPanel(
            print("This app simulates data to act as an example of the Central Limit Theorem. The plot on the right will display a histogram of the means of randomly selected samples of exponentially distributed data."),
            sliderInput("nmeans","Calculate means of how many observations?",min = 1,max = 100,value = 50,step = 1),
            print("Sorry it's so uninspired. I was trying to make something far more interesting, but I couldn't make it work and hit the deadline...")
            ),
        mainPanel(plotOutput("plot")
            ))))