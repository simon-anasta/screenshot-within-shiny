#' To take screen shots from within R shiny
#' 
#' No very good technique that caputes the whole webpage/document.
#' Current best alternative is to full screen on the primary screen and then take a screen shot.
#' 
#' To add this functionality to an app:
#' - insert the button in the UI
#' - insert  the listener in the server
#' - place a copy of screenCapture.bat is in the app folder
#' 
library(shiny)

## Define UI --------------------------------------------
ui <- fluidPage(
  actionButton("screenshot_button", "Screenshot")
)

## Define server logic --------------------------------------------
server <- function(input, output, server) {

    observeEvent(input$screenshot_button,{
    print(getwd())
    cmd = paste0("call screenCapture ","trial_",length(dir())+1,".png")
    suppressWarnings(shell(cmd))
    # warnings are suppressed as cmd consistently returns 'execution failed with error code 1'
    # even though the screenshot is saved
  })
  
}

# Run the app ----
shinyApp(ui = ui, server = server)
