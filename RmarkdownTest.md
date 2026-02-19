This is an example of R code

    ##       mpg             cyl             disp             hp       
    ##  Min.   :10.40   Min.   :4.000   Min.   : 71.1   Min.   : 52.0  
    ##  1st Qu.:15.43   1st Qu.:4.000   1st Qu.:120.8   1st Qu.: 96.5  
    ##  Median :19.20   Median :6.000   Median :196.3   Median :123.0  
    ##  Mean   :20.09   Mean   :6.188   Mean   :230.7   Mean   :146.7  
    ##  3rd Qu.:22.80   3rd Qu.:8.000   3rd Qu.:326.0   3rd Qu.:180.0  
    ##  Max.   :33.90   Max.   :8.000   Max.   :472.0   Max.   :335.0  
    ##       drat             wt             qsec             vs        
    ##  Min.   :2.760   Min.   :1.513   Min.   :14.50   Min.   :0.0000  
    ##  1st Qu.:3.080   1st Qu.:2.581   1st Qu.:16.89   1st Qu.:0.0000  
    ##  Median :3.695   Median :3.325   Median :17.71   Median :0.0000  
    ##  Mean   :3.597   Mean   :3.217   Mean   :17.85   Mean   :0.4375  
    ##  3rd Qu.:3.920   3rd Qu.:3.610   3rd Qu.:18.90   3rd Qu.:1.0000  
    ##  Max.   :4.930   Max.   :5.424   Max.   :22.90   Max.   :1.0000  
    ##        am              gear            carb      
    ##  Min.   :0.0000   Min.   :3.000   Min.   :1.000  
    ##  1st Qu.:0.0000   1st Qu.:3.000   1st Qu.:2.000  
    ##  Median :0.0000   Median :4.000   Median :2.000  
    ##  Mean   :0.4062   Mean   :3.688   Mean   :2.812  
    ##  3rd Qu.:1.0000   3rd Qu.:4.000   3rd Qu.:4.000  
    ##  Max.   :1.0000   Max.   :5.000   Max.   :8.000

This is how to include figures

    library(ggplot2)
    data("mtcars")
    ggplot(mtcars, aes(x= wt, y = mpg)) +
      geom_point()

![](RmarkdownTest_files/figure-markdown_strict/icnlude%20figures-1.png)

R markdown formatting options

# First level header

**this text is italics**

1.  one item
2.  another item
    -   one subitem

## Links

