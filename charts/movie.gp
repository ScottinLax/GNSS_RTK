

  # TODO: missing total points in chart, binSize

  # Radius of earth at equator in meters
  R = 6371e3
  lat_to_meters(lat,center)=(lat-center)*pi*R/180;
  lng_to_meters(lng,center,lat)=(lng-center)*pi*R*cos(lat*pi/180)/180;

  set terminal pngcairo size 1280,720 background rgb 'black'

  set border lc rgb 'white'
  set key tc rgb 'white'

  set ytics font ",10"
  set y2tics font ",10"
  set xtics font ",10"
  set x2tics font ",10"

  set style line 1 linecolor rgb "green"
  set style line 2 linecolor rgb "blue"

set title "Heatmap histogram of 2 weeks of static GPS survey. u-Blox Neo-6M module. Limited sky view." textcolor rgb 'white'
set xlabel "Longitude (m / °)" textcolor rgb 'white'
set ylabel "Latitude (m / °)" textcolor rgb 'white'

set grid front lc rgb 'white'

clng = -8.98248
clat = 53.28264

set x2range [-8.9830:-8.9820]
set xrange [lng_to_meters(-8.9830,clng,53.28):lng_to_meters(-8.9820,clng,53.28)]
set xtics nomirror
set x2tics

set format y2 '%.5f'
set y2range [53.2824:53.2828]
set yrange [lat_to_meters(53.2824,clat):lat_to_meters(53.2828,clat)]
set ytics nomirror
set y2tics	

set label "Joe Desbonnet, 27 Feb 2016" at graph -0.06,-0.08 font "8" tc rgb "white"

set palette model RGB defined ( 0 'black', 10 'blue', 50 'red', 80 'yellow', 99 'white' )

set cbrange [0:1000]
set cblabel "Count"

