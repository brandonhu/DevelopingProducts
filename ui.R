library(shiny)

data(swiss)

shinyUI (
  fluidPage (
    h2("Linear Regression on the Swiss Data Set"),
    fluidRow (
      column (
        5,
        h3('Swiss Data Set Sample'),
        p (
          paste (
            'The Swiss data set contains a standardized fertility measure',
            'and socio-economic indicators for each of 47 French-speaking',
            'provinces of Switzerland at about 1888 as well as the infant (live births who live less than 1 year)',
            'mortality rate of these provinces. All variables but the',
            '"Fertility" give the proportions of the population.'
          )
        ),
        br(),
        p(
          paste (
            'Below shows a snap short of the first 7 rows of the Swiss data set.'
          )
        ),
        tableOutput('data'),
        p (
          paste (
            'Please select at least one predictor to predict the infant mortality rate.',
            'All selected predictors will be used to fit a generalized linear model on the data set.',
            'The summary of that model will be displayed on the right and visualizations of the model',
            'will be shown below. Every selection made will immediately triggers a new model fit and an',
            'update of the summary and the visualizations simultaneously.'
          )
        )
      ),
      column (
        5,
        offset = 1,
        verbatimTextOutput('fit')
      )
    ),
    fluidRow (
      column (
        2,
        checkboxGroupInput (
          "predictors",
          "Select predictor(s):",
          names(swiss)[-6]
        )
      ),
      column (
        3,
        plotOutput('plot1')
      ),
      column (
        3,
        plotOutput('plot2')
      ),
      column (
        3,
        plotOutput('plot3')
      )
    )
  )
)