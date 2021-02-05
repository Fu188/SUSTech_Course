# -*- coding:utf-8 -*- 
from geopy.geocoders import Nominatim
from geopy.point import Point
import geopy.geocoders
import pandas as pd
import csv

def get_city():
    path = 'station.csv'
    f = open(path)
    station = pd.read_csv(f)
    geolocator = Nominatim()
    csvfile = open('data4.csv', 'w', newline='')
    i = 2777
    remark = [0] * 2829
    name_list = []
    while (i <= 2828):
        try:
            if (remark[i] >= 6):
                i = i + 1
                name_list.append('null')
                continue
            location = geolocator.geocode(station.loc[i][0])
            location = geolocator.reverse(Point(location.latitude, location.longitude))
            if ('state_district' in location.raw['address'].keys()):
                name = location.raw['address']['state_district']
            elif ('city' in location.raw['address'].keys()):
                name = location.raw['address']['city']
            elif ('county' in location.raw['address'].keys()):
                name = location.raw['address']['county']
            else:
                name = location.raw['address']['region']
            name_list.append(name)
            print('**************************')
            for index in name_list:
                print(index)
            i = i + 1
        except Exception as e:
            remark[i] = remark[i] + 1
            print(i)
            continue

def get_code():
    station_path = 'station.csv'
    f = open(station_path)
    station = pd.read_csv(f)

    city_path = 'city.csv'
    f_city = open(city_path)
    city = pd.read_csv(f_city)

    city_code = city.set_index('city')['code'].to_dict()
    csvfile = open('data5.csv', 'w', newline='')
    writer = csv.writer(csvfile)
    for i in range(len(station)):
        code_list = []
        code_list.append(city_code[station.iloc[i][1]])
        writer.writerow(code_list)



station_path = 'station.csv'
f = open(station_path)
station = pd.read_csv(f)

for i in range(len(station)):
    print(f'update station set district_code={station.iloc[i][2]} where station_id = {i+1}')


