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
auto_thresh(img, "huang")
auto_thresh_mask(img, "huang") %>% display(method = "r")
auto_thresh_apply_mask(img, "huang") %>% normalize %>%  display(method = "r")

## ----the image stack-----------------------------------------------------
img <- imageData(readImage(system.file("extdata", "50.tif", 
                                           package = "autothresholdr"), 
                              as.is = TRUE))
display(normalize(img), method = "r")
mean_stack_thresh(img, "tri") %>% normalize %>%  display(method = "r")
med_stack_thresh(img, "tri") %>% normalize %>%  display(method = "r")

