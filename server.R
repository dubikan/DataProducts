require(shiny)
nums<-rexp(100000)

shinyServer(function(input, output, session) {
    
output$plot<-renderPlot({      
    nmean<-input$nmeans
    numm<-sample(nums,size=1000*nmean)
    data<-matrix(numm, ncol=nmean)
    means<-apply(data,1,mean)
    vars<-apply(data,1,var)
    return({hist(means, main="Histogram of means of sample",xlab="Means")
    abline(v=1,col="yellow",lwd=3)
    abline(v=mean(means),col="steelblue",lwd=3)
    legend(x="topright",legend=c("sample mean","theoretical mean"),lwd=3,col=c("steelblue","yellow"))})
})})