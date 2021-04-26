library(shiny)
library(shinydashboard)
library(tidymodels)
library(tidyverse)

# Read in model
model <- read_rds("model.rds")

# What are our predictors?
model$pre$mold$predictors


ui <- dashboardPage(
    dashboardHeader(title = "Wine Ratings Predictor"),
    dashboardSidebar(
        menuItem(
            "Wine Score",
            tabname = "wine_tab",
            icon = icon("wine-bottle")
        )
    ),
    dashboardBody(
        tabItem(
            tabName = "wine_tab",
            box()
        )
    )
)

server <- function(input, output) { }

shinyApp(ui, server)