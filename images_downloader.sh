#!/bin/sh

for var in 1 2 3 4 5 6 7 8 9
do
    curl -o ./app/assets/images/${var}.jpg https://raw.githubusercontent.com/Techpit-Contents/laravel-fashion-ec-app/master/public/images/${var}.jpg
done
curl -o ./app/assets/images/top.jpg https://raw.githubusercontent.com/Techpit-Contents/laravel-fashion-ec-app/master/public/images/top.jpg
curl -o ./app/assets/images/top2.jpg https://raw.githubusercontent.com/Techpit-Contents/laravel-fashion-ec-app/master/public/images/top2.jpg
