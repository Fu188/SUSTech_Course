import time
import requests
import re
import csv
import urllib.request
import datetime
from bs4 import BeautifulSoup
from pinyin import pinyin

requests.packages.urllib3.disable_warnings()
header = {
    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36"}


# get all station names
def getStationName():
    url = 'https://www.12306.cn/index/script/core/common/station_name_v10074.js'
    r = requests.get(url)
    pattern = '([\u4e00-\u9fa5]+)\|([A-Z]+)'
    result = re.findall(pattern, r.text)
    stationName = dict(result)
    return stationName

def get_query_url(date, from_station, to_station):
    date = date
    url = ("https://train.qunar.com/dict/open/s2s.do?" +
           "&dptStation={}" +
           "&arrStation={}" +
           "&date={}" +
           "&type=normal&user=neibu&source=site&start=1&num=500&sort=3&_=1587212984330").format(from_station,
                                                                                                to_station, date)
    return url

def get_information():
    station_set = getStationName()
    header = {
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36"}
    csvfile = open('data2.csv', 'w', newline='')
    writer = csv.writer(csvfile)
    writer.writerow(['trainNo', 'trainCode',
                     'dptStationName', 'dptStationCode', 'dptStationNo',
                     'arrStationName', 'arrStationCode', 'arrStationNo',
                     'dptCityName', 'arrCityName',
                     'startStationName', 'startStationCode', 'endStationName', 'endStationCode',
                     'startDate', 'dptDate', 'arrDate', 'dptTime', 'arrTime',
                     'interval', 'intervalMiles',
                     'business_price', 'first_price', 'second_price', 'no_price'])
    for (i1, i2) in station_set.items():
        for (j1, j2) in station_set.items():
            if i1 != j1:
                url = get_query_url('2020-04-27', i1, j1)
                req = requests.get(url=url, headers=header)
                all_trains = req.json()
                if len(all_trains) == 0:
                    continue
                else:
                    print(all_trains)
                    if all_trains['ret'] == False:
                        continue
                    all_trains = all_trains['data']['s2sBeanList']
                for one_train in all_trains:
                    infoList = []
                    infoList.append(one_train['trainNo'])
                    infoList.append(one_train['trainCode'])
                    infoList.append(one_train['dptStationName'])
                    infoList.append(one_train['dptStationCode'])
                    infoList.append(one_train['dptStationNo'])
                    infoList.append(one_train['arrStationName'])
                    infoList.append(one_train['arrStationCode'])
                    infoList.append(one_train['arrStationNo'])
                    infoList.append(one_train['extraBeanMap']['dptCityName'])
                    infoList.append(one_train['extraBeanMap']['arrCityName'])
                    infoList.append(one_train['startStationName'])
                    infoList.append(one_train['startStationCode'])
                    infoList.append(one_train['endStationName'])
                    infoList.append(one_train['endStationCode'])
                    infoList.append(one_train['startDate'])
                    infoList.append(one_train['extraBeanMap']['dptDate'])
                    infoList.append(one_train['extraBeanMap']['arrDate'])
                    infoList.append(one_train['dptTime'])
                    infoList.append(one_train['arrTime'])
                    infoList.append(one_train['extraBeanMap']['interval'])
                    infoList.append(one_train['extraBeanMap']['intervalMiles'])
                    if ('商务座' in one_train['seats'].keys()):
                        infoList.append(one_train['seats']['商务座']['price'])
                    else:
                        infoList.append(0)
                    if ('一等座' in one_train['seats'].keys()):
                        infoList.append(one_train['seats']['一等座']['price'])
                    else:
                        infoList.append(0)
                    if ('二等座' in one_train['seats'].keys()):
                        infoList.append(one_train['seats']['二等座']['price'])
                    else:
                        infoList.append(0)
                    if ('无座' in one_train['seats'].keys()):
                        infoList.append(one_train['seats']['无座']['price'])
                    else:
                        infoList.append(0)
                    writer.writerow(infoList)
            time.sleep(1)
    csvfile.close()
#
def getNum():
    route = []
    for i in range(1,447):
        url = "http://search.huochepiao.com/update/bianhao/?p={}".format(i)
        doc = urllib.request.urlopen(url)
        doc = doc.read().decode('gb18030')
        soup = BeautifulSoup(doc, 'html.parser')
        index1 = 0
        index2 = 0
        for table in soup.find_all('table', ):
            index1 = index1 + 1
            if index1 == 6:
                for tr in table.find_all('tr', ):
                    index2 = index2 + 1
                    if index2 != 1:
                        td = tr.find_all('td')
                        print(td[0].text.strip())
                        route.append(td[0].text.strip())
    return route
#
#
def getRoute():
    route = getNum()
    csvfile = open('data3.csv', 'w', newline='')
    writer = csv.writer(csvfile)
    writer.writerow(['trainNo','stationNo','stationName',
                     'arrTime','startTime','intervalTime',
                     'arrDay','executeTime','intervalMile',
                     'first_price','second_price'])
    for i in range(len(route)):
        if i>=8814:
            print(i)
            url = "http://gaotie.huochepiao.com/chaxun/resultc.asp?txtCheCi={}".format(route[i])
            doc = urllib.request.urlopen(url,timeout=9999)
            doc = doc.read().decode('gb18030')
            soup = BeautifulSoup(doc,'html.parser')
            index1 = 0
            index2 = 0
            for table in soup.find_all('table',):
                index1 = index1+1
                if index1==5:
                    for tr in table.find_all('tr',):
                        infoList = []
                        index2 = index2 + 1
                        if index2 != 1:
                            td = tr.find_all('td')
                            try:
                                infoList.append(route[i])
                                infoList.append(td[1].text.strip())
                                infoList.append(td[2].text.strip())
                                infoList.append(td[4].text.strip())
                                infoList.append(td[5].text.strip())
                                infoList.append(td[6].text.strip())
                                infoList.append(td[7].text.strip())
                                infoList.append(td[8].text.strip())
                                infoList.append(td[9].text.strip())
                                temp = td[10].text.strip().split('/')
                                infoList.append(temp[1])
                                infoList.append(temp[0])
                                print(infoList)
                                writer.writerow(infoList)
                            except IndexError as e:
                                pass
            time.sleep(5)
    csvfile.close()

getRoute()

info = getStationName()
res = []
for (key,value) in info.items():
    temp = {}
    temp['id'] = '100010'
    temp['parentId'] = '100010'
    temp['shortName'] = key
    temp['name'] = key
    temp['cityCode'] = value
    temp['pinyin'] = pinyin.get(key,format='strip').capitalize()
    temp['letter'] = temp['pinyin'][0:1]
    res.append(temp)
print(res)