\[Link to my github\] (<https://github.com/kzb0148/PLPA_2026.git>)

## Images

<figure>
<img src="shrek.jpg" alt="Shrek ggplot" />
<figcaption aria-hidden="true">Shrek ggplot</figcaption>
</figure>

## Formatted tables

    library(knitr)
    kable(mtcars, digits =3 , format = "markdown")

<table style="width:100%;">
<colgroup>
<col style="width: 27%" />
<col style="width: 6%" />
<col style="width: 5%" />
<col style="width: 8%" />
<col style="width: 5%" />
<col style="width: 6%" />
<col style="width: 8%" />
<col style="width: 8%" />
<col style="width: 4%" />
<col style="width: 4%" />
<col style="width: 6%" />
<col style="width: 6%" />
</colgroup>
<thead>
<tr>
<th style="text-align: left;"></th>
<th style="text-align: right;">mpg</th>
<th style="text-align: right;">cyl</th>
<th style="text-align: right;">disp</th>
<th style="text-align: right;">hp</th>
<th style="text-align: right;">drat</th>
<th style="text-align: right;">wt</th>
<th style="text-align: right;">qsec</th>
<th style="text-align: right;">vs</th>
<th style="text-align: right;">am</th>
<th style="text-align: right;">gear</th>
<th style="text-align: right;">carb</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align: left;">Mazda RX4</td>
<td style="text-align: right;">21.0</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">160.0</td>
<td style="text-align: right;">110</td>
<td style="text-align: right;">3.90</td>
<td style="text-align: right;">2.620</td>
<td style="text-align: right;">16.46</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">4</td>
</tr>
<tr>
<td style="text-align: left;">Mazda RX4 Wag</td>
<td style="text-align: right;">21.0</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">160.0</td>
<td style="text-align: right;">110</td>
<td style="text-align: right;">3.90</td>
<td style="text-align: right;">2.875</td>
<td style="text-align: right;">17.02</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">4</td>
</tr>
<tr>
<td style="text-align: left;">Datsun 710</td>
<td style="text-align: right;">22.8</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">108.0</td>
<td style="text-align: right;">93</td>
<td style="text-align: right;">3.85</td>
<td style="text-align: right;">2.320</td>
<td style="text-align: right;">18.61</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">1</td>
</tr>
<tr>
<td style="text-align: left;">Hornet 4 Drive</td>
<td style="text-align: right;">21.4</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">258.0</td>
<td style="text-align: right;">110</td>
<td style="text-align: right;">3.08</td>
<td style="text-align: right;">3.215</td>
<td style="text-align: right;">19.44</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">1</td>
</tr>
<tr>
<td style="text-align: left;">Hornet Sportabout</td>
<td style="text-align: right;">18.7</td>
<td style="text-align: right;">8</td>
<td style="text-align: right;">360.0</td>
<td style="text-align: right;">175</td>
<td style="text-align: right;">3.15</td>
<td style="text-align: right;">3.440</td>
<td style="text-align: right;">17.02</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">2</td>
</tr>
<tr>
<td style="text-align: left;">Valiant</td>
<td style="text-align: right;">18.1</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">225.0</td>
<td style="text-align: right;">105</td>
<td style="text-align: right;">2.76</td>
<td style="text-align: right;">3.460</td>
<td style="text-align: right;">20.22</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">1</td>
</tr>
<tr>
<td style="text-align: left;">Duster 360</td>
<td style="text-align: right;">14.3</td>
<td style="text-align: right;">8</td>
<td style="text-align: right;">360.0</td>
<td style="text-align: right;">245</td>
<td style="text-align: right;">3.21</td>
<td style="text-align: right;">3.570</td>
<td style="text-align: right;">15.84</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">4</td>
</tr>
<tr>
<td style="text-align: left;">Merc 240D</td>
<td style="text-align: right;">24.4</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">146.7</td>
<td style="text-align: right;">62</td>
<td style="text-align: right;">3.69</td>
<td style="text-align: right;">3.190</td>
<td style="text-align: right;">20.00</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">2</td>
</tr>
<tr>
<td style="text-align: left;">Merc 230</td>
<td style="text-align: right;">22.8</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">140.8</td>
<td style="text-align: right;">95</td>
<td style="text-align: right;">3.92</td>
<td style="text-align: right;">3.150</td>
<td style="text-align: right;">22.90</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">2</td>
</tr>
<tr>
<td style="text-align: left;">Merc 280</td>
<td style="text-align: right;">19.2</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">167.6</td>
<td style="text-align: right;">123</td>
<td style="text-align: right;">3.92</td>
<td style="text-align: right;">3.440</td>
<td style="text-align: right;">18.30</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">4</td>
</tr>
<tr>
<td style="text-align: left;">Merc 280C</td>
<td style="text-align: right;">17.8</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">167.6</td>
<td style="text-align: right;">123</td>
<td style="text-align: right;">3.92</td>
<td style="text-align: right;">3.440</td>
<td style="text-align: right;">18.90</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">4</td>
</tr>
<tr>
<td style="text-align: left;">Merc 450SE</td>
<td style="text-align: right;">16.4</td>
<td style="text-align: right;">8</td>
<td style="text-align: right;">275.8</td>
<td style="text-align: right;">180</td>
<td style="text-align: right;">3.07</td>
<td style="text-align: right;">4.070</td>
<td style="text-align: right;">17.40</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">3</td>
</tr>
<tr>
<td style="text-align: left;">Merc 450SL</td>
<td style="text-align: right;">17.3</td>
<td style="text-align: right;">8</td>
<td style="text-align: right;">275.8</td>
<td style="text-align: right;">180</td>
<td style="text-align: right;">3.07</td>
<td style="text-align: right;">3.730</td>
<td style="text-align: right;">17.60</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">3</td>
</tr>
<tr>
<td style="text-align: left;">Merc 450SLC</td>
<td style="text-align: right;">15.2</td>
<td style="text-align: right;">8</td>
<td style="text-align: right;">275.8</td>
<td style="text-align: right;">180</td>
<td style="text-align: right;">3.07</td>
<td style="text-align: right;">3.780</td>
<td style="text-align: right;">18.00</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">3</td>
</tr>
<tr>
<td style="text-align: left;">Cadillac Fleetwood</td>
<td style="text-align: right;">10.4</td>
<td style="text-align: right;">8</td>
<td style="text-align: right;">472.0</td>
<td style="text-align: right;">205</td>
<td style="text-align: right;">2.93</td>
<td style="text-align: right;">5.250</td>
<td style="text-align: right;">17.98</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">4</td>
</tr>
<tr>
<td style="text-align: left;">Lincoln Continental</td>
<td style="text-align: right;">10.4</td>
<td style="text-align: right;">8</td>
<td style="text-align: right;">460.0</td>
<td style="text-align: right;">215</td>
<td style="text-align: right;">3.00</td>
<td style="text-align: right;">5.424</td>
<td style="text-align: right;">17.82</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">4</td>
</tr>
<tr>
<td style="text-align: left;">Chrysler Imperial</td>
<td style="text-align: right;">14.7</td>
<td style="text-align: right;">8</td>
<td style="text-align: right;">440.0</td>
<td style="text-align: right;">230</td>
<td style="text-align: right;">3.23</td>
<td style="text-align: right;">5.345</td>
<td style="text-align: right;">17.42</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">4</td>
</tr>
<tr>
<td style="text-align: left;">Fiat 128</td>
<td style="text-align: right;">32.4</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">78.7</td>
<td style="text-align: right;">66</td>
<td style="text-align: right;">4.08</td>
<td style="text-align: right;">2.200</td>
<td style="text-align: right;">19.47</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">1</td>
</tr>
<tr>
<td style="text-align: left;">Honda Civic</td>
<td style="text-align: right;">30.4</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">75.7</td>
<td style="text-align: right;">52</td>
<td style="text-align: right;">4.93</td>
<td style="text-align: right;">1.615</td>
<td style="text-align: right;">18.52</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">2</td>
</tr>
<tr>
<td style="text-align: left;">Toyota Corolla</td>
<td style="text-align: right;">33.9</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">71.1</td>
<td style="text-align: right;">65</td>
<td style="text-align: right;">4.22</td>
<td style="text-align: right;">1.835</td>
<td style="text-align: right;">19.90</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">1</td>
</tr>
<tr>
<td style="text-align: left;">Toyota Corona</td>
<td style="text-align: right;">21.5</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">120.1</td>
<td style="text-align: right;">97</td>
<td style="text-align: right;">3.70</td>
<td style="text-align: right;">2.465</td>
<td style="text-align: right;">20.01</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">1</td>
</tr>
<tr>
<td style="text-align: left;">Dodge Challenger</td>
<td style="text-align: right;">15.5</td>
<td style="text-align: right;">8</td>
<td style="text-align: right;">318.0</td>
<td style="text-align: right;">150</td>
<td style="text-align: right;">2.76</td>
<td style="text-align: right;">3.520</td>
<td style="text-align: right;">16.87</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">2</td>
</tr>
<tr>
<td style="text-align: left;">AMC Javelin</td>
<td style="text-align: right;">15.2</td>
<td style="text-align: right;">8</td>
<td style="text-align: right;">304.0</td>
<td style="text-align: right;">150</td>
<td style="text-align: right;">3.15</td>
<td style="text-align: right;">3.435</td>
<td style="text-align: right;">17.30</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">2</td>
</tr>
<tr>
<td style="text-align: left;">Camaro Z28</td>
<td style="text-align: right;">13.3</td>
<td style="text-align: right;">8</td>
<td style="text-align: right;">350.0</td>
<td style="text-align: right;">245</td>
<td style="text-align: right;">3.73</td>
<td style="text-align: right;">3.840</td>
<td style="text-align: right;">15.41</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">4</td>
</tr>
<tr>
<td style="text-align: left;">Pontiac Firebird</td>
<td style="text-align: right;">19.2</td>
<td style="text-align: right;">8</td>
<td style="text-align: right;">400.0</td>
<td style="text-align: right;">175</td>
<td style="text-align: right;">3.08</td>
<td style="text-align: right;">3.845</td>
<td style="text-align: right;">17.05</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">2</td>
</tr>
<tr>
<td style="text-align: left;">Fiat X1-9</td>
<td style="text-align: right;">27.3</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">79.0</td>
<td style="text-align: right;">66</td>
<td style="text-align: right;">4.08</td>
<td style="text-align: right;">1.935</td>
<td style="text-align: right;">18.90</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">1</td>
</tr>
<tr>
<td style="text-align: left;">Porsche 914-2</td>
<td style="text-align: right;">26.0</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">120.3</td>
<td style="text-align: right;">91</td>
<td style="text-align: right;">4.43</td>
<td style="text-align: right;">2.140</td>
<td style="text-align: right;">16.70</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">5</td>
<td style="text-align: right;">2</td>
</tr>
<tr>
<td style="text-align: left;">Lotus Europa</td>
<td style="text-align: right;">30.4</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">95.1</td>
<td style="text-align: right;">113</td>
<td style="text-align: right;">3.77</td>
<td style="text-align: right;">1.513</td>
<td style="text-align: right;">16.90</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">5</td>
<td style="text-align: right;">2</td>
</tr>
<tr>
<td style="text-align: left;">Ford Pantera L</td>
<td style="text-align: right;">15.8</td>
<td style="text-align: right;">8</td>
<td style="text-align: right;">351.0</td>
<td style="text-align: right;">264</td>
<td style="text-align: right;">4.22</td>
<td style="text-align: right;">3.170</td>
<td style="text-align: right;">14.50</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">5</td>
<td style="text-align: right;">4</td>
</tr>
<tr>
<td style="text-align: left;">Ferrari Dino</td>
<td style="text-align: right;">19.7</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">145.0</td>
<td style="text-align: right;">175</td>
<td style="text-align: right;">3.62</td>
<td style="text-align: right;">2.770</td>
<td style="text-align: right;">15.50</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">5</td>
<td style="text-align: right;">6</td>
</tr>
<tr>
<td style="text-align: left;">Maserati Bora</td>
<td style="text-align: right;">15.0</td>
<td style="text-align: right;">8</td>
<td style="text-align: right;">301.0</td>
<td style="text-align: right;">335</td>
<td style="text-align: right;">3.54</td>
<td style="text-align: right;">3.570</td>
<td style="text-align: right;">14.60</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">5</td>
<td style="text-align: right;">8</td>
</tr>
<tr>
<td style="text-align: left;">Volvo 142E</td>
<td style="text-align: right;">21.4</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">121.0</td>
<td style="text-align: right;">109</td>
<td style="text-align: right;">4.11</td>
<td style="text-align: right;">2.780</td>
<td style="text-align: right;">18.60</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">2</td>
</tr>
</tbody>
</table>

## second level header

### third level header
