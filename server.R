#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

# Load required libraries
library(shiny)
library(tm)

# Function to custom clean enetered text phrase
custom_input_text_clean <- function (testline) 
{
        line <- iconv(testline, "latin1", "ASCII", sub = "")
        line <- gsub('[0-9]+', '', line)
        line <- tolower(line)
        line <- removeWords(line, stopwords())
        line <- removePunctuation(line)
        line <- gsub('\\S+[^\x20-\x7E]', '', line)
        emptyLines <- grepl('^\\s*$', line)
        line <- line[!emptyLines]
        line <- stripWhitespace(line)
        #line <- gsub("^ +| +$|( ) +", "\\1", line)
        return(line)
}

        
        