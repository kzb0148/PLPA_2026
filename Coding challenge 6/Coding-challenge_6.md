---
title: "Coding_challenge6"
author: "Kiranmayee"
date: "2026-03-19"
output: 
 html_document:
      keep_md: yes
      
---



###1.	1 pts. Regarding reproducibility, what is the main point of writing your own functions and iterations? 
### A. The main point of writing own functions and iterations is for efficiency. They allow us to use the same code number of times and repetitive tasks can be done with any values.This helps to avoid errors and keeps them organized making it easier for others to repeat.

###2.	2 pts. Conceptual: In your own words, describe: 1) how to write a function in R, and 2) how to write a for loop in R. In your answer, be specific about: basic syntax, where the code is written, and how results are returned or stored. (Answer in plain text; no code required for this question.)
### A.1)Function in R using the command function(), After giving the function name, put the iput variables inside the parenthesis.Then write the code inside the {}.Results are returned using return().2) A loop is to repeat the same code multiple times.Use "for" and then write the repeated code inside the {}.Results are stored in a vector or list.

###This dataset contains the population and coordinates (latitude and longitude) of the 40 most populous cities in the US, along with Auburn, AL. Your task is to create a function that calculates the distance between Auburn and each other city using the Haversine formula. To do this, you'll write a for loop that goes through each city in the dataset and computes the distance from Auburn. Detailed steps are provided below.

###3.	1 pts. Read in the Cities.csv file from Canvas using a relative file path.


``` r
Cities <- read.csv("Cities.csv")

names(Cities)
```

```
##  [1] "city"        "city_ascii"  "state_id"    "state_name"  "county_fips"
##  [6] "county_name" "lat"         "long"        "population"  "density"
```

``` r
unique(Cities$city)
```

```
##  [1] "New York"      "Los Angeles"   "Chicago"       "Miami"        
##  [5] "Houston"       "Dallas"        "Philadelphia"  "Atlanta"      
##  [9] "Washington"    "Boston"        "Phoenix"       "Detroit"      
## [13] "Seattle"       "San Francisco" "San Diego"     "Minneapolis"  
## [17] "Tampa"         "Brooklyn"      "Denver"        "Queens"       
## [21] "Riverside"     "Las Vegas"     "Baltimore"     "St. Louis"    
## [25] "Portland"      "San Antonio"   "Sacramento"    "Austin"       
## [29] "Orlando"       "San Juan"      "San Jose"      "Indianapolis" 
## [33] "Pittsburgh"    "Cincinnati"    "Manhattan"     "Kansas City"  
## [37] "Cleveland"     "Columbus"      "Bronx"         "Auburn"
```



###4.	6 pts. Function writing: Write a function that calculates the distance (in kilometers) between two pairs of geographic coordinates using the Haversine formula. 
a.	Function requirements:
i.	Inputs: lat1, lon1, lat2, lon2
ii.	The function must return a single numeric value called distance_km
iii.	All code shown below must be placed inside the function body


``` r
haversine_distance <- function(lat1, lon1, lat2, lon2) {
  
  # convert to radians
  rad.lat1 <- lat1 * pi/180
  rad.lon1 <- lon1 * pi/180
  rad.lat2 <- lat2 * pi/180
  rad.lon2 <- lon2 * pi/180
  
  # Haversine formula
  delta_lat <- rad.lat2 - rad.lat1
  delta_lon <- rad.lon2 - rad.lon1
  a <- sin(delta_lat / 2)^2 + cos(rad.lat1) * cos(rad.lat2) * sin(delta_lon / 2)^2
  c <- 2 * asin(sqrt(a)) 
  
  # Earth's radius in kilometers
  earth_radius <- 6378137
  
  # Calculate the distance
  distance_km <- (earth_radius * c)/1000
  
  return(distance_km)
}
```





###5.	6 pts. Using your function from question 4, calculate the distance between Auburn, AL and New York City.
a.	Subset or extract only the latitude and longitude values needed from Cities.csv
b.	Pass those values into your function
c.	Store the result in an object


``` r
auburn <- Cities[Cities$city == "Auburn", ]
newyork <- Cities[Cities$city == "New York", ]

ny_to_auburn_distance <- haversine_distance(
  lat1 = auburn$lat,
  lon1 = auburn$long,
  lat2 = newyork$lat,
  lon2 = newyork$long
)

ny_to_auburn_distance
```

```
## [1] 1367.854
```


The expected output is 1367.854 km (small rounding differences are acceptable).

###6.	4 pts. Use your distance function inside a for loop to calculate the distance between Auburn, AL and every other city in Cities.csv. Each iteration should calculate the distance for one city


``` r
# 6.
distance_results <- NULL

for (i in seq_along(Cities$city)) {
  
  current_city <- Cities$city[[i]]
  
  city_distance <- haversine_distance(
    lat1 = auburn$lat,
    lon1 = auburn$long,
    lat2 = Cities$lat[[i]],
    lon2 = Cities$long[[i]]
  )
  
  print(city_distance)
}
```

```
## [1] 1367.854
## [1] 3051.838
## [1] 1045.521
## [1] 916.4138
## [1] 993.0298
## [1] 1056.022
## [1] 1239.973
## [1] 162.5121
## [1] 1036.99
## [1] 1665.699
## [1] 2476.255
## [1] 1108.229
## [1] 3507.959
## [1] 3388.366
## [1] 2951.382
## [1] 1530.2
## [1] 591.1181
## [1] 1363.207
## [1] 1909.79
## [1] 1380.138
## [1] 2961.12
## [1] 2752.814
## [1] 1092.259
## [1] 796.7541
## [1] 3479.538
## [1] 1290.549
## [1] 3301.992
## [1] 1191.666
## [1] 608.2035
## [1] 2504.631
## [1] 3337.278
## [1] 800.1452
## [1] 1001.088
## [1] 732.5906
## [1] 1371.163
## [1] 1091.897
## [1] 1043.273
## [1] 851.3423
## [1] 1382.372
## [1] 0
```


###7.	4 pts. Modify your loop so that each iteration appends one new row to a dataframe with the following columns:

•	City1 (the other city)
•	City2 (Auburn)
•	Distance_km



``` r
# 7.
distance_df <- NULL

for (i in seq_along(Cities$city)) {
  
  current_city <- Cities$city[[i]]
  
  city_distance <- haversine_distance(
    lat1 = auburn$lat,
    lon1 = auburn$long,
    lat2 = Cities$lat[[i]],
    lon2 = Cities$long[[i]]
  )
  
  distance_i <- data.frame(
    City1 = current_city,
    City2 = "Auburn",
    Distance_km = city_distance
  )
  
  distance_df <- rbind(distance_df, distance_i)
}

head(distance_df)
```

```
##         City1  City2 Distance_km
## 1    New York Auburn   1367.8540
## 2 Los Angeles Auburn   3051.8382
## 3     Chicago Auburn   1045.5213
## 4       Miami Auburn    916.4138
## 5     Houston Auburn    993.0298
## 6      Dallas Auburn   1056.0217
```




###8.	1 pts. Commit and push a gfm .md file to GitHub inside a directory called Coding Challenge 6. Provide me a link to your github written as a clickable link in your rendered .pdf, .docx, or .html

https://github.com/kzb0148/PLPA_2026/tree/main/Coding%20challenge%206




