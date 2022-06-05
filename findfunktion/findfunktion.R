# # rstatsdk, inspiration 

library("tidyverse")
library("reactable")
library("reactablefmtr")
library("readxl")

funktioner_data <- read_xlsx("funktioner.xlsx")

funktioner_tabel <- funktioner_data |> 
  arrange(Pakke) |> 
  reactable(filterable = TRUE,
            style = list(fontFamily = "Work Sans, sans-serif", fontSize = "14px"),
          defaultPageSize = 50) 

funktioner_tabel |> 
  save_reactable_test("funktioner_tabel.html")


