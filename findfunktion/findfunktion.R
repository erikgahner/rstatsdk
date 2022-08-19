# Load pakker
library("tidyverse")
library("reactable")
library("reactablefmtr")
library("readxl")

# Indlæs data
funktioner_data <- read_xlsx("funktioner.xlsx")

# Lav tabel
funktioner_tabel <- funktioner_data |> 
  arrange(Pakke) |> 
  reactable(filterable = TRUE,
            columns = list(
              Beskrivelse = colDef(minWidth = 120),
              Pakke = colDef(maxWidth = 120, style = list(fontFamily = "Courier, monospace")),
              Funktion = colDef(maxWidth = 140)
            ),
            style = list(fontFamily = "Work Sans, sans-serif", fontSize = "14px"),
            showPageInfo = FALSE,
            defaultPageSize = 35) 

# Gem tabel som HTML-fil
funktioner_tabel |> 
  save_reactable_test("funktioner_tabel.html")
