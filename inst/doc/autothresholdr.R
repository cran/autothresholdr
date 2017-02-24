## ----load libraries, results='hide'--------------------------------------
library(autothresholdr)
library(EBImage)
library(magrittr)

## ----the image-----------------------------------------------------------
img <- imageData(readImage(system.file("extdata", "eg.tif", 
                                       package = "autothresholdr"), 
                           as.is = TRUE))
display(normalize(img), method = "r")

## ----guess four----------------------------------------------------------
display(img > 4, method = "r")

## ----thresh mask apply---------------------------------------------------
auto_thresh(img, "h")
auto_thresh_mask(img, "h") %>% display(method = "r")
auto_thresh_apply_mask(img, "h") %>% normalize %>%  display(method = "r")

