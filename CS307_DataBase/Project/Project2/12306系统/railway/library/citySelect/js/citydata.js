var cityData = [
    {
        "id": "100000",
        "name": "中国",
        "parentId": "0",
        "shortName": "中国",
        "letter": "C",
        "cityCode": "",
        "pinyin": "China"
    },
    {
        "id": "110000",
        "name": "北京市",
        "parentId": "100000",
        "shortName": "北京",
        "letter": "B",
        "cityCode": "",
        "pinyin": "Beijing"
    },
    {
        "id": "110100",
        "name": "北京市",
        "parentId": "110000",
        "shortName": "北京",
        "letter": "B",
        "cityCode": "010",
        "pinyin": "Beijing"
    },
    {
        "id": "110101",
        "name": "东城区",
        "parentId": "110100",
        "shortName": "东城",
        "letter": "D",
        "cityCode": "010",
        "pinyin": "Dongcheng"
    },
    {
        "id": "110102",
        "name": "西城区",
        "parentId": "110100",
        "shortName": "西城",
        "letter": "X",
        "cityCode": "010",
        "pinyin": "Xicheng"
    },
    {
        "id": "110105",
        "name": "朝阳区",
        "parentId": "110100",
        "shortName": "朝阳",
        "letter": "C",
        "cityCode": "010",
        "pinyin": "Chaoyang"
    },
    {
        "id": "110106",
        "name": "丰台区",
        "parentId": "110100",
        "shortName": "丰台",
        "letter": "F",
        "cityCode": "010",
        "pinyin": "Fengtai"
    },
    {
        "id": "110107",
        "name": "石景山区",
        "parentId": "110100",
        "shortName": "石景山",
        "letter": "S",
        "cityCode": "010",
        "pinyin": "Shijingshan"
    },
    {
        "id": "110108",
        "name": "海淀区",
        "parentId": "110100",
        "shortName": "海淀",
        "letter": "H",
        "cityCode": "010",
        "pinyin": "Haidian"
    },
    {
        "id": "110109",
        "name": "门头沟区",
        "parentId": "110100",
        "shortName": "门头沟",
        "letter": "M",
        "cityCode": "010",
        "pinyin": "Mentougou"
    },
    {
        "id": "110111",
        "name": "房山区",
        "parentId": "110100",
        "shortName": "房山",
        "letter": "F",
        "cityCode": "010",
        "pinyin": "Fangshan"
    },
    {
        "id": "110112",
        "name": "通州区",
        "parentId": "110100",
        "shortName": "通州",
        "letter": "T",
        "cityCode": "010",
        "pinyin": "Tongzhou"
    },
    {
        "id": "110113",
        "name": "顺义区",
        "parentId": "110100",
        "shortName": "顺义",
        "letter": "S",
        "cityCode": "010",
        "pinyin": "Shunyi"
    },
    {
        "id": "110114",
        "name": "昌平区",
        "parentId": "110100",
        "shortName": "昌平",
        "letter": "C",
        "cityCode": "010",
        "pinyin": "Changping"
    },
    {
        "id": "110115",
        "name": "大兴区",
        "parentId": "110100",
        "shortName": "大兴",
        "letter": "D",
        "cityCode": "010",
        "pinyin": "Daxing"
    },
    {
        "id": "110116",
        "name": "怀柔区",
        "parentId": "110100",
        "shortName": "怀柔",
        "letter": "H",
        "cityCode": "010",
        "pinyin": "Huairou"
    },
    {
        "id": "110117",
        "name": "平谷区",
        "parentId": "110100",
        "shortName": "平谷",
        "letter": "P",
        "cityCode": "010",
        "pinyin": "Pinggu"
    },
    {
        "id": "110228",
        "name": "密云县",
        "parentId": "110100",
        "shortName": "密云",
        "letter": "M",
        "cityCode": "010",
        "pinyin": "Miyun"
    },
    {
        "id": "110229",
        "name": "延庆县",
        "parentId": "110100",
        "shortName": "延庆",
        "letter": "Y",
        "cityCode": "010",
        "pinyin": "Yanqing"
    },
    {
        "id": "120000",
        "name": "天津市",
        "parentId": "100000",
        "shortName": "天津",
        "letter": "T",
        "cityCode": "",
        "pinyin": "Tianjin"
    },
    {
        "id": "120100",
        "name": "天津市",
        "parentId": "120000",
        "shortName": "天津",
        "letter": "T",
        "cityCode": "022",
        "pinyin": "Tianjin"
    },
    {
        "id": "120101",
        "name": "和平区",
        "parentId": "120100",
        "shortName": "和平",
        "letter": "H",
        "cityCode": "022",
        "pinyin": "Heping"
    },
    {
        "id": "120102",
        "name": "河东区",
        "parentId": "120100",
        "shortName": "河东",
        "letter": "H",
        "cityCode": "022",
        "pinyin": "Hedong"
    },
    {
        "id": "120103",
        "name": "河西区",
        "parentId": "120100",
        "shortName": "河西",
        "letter": "H",
        "cityCode": "022",
        "pinyin": "Hexi"
    },
    {
        "id": "120104",
        "name": "南开区",
        "parentId": "120100",
        "shortName": "南开",
        "letter": "N",
        "cityCode": "022",
        "pinyin": "Nankai"
    },
    {
        "id": "120105",
        "name": "河北区",
        "parentId": "120100",
        "shortName": "河北",
        "letter": "H",
        "cityCode": "022",
        "pinyin": "Hebei"
    },
    {
        "id": "120106",
        "name": "红桥区",
        "parentId": "120100",
        "shortName": "红桥",
        "letter": "H",
        "cityCode": "022",
        "pinyin": "Hongqiao"
    },
    {
        "id": "120110",
        "name": "东丽区",
        "parentId": "120100",
        "shortName": "东丽",
        "letter": "D",
        "cityCode": "022",
        "pinyin": "Dongli"
    },
    {
        "id": "120111",
        "name": "西青区",
        "parentId": "120100",
        "shortName": "西青",
        "letter": "X",
        "cityCode": "022",
        "pinyin": "Xiqing"
    },
    {
        "id": "120112",
        "name": "津南区",
        "parentId": "120100",
        "shortName": "津南",
        "letter": "J",
        "cityCode": "022",
        "pinyin": "Jinnan"
    },
    {
        "id": "120113",
        "name": "北辰区",
        "parentId": "120100",
        "shortName": "北辰",
        "letter": "B",
        "cityCode": "022",
        "pinyin": "Beichen"
    },
    {
        "id": "120114",
        "name": "武清区",
        "parentId": "120100",
        "shortName": "武清",
        "letter": "W",
        "cityCode": "022",
        "pinyin": "Wuqing"
    },
    {
        "id": "120115",
        "name": "宝坻区",
        "parentId": "120100",
        "shortName": "宝坻",
        "letter": "B",
        "cityCode": "022",
        "pinyin": "Baodi"
    },
    {
        "id": "120116",
        "name": "滨海新区",
        "parentId": "120100",
        "shortName": "滨海新区",
        "letter": "B",
        "cityCode": "022",
        "pinyin": "Binhaixinqu"
    },
    {
        "id": "120221",
        "name": "宁河县",
        "parentId": "120100",
        "shortName": "宁河",
        "letter": "N",
        "cityCode": "022",
        "pinyin": "Ninghe"
    },
    {
        "id": "120223",
        "name": "静海县",
        "parentId": "120100",
        "shortName": "静海",
        "letter": "J",
        "cityCode": "022",
        "pinyin": "Jinghai"
    },
    {
        "id": "120225",
        "name": "蓟县",
        "parentId": "120100",
        "shortName": "蓟县",
        "letter": "J",
        "cityCode": "022",
        "pinyin": "Jixian"
    },
    {
        "id": "130000",
        "name": "河北省",
        "parentId": "100000",
        "shortName": "河北",
        "letter": "H",
        "cityCode": "",
        "pinyin": "Hebei"
    },
    {
        "id": "130100",
        "name": "石家庄市",
        "parentId": "130000",
        "shortName": "石家庄",
        "letter": "S",
        "cityCode": "0311",
        "pinyin": "Shijiazhuang"
    },
    {
        "id": "130102",
        "name": "长安区",
        "parentId": "130100",
        "shortName": "长安",
        "letter": "C",
        "cityCode": "0311",
        "pinyin": "Chang'an"
    },
    {
        "id": "130104",
        "name": "桥西区",
        "parentId": "130100",
        "shortName": "桥西",
        "letter": "Q",
        "cityCode": "0311",
        "pinyin": "Qiaoxi"
    },
    {
        "id": "130105",
        "name": "新华区",
        "parentId": "130100",
        "shortName": "新华",
        "letter": "X",
        "cityCode": "0311",
        "pinyin": "Xinhua"
    },
    {
        "id": "130107",
        "name": "井陉矿区",
        "parentId": "130100",
        "shortName": "井陉矿区",
        "letter": "J",
        "cityCode": "0311",
        "pinyin": "Jingxingkuangqu"
    },
    {
        "id": "130108",
        "name": "裕华区",
        "parentId": "130100",
        "shortName": "裕华",
        "letter": "Y",
        "cityCode": "0311",
        "pinyin": "Yuhua"
    },
    {
        "id": "130109",
        "name": "藁城区",
        "parentId": "130100",
        "shortName": "藁城",
        "letter": "G",
        "cityCode": "0311",
        "pinyin": "Gaocheng"
    },
    {
        "id": "130110",
        "name": "鹿泉区",
        "parentId": "130100",
        "shortName": "鹿泉",
        "letter": "L",
        "cityCode": "0311",
        "pinyin": "Luquan"
    },
    {
        "id": "130111",
        "name": "栾城区",
        "parentId": "130100",
        "shortName": "栾城",
        "letter": "L",
        "cityCode": "0311",
        "pinyin": "Luancheng"
    },
    {
        "id": "130121",
        "name": "井陉县",
        "parentId": "130100",
        "shortName": "井陉",
        "letter": "J",
        "cityCode": "0311",
        "pinyin": "Jingxing"
    },
    {
        "id": "130123",
        "name": "正定县",
        "parentId": "130100",
        "shortName": "正定",
        "letter": "Z",
        "cityCode": "0311",
        "pinyin": "Zhengding"
    },
    {
        "id": "130125",
        "name": "行唐县",
        "parentId": "130100",
        "shortName": "行唐",
        "letter": "X",
        "cityCode": "0311",
        "pinyin": "Xingtang"
    },
    {
        "id": "130126",
        "name": "灵寿县",
        "parentId": "130100",
        "shortName": "灵寿",
        "letter": "L",
        "cityCode": "0311",
        "pinyin": "Lingshou"
    },
    {
        "id": "130127",
        "name": "高邑县",
        "parentId": "130100",
        "shortName": "高邑",
        "letter": "G",
        "cityCode": "0311",
        "pinyin": "Gaoyi"
    },
    {
        "id": "130128",
        "name": "深泽县",
        "parentId": "130100",
        "shortName": "深泽",
        "letter": "S",
        "cityCode": "0311",
        "pinyin": "Shenze"
    },
    {
        "id": "130129",
        "name": "赞皇县",
        "parentId": "130100",
        "shortName": "赞皇",
        "letter": "Z",
        "cityCode": "0311",
        "pinyin": "Zanhuang"
    },
    {
        "id": "130130",
        "name": "无极县",
        "parentId": "130100",
        "shortName": "无极",
        "letter": "W",
        "cityCode": "0311",
        "pinyin": "Wuji"
    },
    {
        "id": "130131",
        "name": "平山县",
        "parentId": "130100",
        "shortName": "平山",
        "letter": "P",
        "cityCode": "0311",
        "pinyin": "Pingshan"
    },
    {
        "id": "130132",
        "name": "元氏县",
        "parentId": "130100",
        "shortName": "元氏",
        "letter": "Y",
        "cityCode": "0311",
        "pinyin": "Yuanshi"
    },
    {
        "id": "130133",
        "name": "赵县",
        "parentId": "130100",
        "shortName": "赵县",
        "letter": "Z",
        "cityCode": "0311",
        "pinyin": "Zhaoxian"
    },
    {
        "id": "130181",
        "name": "辛集市",
        "parentId": "130100",
        "shortName": "辛集",
        "letter": "X",
        "cityCode": "0311",
        "pinyin": "Xinji"
    },
    {
        "id": "130183",
        "name": "晋州市",
        "parentId": "130100",
        "shortName": "晋州",
        "letter": "J",
        "cityCode": "0311",
        "pinyin": "Jinzhou"
    },
    {
        "id": "130184",
        "name": "新乐市",
        "parentId": "130100",
        "shortName": "新乐",
        "letter": "X",
        "cityCode": "0311",
        "pinyin": "Xinle"
    },
    {
        "id": "130200",
        "name": "唐山市",
        "parentId": "130000",
        "shortName": "唐山",
        "letter": "T",
        "cityCode": "0315",
        "pinyin": "Tangshan"
    },
    {
        "id": "130202",
        "name": "路南区",
        "parentId": "130200",
        "shortName": "路南",
        "letter": "L",
        "cityCode": "0315",
        "pinyin": "Lunan"
    },
    {
        "id": "130203",
        "name": "路北区",
        "parentId": "130200",
        "shortName": "路北",
        "letter": "L",
        "cityCode": "0315",
        "pinyin": "Lubei"
    },
    {
        "id": "130204",
        "name": "古冶区",
        "parentId": "130200",
        "shortName": "古冶",
        "letter": "G",
        "cityCode": "0315",
        "pinyin": "Guye"
    },
    {
        "id": "130205",
        "name": "开平区",
        "parentId": "130200",
        "shortName": "开平",
        "letter": "K",
        "cityCode": "0315",
        "pinyin": "Kaiping"
    },
    {
        "id": "130207",
        "name": "丰南区",
        "parentId": "130200",
        "shortName": "丰南",
        "letter": "F",
        "cityCode": "0315",
        "pinyin": "Fengnan"
    },
    {
        "id": "130208",
        "name": "丰润区",
        "parentId": "130200",
        "shortName": "丰润",
        "letter": "F",
        "cityCode": "0315",
        "pinyin": "Fengrun"
    },
    {
        "id": "130209",
        "name": "曹妃甸区",
        "parentId": "130200",
        "shortName": "曹妃甸",
        "letter": "C",
        "cityCode": "0315",
        "pinyin": "Caofeidian"
    },
    {
        "id": "130223",
        "name": "滦县",
        "parentId": "130200",
        "shortName": "滦县",
        "letter": "L",
        "cityCode": "0315",
        "pinyin": "Luanxian"
    },
    {
        "id": "130224",
        "name": "滦南县",
        "parentId": "130200",
        "shortName": "滦南",
        "letter": "L",
        "cityCode": "0315",
        "pinyin": "Luannan"
    },
    {
        "id": "130225",
        "name": "乐亭县",
        "parentId": "130200",
        "shortName": "乐亭",
        "letter": "L",
        "cityCode": "0315",
        "pinyin": "Laoting"
    },
    {
        "id": "130227",
        "name": "迁西县",
        "parentId": "130200",
        "shortName": "迁西",
        "letter": "Q",
        "cityCode": "0315",
        "pinyin": "Qianxi"
    },
    {
        "id": "130229",
        "name": "玉田县",
        "parentId": "130200",
        "shortName": "玉田",
        "letter": "Y",
        "cityCode": "0315",
        "pinyin": "Yutian"
    },
    {
        "id": "130281",
        "name": "遵化市",
        "parentId": "130200",
        "shortName": "遵化",
        "letter": "Z",
        "cityCode": "0315",
        "pinyin": "Zunhua"
    },
    {
        "id": "130283",
        "name": "迁安市",
        "parentId": "130200",
        "shortName": "迁安",
        "letter": "Q",
        "cityCode": "0315",
        "pinyin": "Qian'an"
    },
    {
        "id": "130300",
        "name": "秦皇岛市",
        "parentId": "130000",
        "shortName": "秦皇岛",
        "letter": "Q",
        "cityCode": "0335",
        "pinyin": "Qinhuangdao"
    },
    {
        "id": "130302",
        "name": "海港区",
        "parentId": "130300",
        "shortName": "海港",
        "letter": "H",
        "cityCode": "0335",
        "pinyin": "Haigang"
    },
    {
        "id": "130303",
        "name": "山海关区",
        "parentId": "130300",
        "shortName": "山海关",
        "letter": "S",
        "cityCode": "0335",
        "pinyin": "Shanhaiguan"
    },
    {
        "id": "130304",
        "name": "北戴河区",
        "parentId": "130300",
        "shortName": "北戴河",
        "letter": "B",
        "cityCode": "0335",
        "pinyin": "Beidaihe"
    },
    {
        "id": "130321",
        "name": "青龙满族自治县",
        "parentId": "130300",
        "shortName": "青龙",
        "letter": "Q",
        "cityCode": "0335",
        "pinyin": "Qinglong"
    },
    {
        "id": "130322",
        "name": "昌黎县",
        "parentId": "130300",
        "shortName": "昌黎",
        "letter": "C",
        "cityCode": "0335",
        "pinyin": "Changli"
    },
    {
        "id": "130323",
        "name": "抚宁县",
        "parentId": "130300",
        "shortName": "抚宁",
        "letter": "F",
        "cityCode": "0335",
        "pinyin": "Funing"
    },
    {
        "id": "130324",
        "name": "卢龙县",
        "parentId": "130300",
        "shortName": "卢龙",
        "letter": "L",
        "cityCode": "0335",
        "pinyin": "Lulong"
    },
    {
        "id": "130400",
        "name": "邯郸市",
        "parentId": "130000",
        "shortName": "邯郸",
        "letter": "H",
        "cityCode": "0310",
        "pinyin": "Handan"
    },
    {
        "id": "130402",
        "name": "邯山区",
        "parentId": "130400",
        "shortName": "邯山",
        "letter": "H",
        "cityCode": "0310",
        "pinyin": "Hanshan"
    },
    {
        "id": "130403",
        "name": "丛台区",
        "parentId": "130400",
        "shortName": "丛台",
        "letter": "C",
        "cityCode": "0310",
        "pinyin": "Congtai"
    },
    {
        "id": "130404",
        "name": "复兴区",
        "parentId": "130400",
        "shortName": "复兴",
        "letter": "F",
        "cityCode": "0310",
        "pinyin": "Fuxing"
    },
    {
        "id": "130406",
        "name": "峰峰矿区",
        "parentId": "130400",
        "shortName": "峰峰矿区",
        "letter": "F",
        "cityCode": "0310",
        "pinyin": "Fengfengkuangqu"
    },
    {
        "id": "130421",
        "name": "邯郸县",
        "parentId": "130400",
        "shortName": "邯郸",
        "letter": "H",
        "cityCode": "0310",
        "pinyin": "Handan"
    },
    {
        "id": "130423",
        "name": "临漳县",
        "parentId": "130400",
        "shortName": "临漳",
        "letter": "L",
        "cityCode": "0310",
        "pinyin": "Linzhang"
    },
    {
        "id": "130424",
        "name": "成安县",
        "parentId": "130400",
        "shortName": "成安",
        "letter": "C",
        "cityCode": "0310",
        "pinyin": "Cheng'an"
    },
    {
        "id": "130425",
        "name": "大名县",
        "parentId": "130400",
        "shortName": "大名",
        "letter": "D",
        "cityCode": "0310",
        "pinyin": "Daming"
    },
    {
        "id": "130426",
        "name": "涉县",
        "parentId": "130400",
        "shortName": "涉县",
        "letter": "S",
        "cityCode": "0310",
        "pinyin": "Shexian"
    },
    {
        "id": "130427",
        "name": "磁县",
        "parentId": "130400",
        "shortName": "磁县",
        "letter": "C",
        "cityCode": "0310",
        "pinyin": "Cixian"
    },
    {
        "id": "130428",
        "name": "肥乡县",
        "parentId": "130400",
        "shortName": "肥乡",
        "letter": "F",
        "cityCode": "0310",
        "pinyin": "Feixiang"
    },
    {
        "id": "130429",
        "name": "永年县",
        "parentId": "130400",
        "shortName": "永年",
        "letter": "Y",
        "cityCode": "0310",
        "pinyin": "Yongnian"
    },
    {
        "id": "130430",
        "name": "邱县",
        "parentId": "130400",
        "shortName": "邱县",
        "letter": "Q",
        "cityCode": "0310",
        "pinyin": "Qiuxian"
    },
    {
        "id": "130431",
        "name": "鸡泽县",
        "parentId": "130400",
        "shortName": "鸡泽",
        "letter": "J",
        "cityCode": "0310",
        "pinyin": "Jize"
    },
    {
        "id": "130432",
        "name": "广平县",
        "parentId": "130400",
        "shortName": "广平",
        "letter": "G",
        "cityCode": "0310",
        "pinyin": "Guangping"
    },
    {
        "id": "130433",
        "name": "馆陶县",
        "parentId": "130400",
        "shortName": "馆陶",
        "letter": "G",
        "cityCode": "0310",
        "pinyin": "Guantao"
    },
    {
        "id": "130434",
        "name": "魏县",
        "parentId": "130400",
        "shortName": "魏县",
        "letter": "W",
        "cityCode": "0310",
        "pinyin": "Weixian"
    },
    {
        "id": "130435",
        "name": "曲周县",
        "parentId": "130400",
        "shortName": "曲周",
        "letter": "Q",
        "cityCode": "0310",
        "pinyin": "Quzhou"
    },
    {
        "id": "130481",
        "name": "武安市",
        "parentId": "130400",
        "shortName": "武安",
        "letter": "W",
        "cityCode": "0310",
        "pinyin": "Wu'an"
    },
    {
        "id": "130500",
        "name": "邢台市",
        "parentId": "130000",
        "shortName": "邢台",
        "letter": "X",
        "cityCode": "0319",
        "pinyin": "Xingtai"
    },
    {
        "id": "130502",
        "name": "桥东区",
        "parentId": "130500",
        "shortName": "桥东",
        "letter": "Q",
        "cityCode": "0319",
        "pinyin": "Qiaodong"
    },
    {
        "id": "130503",
        "name": "桥西区",
        "parentId": "130500",
        "shortName": "桥西",
        "letter": "Q",
        "cityCode": "0319",
        "pinyin": "Qiaoxi"
    },
    {
        "id": "130521",
        "name": "邢台县",
        "parentId": "130500",
        "shortName": "邢台",
        "letter": "X",
        "cityCode": "0319",
        "pinyin": "Xingtai"
    },
    {
        "id": "130522",
        "name": "临城县",
        "parentId": "130500",
        "shortName": "临城",
        "letter": "L",
        "cityCode": "0319",
        "pinyin": "Lincheng"
    },
    {
        "id": "130523",
        "name": "内丘县",
        "parentId": "130500",
        "shortName": "内丘",
        "letter": "N",
        "cityCode": "0319",
        "pinyin": "Neiqiu"
    },
    {
        "id": "130524",
        "name": "柏乡县",
        "parentId": "130500",
        "shortName": "柏乡",
        "letter": "B",
        "cityCode": "0319",
        "pinyin": "Baixiang"
    },
    {
        "id": "130525",
        "name": "隆尧县",
        "parentId": "130500",
        "shortName": "隆尧",
        "letter": "L",
        "cityCode": "0319",
        "pinyin": "Longyao"
    },
    {
        "id": "130526",
        "name": "任县",
        "parentId": "130500",
        "shortName": "任县",
        "letter": "R",
        "cityCode": "0319",
        "pinyin": "Renxian"
    },
    {
        "id": "130527",
        "name": "南和县",
        "parentId": "130500",
        "shortName": "南和",
        "letter": "N",
        "cityCode": "0319",
        "pinyin": "Nanhe"
    },
    {
        "id": "130528",
        "name": "宁晋县",
        "parentId": "130500",
        "shortName": "宁晋",
        "letter": "N",
        "cityCode": "0319",
        "pinyin": "Ningjin"
    },
    {
        "id": "130529",
        "name": "巨鹿县",
        "parentId": "130500",
        "shortName": "巨鹿",
        "letter": "J",
        "cityCode": "0319",
        "pinyin": "Julu"
    },
    {
        "id": "130530",
        "name": "新河县",
        "parentId": "130500",
        "shortName": "新河",
        "letter": "X",
        "cityCode": "0319",
        "pinyin": "Xinhe"
    },
    {
        "id": "130531",
        "name": "广宗县",
        "parentId": "130500",
        "shortName": "广宗",
        "letter": "G",
        "cityCode": "0319",
        "pinyin": "Guangzong"
    },
    {
        "id": "130532",
        "name": "平乡县",
        "parentId": "130500",
        "shortName": "平乡",
        "letter": "P",
        "cityCode": "0319",
        "pinyin": "Pingxiang"
    },
    {
        "id": "130533",
        "name": "威县",
        "parentId": "130500",
        "shortName": "威县",
        "letter": "W",
        "cityCode": "0319",
        "pinyin": "Weixian"
    },
    {
        "id": "130534",
        "name": "清河县",
        "parentId": "130500",
        "shortName": "清河",
        "letter": "Q",
        "cityCode": "0319",
        "pinyin": "Qinghe"
    },
    {
        "id": "130535",
        "name": "临西县",
        "parentId": "130500",
        "shortName": "临西",
        "letter": "L",
        "cityCode": "0319",
        "pinyin": "Linxi"
    },
    {
        "id": "130581",
        "name": "南宫市",
        "parentId": "130500",
        "shortName": "南宫",
        "letter": "N",
        "cityCode": "0319",
        "pinyin": "Nangong"
    },
    {
        "id": "130582",
        "name": "沙河市",
        "parentId": "130500",
        "shortName": "沙河",
        "letter": "S",
        "cityCode": "0319",
        "pinyin": "Shahe"
    },
    {
        "id": "130600",
        "name": "保定市",
        "parentId": "130000",
        "shortName": "保定",
        "letter": "B",
        "cityCode": "0312",
        "pinyin": "Baoding"
    },
    {
        "id": "130602",
        "name": "新市区",
        "parentId": "130600",
        "shortName": "新市",
        "letter": "X",
        "cityCode": "0312",
        "pinyin": "Xinshi"
    },
    {
        "id": "130603",
        "name": "北市区",
        "parentId": "130600",
        "shortName": "北市",
        "letter": "B",
        "cityCode": "0312",
        "pinyin": "Beishi"
    },
    {
        "id": "130604",
        "name": "南市区",
        "parentId": "130600",
        "shortName": "南市",
        "letter": "N",
        "cityCode": "0312",
        "pinyin": "Nanshi"
    },
    {
        "id": "130621",
        "name": "满城县",
        "parentId": "130600",
        "shortName": "满城",
        "letter": "M",
        "cityCode": "0312",
        "pinyin": "Mancheng"
    },
    {
        "id": "130622",
        "name": "清苑县",
        "parentId": "130600",
        "shortName": "清苑",
        "letter": "Q",
        "cityCode": "0312",
        "pinyin": "Qingyuan"
    },
    {
        "id": "130623",
        "name": "涞水县",
        "parentId": "130600",
        "shortName": "涞水",
        "letter": "L",
        "cityCode": "0312",
        "pinyin": "Laishui"
    },
    {
        "id": "130624",
        "name": "阜平县",
        "parentId": "130600",
        "shortName": "阜平",
        "letter": "F",
        "cityCode": "0312",
        "pinyin": "Fuping"
    },
    {
        "id": "130625",
        "name": "徐水县",
        "parentId": "130600",
        "shortName": "徐水",
        "letter": "X",
        "cityCode": "0312",
        "pinyin": "Xushui"
    },
    {
        "id": "130626",
        "name": "定兴县",
        "parentId": "130600",
        "shortName": "定兴",
        "letter": "D",
        "cityCode": "0312",
        "pinyin": "Dingxing"
    },
    {
        "id": "130627",
        "name": "唐县",
        "parentId": "130600",
        "shortName": "唐县",
        "letter": "T",
        "cityCode": "0312",
        "pinyin": "Tangxian"
    },
    {
        "id": "130628",
        "name": "高阳县",
        "parentId": "130600",
        "shortName": "高阳",
        "letter": "G",
        "cityCode": "0312",
        "pinyin": "Gaoyang"
    },
    {
        "id": "130629",
        "name": "容城县",
        "parentId": "130600",
        "shortName": "容城",
        "letter": "R",
        "cityCode": "0312",
        "pinyin": "Rongcheng"
    },
    {
        "id": "130630",
        "name": "涞源县",
        "parentId": "130600",
        "shortName": "涞源",
        "letter": "L",
        "cityCode": "0312",
        "pinyin": "Laiyuan"
    },
    {
        "id": "130631",
        "name": "望都县",
        "parentId": "130600",
        "shortName": "望都",
        "letter": "W",
        "cityCode": "0312",
        "pinyin": "Wangdu"
    },
    {
        "id": "130632",
        "name": "安新县",
        "parentId": "130600",
        "shortName": "安新",
        "letter": "A",
        "cityCode": "0312",
        "pinyin": "Anxin"
    },
    {
        "id": "130633",
        "name": "易县",
        "parentId": "130600",
        "shortName": "易县",
        "letter": "Y",
        "cityCode": "0312",
        "pinyin": "Yixian"
    },
    {
        "id": "130634",
        "name": "曲阳县",
        "parentId": "130600",
        "shortName": "曲阳",
        "letter": "Q",
        "cityCode": "0312",
        "pinyin": "Quyang"
    },
    {
        "id": "130635",
        "name": "蠡县",
        "parentId": "130600",
        "shortName": "蠡县",
        "letter": "L",
        "cityCode": "0312",
        "pinyin": "Lixian"
    },
    {
        "id": "130636",
        "name": "顺平县",
        "parentId": "130600",
        "shortName": "顺平",
        "letter": "S",
        "cityCode": "0312",
        "pinyin": "Shunping"
    },
    {
        "id": "130637",
        "name": "博野县",
        "parentId": "130600",
        "shortName": "博野",
        "letter": "B",
        "cityCode": "0312",
        "pinyin": "Boye"
    },
    {
        "id": "130638",
        "name": "雄县",
        "parentId": "130600",
        "shortName": "雄县",
        "letter": "X",
        "cityCode": "0312",
        "pinyin": "Xiongxian"
    },
    {
        "id": "130681",
        "name": "涿州市",
        "parentId": "130600",
        "shortName": "涿州",
        "letter": "Z",
        "cityCode": "0312",
        "pinyin": "Zhuozhou"
    },
    {
        "id": "130682",
        "name": "定州市",
        "parentId": "130600",
        "shortName": "定州",
        "letter": "D",
        "cityCode": "0312",
        "pinyin": "Dingzhou"
    },
    {
        "id": "130683",
        "name": "安国市",
        "parentId": "130600",
        "shortName": "安国",
        "letter": "A",
        "cityCode": "0312",
        "pinyin": "Anguo"
    },
    {
        "id": "130684",
        "name": "高碑店市",
        "parentId": "130600",
        "shortName": "高碑店",
        "letter": "G",
        "cityCode": "0312",
        "pinyin": "Gaobeidian"
    },
    {
        "id": "130700",
        "name": "张家口市",
        "parentId": "130000",
        "shortName": "张家口",
        "letter": "Z",
        "cityCode": "0313",
        "pinyin": "Zhangjiakou"
    },
    {
        "id": "130702",
        "name": "桥东区",
        "parentId": "130700",
        "shortName": "桥东",
        "letter": "Q",
        "cityCode": "0313",
        "pinyin": "Qiaodong"
    },
    {
        "id": "130703",
        "name": "桥西区",
        "parentId": "130700",
        "shortName": "桥西",
        "letter": "Q",
        "cityCode": "0313",
        "pinyin": "Qiaoxi"
    },
    {
        "id": "130705",
        "name": "宣化区",
        "parentId": "130700",
        "shortName": "宣化",
        "letter": "X",
        "cityCode": "0313",
        "pinyin": "Xuanhua"
    },
    {
        "id": "130706",
        "name": "下花园区",
        "parentId": "130700",
        "shortName": "下花园",
        "letter": "X",
        "cityCode": "0313",
        "pinyin": "Xiahuayuan"
    },
    {
        "id": "130721",
        "name": "宣化县",
        "parentId": "130700",
        "shortName": "宣化",
        "letter": "X",
        "cityCode": "0313",
        "pinyin": "Xuanhua"
    },
    {
        "id": "130722",
        "name": "张北县",
        "parentId": "130700",
        "shortName": "张北",
        "letter": "Z",
        "cityCode": "0313",
        "pinyin": "Zhangbei"
    },
    {
        "id": "130723",
        "name": "康保县",
        "parentId": "130700",
        "shortName": "康保",
        "letter": "K",
        "cityCode": "0313",
        "pinyin": "Kangbao"
    },
    {
        "id": "130724",
        "name": "沽源县",
        "parentId": "130700",
        "shortName": "沽源",
        "letter": "G",
        "cityCode": "0313",
        "pinyin": "Guyuan"
    },
    {
        "id": "130725",
        "name": "尚义县",
        "parentId": "130700",
        "shortName": "尚义",
        "letter": "S",
        "cityCode": "0313",
        "pinyin": "Shangyi"
    },
    {
        "id": "130726",
        "name": "蔚县",
        "parentId": "130700",
        "shortName": "蔚县",
        "letter": "Y",
        "cityCode": "0313",
        "pinyin": "Yuxian"
    },
    {
        "id": "130727",
        "name": "阳原县",
        "parentId": "130700",
        "shortName": "阳原",
        "letter": "Y",
        "cityCode": "0313",
        "pinyin": "Yangyuan"
    },
    {
        "id": "130728",
        "name": "怀安县",
        "parentId": "130700",
        "shortName": "怀安",
        "letter": "H",
        "cityCode": "0313",
        "pinyin": "Huai'an"
    },
    {
        "id": "130729",
        "name": "万全县",
        "parentId": "130700",
        "shortName": "万全",
        "letter": "W",
        "cityCode": "0313",
        "pinyin": "Wanquan"
    },
    {
        "id": "130730",
        "name": "怀来县",
        "parentId": "130700",
        "shortName": "怀来",
        "letter": "H",
        "cityCode": "0313",
        "pinyin": "Huailai"
    },
    {
        "id": "130731",
        "name": "涿鹿县",
        "parentId": "130700",
        "shortName": "涿鹿",
        "letter": "Z",
        "cityCode": "0313",
        "pinyin": "Zhuolu"
    },
    {
        "id": "130732",
        "name": "赤城县",
        "parentId": "130700",
        "shortName": "赤城",
        "letter": "C",
        "cityCode": "0313",
        "pinyin": "Chicheng"
    },
    {
        "id": "130733",
        "name": "崇礼县",
        "parentId": "130700",
        "shortName": "崇礼",
        "letter": "C",
        "cityCode": "0313",
        "pinyin": "Chongli"
    },
    {
        "id": "130800",
        "name": "承德市",
        "parentId": "130000",
        "shortName": "承德",
        "letter": "C",
        "cityCode": "0314",
        "pinyin": "Chengde"
    },
    {
        "id": "130802",
        "name": "双桥区",
        "parentId": "130800",
        "shortName": "双桥",
        "letter": "S",
        "cityCode": "0314",
        "pinyin": "Shuangqiao"
    },
    {
        "id": "130803",
        "name": "双滦区",
        "parentId": "130800",
        "shortName": "双滦",
        "letter": "S",
        "cityCode": "0314",
        "pinyin": "Shuangluan"
    },
    {
        "id": "130804",
        "name": "鹰手营子矿区",
        "parentId": "130800",
        "shortName": "鹰手营子矿区",
        "letter": "Y",
        "cityCode": "0314",
        "pinyin": "Yingshouyingzikuangqu"
    },
    {
        "id": "130821",
        "name": "承德县",
        "parentId": "130800",
        "shortName": "承德",
        "letter": "C",
        "cityCode": "0314",
        "pinyin": "Chengde"
    },
    {
        "id": "130822",
        "name": "兴隆县",
        "parentId": "130800",
        "shortName": "兴隆",
        "letter": "X",
        "cityCode": "0314",
        "pinyin": "Xinglong"
    },
    {
        "id": "130823",
        "name": "平泉县",
        "parentId": "130800",
        "shortName": "平泉",
        "letter": "P",
        "cityCode": "0314",
        "pinyin": "Pingquan"
    },
    {
        "id": "130824",
        "name": "滦平县",
        "parentId": "130800",
        "shortName": "滦平",
        "letter": "L",
        "cityCode": "0314",
        "pinyin": "Luanping"
    },
    {
        "id": "130825",
        "name": "隆化县",
        "parentId": "130800",
        "shortName": "隆化",
        "letter": "L",
        "cityCode": "0314",
        "pinyin": "Longhua"
    },
    {
        "id": "130826",
        "name": "丰宁满族自治县",
        "parentId": "130800",
        "shortName": "丰宁",
        "letter": "F",
        "cityCode": "0314",
        "pinyin": "Fengning"
    },
    {
        "id": "130827",
        "name": "宽城满族自治县",
        "parentId": "130800",
        "shortName": "宽城",
        "letter": "K",
        "cityCode": "0314",
        "pinyin": "Kuancheng"
    },
    {
        "id": "130828",
        "name": "围场满族蒙古族自治县",
        "parentId": "130800",
        "shortName": "围场",
        "letter": "W",
        "cityCode": "0314",
        "pinyin": "Weichang"
    },
    {
        "id": "130900",
        "name": "沧州市",
        "parentId": "130000",
        "shortName": "沧州",
        "letter": "C",
        "cityCode": "0317",
        "pinyin": "Cangzhou"
    },
    {
        "id": "130902",
        "name": "新华区",
        "parentId": "130900",
        "shortName": "新华",
        "letter": "X",
        "cityCode": "0317",
        "pinyin": "Xinhua"
    },
    {
        "id": "130903",
        "name": "运河区",
        "parentId": "130900",
        "shortName": "运河",
        "letter": "Y",
        "cityCode": "0317",
        "pinyin": "Yunhe"
    },
    {
        "id": "130921",
        "name": "沧县",
        "parentId": "130900",
        "shortName": "沧县",
        "letter": "C",
        "cityCode": "0317",
        "pinyin": "Cangxian"
    },
    {
        "id": "130922",
        "name": "青县",
        "parentId": "130900",
        "shortName": "青县",
        "letter": "Q",
        "cityCode": "0317",
        "pinyin": "Qingxian"
    },
    {
        "id": "130923",
        "name": "东光县",
        "parentId": "130900",
        "shortName": "东光",
        "letter": "D",
        "cityCode": "0317",
        "pinyin": "Dongguang"
    },
    {
        "id": "130924",
        "name": "海兴县",
        "parentId": "130900",
        "shortName": "海兴",
        "letter": "H",
        "cityCode": "0317",
        "pinyin": "Haixing"
    },
    {
        "id": "130925",
        "name": "盐山县",
        "parentId": "130900",
        "shortName": "盐山",
        "letter": "Y",
        "cityCode": "0317",
        "pinyin": "Yanshan"
    },
    {
        "id": "130926",
        "name": "肃宁县",
        "parentId": "130900",
        "shortName": "肃宁",
        "letter": "S",
        "cityCode": "0317",
        "pinyin": "Suning"
    },
    {
        "id": "130927",
        "name": "南皮县",
        "parentId": "130900",
        "shortName": "南皮",
        "letter": "N",
        "cityCode": "0317",
        "pinyin": "Nanpi"
    },
    {
        "id": "130928",
        "name": "吴桥县",
        "parentId": "130900",
        "shortName": "吴桥",
        "letter": "W",
        "cityCode": "0317",
        "pinyin": "Wuqiao"
    },
    {
        "id": "130929",
        "name": "献县",
        "parentId": "130900",
        "shortName": "献县",
        "letter": "X",
        "cityCode": "0317",
        "pinyin": "Xianxian"
    },
    {
        "id": "130930",
        "name": "孟村回族自治县",
        "parentId": "130900",
        "shortName": "孟村",
        "letter": "M",
        "cityCode": "0317",
        "pinyin": "Mengcun"
    },
    {
        "id": "130981",
        "name": "泊头市",
        "parentId": "130900",
        "shortName": "泊头",
        "letter": "B",
        "cityCode": "0317",
        "pinyin": "Botou"
    },
    {
        "id": "130982",
        "name": "任丘市",
        "parentId": "130900",
        "shortName": "任丘",
        "letter": "R",
        "cityCode": "0317",
        "pinyin": "Renqiu"
    },
    {
        "id": "130983",
        "name": "黄骅市",
        "parentId": "130900",
        "shortName": "黄骅",
        "letter": "H",
        "cityCode": "0317",
        "pinyin": "Huanghua"
    },
    {
        "id": "130984",
        "name": "河间市",
        "parentId": "130900",
        "shortName": "河间",
        "letter": "H",
        "cityCode": "0317",
        "pinyin": "Hejian"
    },
    {
        "id": "131000",
        "name": "廊坊市",
        "parentId": "130000",
        "shortName": "廊坊",
        "letter": "L",
        "cityCode": "0316",
        "pinyin": "Langfang"
    },
    {
        "id": "131002",
        "name": "安次区",
        "parentId": "131000",
        "shortName": "安次",
        "letter": "A",
        "cityCode": "0316",
        "pinyin": "Anci"
    },
    {
        "id": "131003",
        "name": "广阳区",
        "parentId": "131000",
        "shortName": "广阳",
        "letter": "G",
        "cityCode": "0316",
        "pinyin": "Guangyang"
    },
    {
        "id": "131022",
        "name": "固安县",
        "parentId": "131000",
        "shortName": "固安",
        "letter": "G",
        "cityCode": "0316",
        "pinyin": "Gu'an"
    },
    {
        "id": "131023",
        "name": "永清县",
        "parentId": "131000",
        "shortName": "永清",
        "letter": "Y",
        "cityCode": "0316",
        "pinyin": "Yongqing"
    },
    {
        "id": "131024",
        "name": "香河县",
        "parentId": "131000",
        "shortName": "香河",
        "letter": "X",
        "cityCode": "0316",
        "pinyin": "Xianghe"
    },
    {
        "id": "131025",
        "name": "大城县",
        "parentId": "131000",
        "shortName": "大城",
        "letter": "D",
        "cityCode": "0316",
        "pinyin": "Daicheng"
    },
    {
        "id": "131026",
        "name": "文安县",
        "parentId": "131000",
        "shortName": "文安",
        "letter": "W",
        "cityCode": "0316",
        "pinyin": "Wen'an"
    },
    {
        "id": "131028",
        "name": "大厂回族自治县",
        "parentId": "131000",
        "shortName": "大厂",
        "letter": "D",
        "cityCode": "0316",
        "pinyin": "Dachang"
    },
    {
        "id": "131081",
        "name": "霸州市",
        "parentId": "131000",
        "shortName": "霸州",
        "letter": "B",
        "cityCode": "0316",
        "pinyin": "Bazhou"
    },
    {
        "id": "131082",
        "name": "三河市",
        "parentId": "131000",
        "shortName": "三河",
        "letter": "S",
        "cityCode": "0316",
        "pinyin": "Sanhe"
    },
    {
        "id": "131100",
        "name": "衡水市",
        "parentId": "130000",
        "shortName": "衡水",
        "letter": "H",
        "cityCode": "0318",
        "pinyin": "Hengshui"
    },
    {
        "id": "131102",
        "name": "桃城区",
        "parentId": "131100",
        "shortName": "桃城",
        "letter": "T",
        "cityCode": "0318",
        "pinyin": "Taocheng"
    },
    {
        "id": "131121",
        "name": "枣强县",
        "parentId": "131100",
        "shortName": "枣强",
        "letter": "Z",
        "cityCode": "0318",
        "pinyin": "Zaoqiang"
    },
    {
        "id": "131122",
        "name": "武邑县",
        "parentId": "131100",
        "shortName": "武邑",
        "letter": "W",
        "cityCode": "0318",
        "pinyin": "Wuyi"
    },
    {
        "id": "131123",
        "name": "武强县",
        "parentId": "131100",
        "shortName": "武强",
        "letter": "W",
        "cityCode": "0318",
        "pinyin": "Wuqiang"
    },
    {
        "id": "131124",
        "name": "饶阳县",
        "parentId": "131100",
        "shortName": "饶阳",
        "letter": "R",
        "cityCode": "0318",
        "pinyin": "Raoyang"
    },
    {
        "id": "131125",
        "name": "安平县",
        "parentId": "131100",
        "shortName": "安平",
        "letter": "A",
        "cityCode": "0318",
        "pinyin": "Anping"
    },
    {
        "id": "131126",
        "name": "故城县",
        "parentId": "131100",
        "shortName": "故城",
        "letter": "G",
        "cityCode": "0318",
        "pinyin": "Gucheng"
    },
    {
        "id": "131127",
        "name": "景县",
        "parentId": "131100",
        "shortName": "景县",
        "letter": "J",
        "cityCode": "0318",
        "pinyin": "Jingxian"
    },
    {
        "id": "131128",
        "name": "阜城县",
        "parentId": "131100",
        "shortName": "阜城",
        "letter": "F",
        "cityCode": "0318",
        "pinyin": "Fucheng"
    },
    {
        "id": "131181",
        "name": "冀州市",
        "parentId": "131100",
        "shortName": "冀州",
        "letter": "J",
        "cityCode": "0318",
        "pinyin": "Jizhou"
    },
    {
        "id": "131182",
        "name": "深州市",
        "parentId": "131100",
        "shortName": "深州",
        "letter": "S",
        "cityCode": "0318",
        "pinyin": "Shenzhou"
    },
    {
        "id": "140000",
        "name": "山西省",
        "parentId": "100000",
        "shortName": "山西",
        "letter": "S",
        "cityCode": "",
        "pinyin": "Shanxi"
    },
    {
        "id": "140100",
        "name": "太原市",
        "parentId": "140000",
        "shortName": "太原",
        "letter": "T",
        "cityCode": "0351",
        "pinyin": "Taiyuan"
    },
    {
        "id": "140105",
        "name": "小店区",
        "parentId": "140100",
        "shortName": "小店",
        "letter": "X",
        "cityCode": "0351",
        "pinyin": "Xiaodian"
    },
    {
        "id": "140106",
        "name": "迎泽区",
        "parentId": "140100",
        "shortName": "迎泽",
        "letter": "Y",
        "cityCode": "0351",
        "pinyin": "Yingze"
    },
    {
        "id": "140107",
        "name": "杏花岭区",
        "parentId": "140100",
        "shortName": "杏花岭",
        "letter": "X",
        "cityCode": "0351",
        "pinyin": "Xinghualing"
    },
    {
        "id": "140108",
        "name": "尖草坪区",
        "parentId": "140100",
        "shortName": "尖草坪",
        "letter": "J",
        "cityCode": "0351",
        "pinyin": "Jiancaoping"
    },
    {
        "id": "140109",
        "name": "万柏林区",
        "parentId": "140100",
        "shortName": "万柏林",
        "letter": "W",
        "cityCode": "0351",
        "pinyin": "Wanbailin"
    },
    {
        "id": "140110",
        "name": "晋源区",
        "parentId": "140100",
        "shortName": "晋源",
        "letter": "J",
        "cityCode": "0351",
        "pinyin": "Jinyuan"
    },
    {
        "id": "140121",
        "name": "清徐县",
        "parentId": "140100",
        "shortName": "清徐",
        "letter": "Q",
        "cityCode": "0351",
        "pinyin": "Qingxu"
    },
    {
        "id": "140122",
        "name": "阳曲县",
        "parentId": "140100",
        "shortName": "阳曲",
        "letter": "Y",
        "cityCode": "0351",
        "pinyin": "Yangqu"
    },
    {
        "id": "140123",
        "name": "娄烦县",
        "parentId": "140100",
        "shortName": "娄烦",
        "letter": "L",
        "cityCode": "0351",
        "pinyin": "Loufan"
    },
    {
        "id": "140181",
        "name": "古交市",
        "parentId": "140100",
        "shortName": "古交",
        "letter": "G",
        "cityCode": "0351",
        "pinyin": "Gujiao"
    },
    {
        "id": "140200",
        "name": "大同市",
        "parentId": "140000",
        "shortName": "大同",
        "letter": "D",
        "cityCode": "0352",
        "pinyin": "Datong"
    },
    {
        "id": "140202",
        "name": "城区",
        "parentId": "140200",
        "shortName": "城区",
        "letter": "C",
        "cityCode": "0352",
        "pinyin": "Chengqu"
    },
    {
        "id": "140203",
        "name": "矿区",
        "parentId": "140200",
        "shortName": "矿区",
        "letter": "K",
        "cityCode": "0352",
        "pinyin": "Kuangqu"
    },
    {
        "id": "140211",
        "name": "南郊区",
        "parentId": "140200",
        "shortName": "南郊",
        "letter": "N",
        "cityCode": "0352",
        "pinyin": "Nanjiao"
    },
    {
        "id": "140212",
        "name": "新荣区",
        "parentId": "140200",
        "shortName": "新荣",
        "letter": "X",
        "cityCode": "0352",
        "pinyin": "Xinrong"
    },
    {
        "id": "140221",
        "name": "阳高县",
        "parentId": "140200",
        "shortName": "阳高",
        "letter": "Y",
        "cityCode": "0352",
        "pinyin": "Yanggao"
    },
    {
        "id": "140222",
        "name": "天镇县",
        "parentId": "140200",
        "shortName": "天镇",
        "letter": "T",
        "cityCode": "0352",
        "pinyin": "Tianzhen"
    },
    {
        "id": "140223",
        "name": "广灵县",
        "parentId": "140200",
        "shortName": "广灵",
        "letter": "G",
        "cityCode": "0352",
        "pinyin": "Guangling"
    },
    {
        "id": "140224",
        "name": "灵丘县",
        "parentId": "140200",
        "shortName": "灵丘",
        "letter": "L",
        "cityCode": "0352",
        "pinyin": "Lingqiu"
    },
    {
        "id": "140225",
        "name": "浑源县",
        "parentId": "140200",
        "shortName": "浑源",
        "letter": "H",
        "cityCode": "0352",
        "pinyin": "Hunyuan"
    },
    {
        "id": "140226",
        "name": "左云县",
        "parentId": "140200",
        "shortName": "左云",
        "letter": "Z",
        "cityCode": "0352",
        "pinyin": "Zuoyun"
    },
    {
        "id": "140227",
        "name": "大同县",
        "parentId": "140200",
        "shortName": "大同",
        "letter": "D",
        "cityCode": "0352",
        "pinyin": "Datong"
    },
    {
        "id": "140300",
        "name": "阳泉市",
        "parentId": "140000",
        "shortName": "阳泉",
        "letter": "Y",
        "cityCode": "0353",
        "pinyin": "Yangquan"
    },
    {
        "id": "140302",
        "name": "城区",
        "parentId": "140300",
        "shortName": "城区",
        "letter": "C",
        "cityCode": "0353",
        "pinyin": "Chengqu"
    },
    {
        "id": "140303",
        "name": "矿区",
        "parentId": "140300",
        "shortName": "矿区",
        "letter": "K",
        "cityCode": "0353",
        "pinyin": "Kuangqu"
    },
    {
        "id": "140311",
        "name": "郊区",
        "parentId": "140300",
        "shortName": "郊区",
        "letter": "J",
        "cityCode": "0353",
        "pinyin": "Jiaoqu"
    },
    {
        "id": "140321",
        "name": "平定县",
        "parentId": "140300",
        "shortName": "平定",
        "letter": "P",
        "cityCode": "0353",
        "pinyin": "Pingding"
    },
    {
        "id": "140322",
        "name": "盂县",
        "parentId": "140300",
        "shortName": "盂县",
        "letter": "Y",
        "cityCode": "0353",
        "pinyin": "Yuxian"
    },
    {
        "id": "140400",
        "name": "长治市",
        "parentId": "140000",
        "shortName": "长治",
        "letter": "C",
        "cityCode": "0355",
        "pinyin": "Changzhi"
    },
    {
        "id": "140402",
        "name": "城区",
        "parentId": "140400",
        "shortName": "城区",
        "letter": "C",
        "cityCode": "0355",
        "pinyin": "Chengqu"
    },
    {
        "id": "140411",
        "name": "郊区",
        "parentId": "140400",
        "shortName": "郊区",
        "letter": "J",
        "cityCode": "0355",
        "pinyin": "Jiaoqu"
    },
    {
        "id": "140421",
        "name": "长治县",
        "parentId": "140400",
        "shortName": "长治",
        "letter": "C",
        "cityCode": "0355",
        "pinyin": "Changzhi"
    },
    {
        "id": "140423",
        "name": "襄垣县",
        "parentId": "140400",
        "shortName": "襄垣",
        "letter": "X",
        "cityCode": "0355",
        "pinyin": "Xiangyuan"
    },
    {
        "id": "140424",
        "name": "屯留县",
        "parentId": "140400",
        "shortName": "屯留",
        "letter": "T",
        "cityCode": "0355",
        "pinyin": "Tunliu"
    },
    {
        "id": "140425",
        "name": "平顺县",
        "parentId": "140400",
        "shortName": "平顺",
        "letter": "P",
        "cityCode": "0355",
        "pinyin": "Pingshun"
    },
    {
        "id": "140426",
        "name": "黎城县",
        "parentId": "140400",
        "shortName": "黎城",
        "letter": "L",
        "cityCode": "0355",
        "pinyin": "Licheng"
    },
    {
        "id": "140427",
        "name": "壶关县",
        "parentId": "140400",
        "shortName": "壶关",
        "letter": "H",
        "cityCode": "0355",
        "pinyin": "Huguan"
    },
    {
        "id": "140428",
        "name": "长子县",
        "parentId": "140400",
        "shortName": "长子",
        "letter": "Z",
        "cityCode": "0355",
        "pinyin": "Zhangzi"
    },
    {
        "id": "140429",
        "name": "武乡县",
        "parentId": "140400",
        "shortName": "武乡",
        "letter": "W",
        "cityCode": "0355",
        "pinyin": "Wuxiang"
    },
    {
        "id": "140430",
        "name": "沁县",
        "parentId": "140400",
        "shortName": "沁县",
        "letter": "Q",
        "cityCode": "0355",
        "pinyin": "Qinxian"
    },
    {
        "id": "140431",
        "name": "沁源县",
        "parentId": "140400",
        "shortName": "沁源",
        "letter": "Q",
        "cityCode": "0355",
        "pinyin": "Qinyuan"
    },
    {
        "id": "140481",
        "name": "潞城市",
        "parentId": "140400",
        "shortName": "潞城",
        "letter": "L",
        "cityCode": "0355",
        "pinyin": "Lucheng"
    },
    {
        "id": "140500",
        "name": "晋城市",
        "parentId": "140000",
        "shortName": "晋城",
        "letter": "J",
        "cityCode": "0356",
        "pinyin": "Jincheng"
    },
    {
        "id": "140502",
        "name": "城区",
        "parentId": "140500",
        "shortName": "城区",
        "letter": "C",
        "cityCode": "0356",
        "pinyin": "Chengqu"
    },
    {
        "id": "140521",
        "name": "沁水县",
        "parentId": "140500",
        "shortName": "沁水",
        "letter": "Q",
        "cityCode": "0356",
        "pinyin": "Qinshui"
    },
    {
        "id": "140522",
        "name": "阳城县",
        "parentId": "140500",
        "shortName": "阳城",
        "letter": "Y",
        "cityCode": "0356",
        "pinyin": "Yangcheng"
    },
    {
        "id": "140524",
        "name": "陵川县",
        "parentId": "140500",
        "shortName": "陵川",
        "letter": "L",
        "cityCode": "0356",
        "pinyin": "Lingchuan"
    },
    {
        "id": "140525",
        "name": "泽州县",
        "parentId": "140500",
        "shortName": "泽州",
        "letter": "Z",
        "cityCode": "0356",
        "pinyin": "Zezhou"
    },
    {
        "id": "140581",
        "name": "高平市",
        "parentId": "140500",
        "shortName": "高平",
        "letter": "G",
        "cityCode": "0356",
        "pinyin": "Gaoping"
    },
    {
        "id": "140600",
        "name": "朔州市",
        "parentId": "140000",
        "shortName": "朔州",
        "letter": "S",
        "cityCode": "0349",
        "pinyin": "Shuozhou"
    },
    {
        "id": "140602",
        "name": "朔城区",
        "parentId": "140600",
        "shortName": "朔城",
        "letter": "S",
        "cityCode": "0349",
        "pinyin": "Shuocheng"
    },
    {
        "id": "140603",
        "name": "平鲁区",
        "parentId": "140600",
        "shortName": "平鲁",
        "letter": "P",
        "cityCode": "0349",
        "pinyin": "Pinglu"
    },
    {
        "id": "140621",
        "name": "山阴县",
        "parentId": "140600",
        "shortName": "山阴",
        "letter": "S",
        "cityCode": "0349",
        "pinyin": "Shanyin"
    },
    {
        "id": "140622",
        "name": "应县",
        "parentId": "140600",
        "shortName": "应县",
        "letter": "Y",
        "cityCode": "0349",
        "pinyin": "Yingxian"
    },
    {
        "id": "140623",
        "name": "右玉县",
        "parentId": "140600",
        "shortName": "右玉",
        "letter": "Y",
        "cityCode": "0349",
        "pinyin": "Youyu"
    },
    {
        "id": "140624",
        "name": "怀仁县",
        "parentId": "140600",
        "shortName": "怀仁",
        "letter": "H",
        "cityCode": "0349",
        "pinyin": "Huairen"
    },
    {
        "id": "140700",
        "name": "晋中市",
        "parentId": "140000",
        "shortName": "晋中",
        "letter": "J",
        "cityCode": "0354",
        "pinyin": "Jinzhong"
    },
    {
        "id": "140702",
        "name": "榆次区",
        "parentId": "140700",
        "shortName": "榆次",
        "letter": "Y",
        "cityCode": "0354",
        "pinyin": "Yuci"
    },
    {
        "id": "140721",
        "name": "榆社县",
        "parentId": "140700",
        "shortName": "榆社",
        "letter": "Y",
        "cityCode": "0354",
        "pinyin": "Yushe"
    },
    {
        "id": "140722",
        "name": "左权县",
        "parentId": "140700",
        "shortName": "左权",
        "letter": "Z",
        "cityCode": "0354",
        "pinyin": "Zuoquan"
    },
    {
        "id": "140723",
        "name": "和顺县",
        "parentId": "140700",
        "shortName": "和顺",
        "letter": "H",
        "cityCode": "0354",
        "pinyin": "Heshun"
    },
    {
        "id": "140724",
        "name": "昔阳县",
        "parentId": "140700",
        "shortName": "昔阳",
        "letter": "X",
        "cityCode": "0354",
        "pinyin": "Xiyang"
    },
    {
        "id": "140725",
        "name": "寿阳县",
        "parentId": "140700",
        "shortName": "寿阳",
        "letter": "S",
        "cityCode": "0354",
        "pinyin": "Shouyang"
    },
    {
        "id": "140726",
        "name": "太谷县",
        "parentId": "140700",
        "shortName": "太谷",
        "letter": "T",
        "cityCode": "0354",
        "pinyin": "Taigu"
    },
    {
        "id": "140727",
        "name": "祁县",
        "parentId": "140700",
        "shortName": "祁县",
        "letter": "Q",
        "cityCode": "0354",
        "pinyin": "Qixian"
    },
    {
        "id": "140728",
        "name": "平遥县",
        "parentId": "140700",
        "shortName": "平遥",
        "letter": "P",
        "cityCode": "0354",
        "pinyin": "Pingyao"
    },
    {
        "id": "140729",
        "name": "灵石县",
        "parentId": "140700",
        "shortName": "灵石",
        "letter": "L",
        "cityCode": "0354",
        "pinyin": "Lingshi"
    },
    {
        "id": "140781",
        "name": "介休市",
        "parentId": "140700",
        "shortName": "介休",
        "letter": "J",
        "cityCode": "0354",
        "pinyin": "Jiexiu"
    },
    {
        "id": "140800",
        "name": "运城市",
        "parentId": "140000",
        "shortName": "运城",
        "letter": "Y",
        "cityCode": "0359",
        "pinyin": "Yuncheng"
    },
    {
        "id": "140802",
        "name": "盐湖区",
        "parentId": "140800",
        "shortName": "盐湖",
        "letter": "Y",
        "cityCode": "0359",
        "pinyin": "Yanhu"
    },
    {
        "id": "140821",
        "name": "临猗县",
        "parentId": "140800",
        "shortName": "临猗",
        "letter": "L",
        "cityCode": "0359",
        "pinyin": "Linyi"
    },
    {
        "id": "140822",
        "name": "万荣县",
        "parentId": "140800",
        "shortName": "万荣",
        "letter": "W",
        "cityCode": "0359",
        "pinyin": "Wanrong"
    },
    {
        "id": "140823",
        "name": "闻喜县",
        "parentId": "140800",
        "shortName": "闻喜",
        "letter": "W",
        "cityCode": "0359",
        "pinyin": "Wenxi"
    },
    {
        "id": "140824",
        "name": "稷山县",
        "parentId": "140800",
        "shortName": "稷山",
        "letter": "J",
        "cityCode": "0359",
        "pinyin": "Jishan"
    },
    {
        "id": "140825",
        "name": "新绛县",
        "parentId": "140800",
        "shortName": "新绛",
        "letter": "X",
        "cityCode": "0359",
        "pinyin": "Xinjiang"
    },
    {
        "id": "140826",
        "name": "绛县",
        "parentId": "140800",
        "shortName": "绛县",
        "letter": "J",
        "cityCode": "0359",
        "pinyin": "Jiangxian"
    },
    {
        "id": "140827",
        "name": "垣曲县",
        "parentId": "140800",
        "shortName": "垣曲",
        "letter": "Y",
        "cityCode": "0359",
        "pinyin": "Yuanqu"
    },
    {
        "id": "140828",
        "name": "夏县",
        "parentId": "140800",
        "shortName": "夏县",
        "letter": "X",
        "cityCode": "0359",
        "pinyin": "Xiaxian"
    },
    {
        "id": "140829",
        "name": "平陆县",
        "parentId": "140800",
        "shortName": "平陆",
        "letter": "P",
        "cityCode": "0359",
        "pinyin": "Pinglu"
    },
    {
        "id": "140830",
        "name": "芮城县",
        "parentId": "140800",
        "shortName": "芮城",
        "letter": "R",
        "cityCode": "0359",
        "pinyin": "Ruicheng"
    },
    {
        "id": "140881",
        "name": "永济市",
        "parentId": "140800",
        "shortName": "永济",
        "letter": "Y",
        "cityCode": "0359",
        "pinyin": "Yongji"
    },
    {
        "id": "140882",
        "name": "河津市",
        "parentId": "140800",
        "shortName": "河津",
        "letter": "H",
        "cityCode": "0359",
        "pinyin": "Hejin"
    },
    {
        "id": "140900",
        "name": "忻州市",
        "parentId": "140000",
        "shortName": "忻州",
        "letter": "X",
        "cityCode": "0350",
        "pinyin": "Xinzhou"
    },
    {
        "id": "140902",
        "name": "忻府区",
        "parentId": "140900",
        "shortName": "忻府",
        "letter": "X",
        "cityCode": "0350",
        "pinyin": "Xinfu"
    },
    {
        "id": "140921",
        "name": "定襄县",
        "parentId": "140900",
        "shortName": "定襄",
        "letter": "D",
        "cityCode": "0350",
        "pinyin": "Dingxiang"
    },
    {
        "id": "140922",
        "name": "五台县",
        "parentId": "140900",
        "shortName": "五台",
        "letter": "W",
        "cityCode": "0350",
        "pinyin": "Wutai"
    },
    {
        "id": "140923",
        "name": "代县",
        "parentId": "140900",
        "shortName": "代县",
        "letter": "D",
        "cityCode": "0350",
        "pinyin": "Daixian"
    },
    {
        "id": "140924",
        "name": "繁峙县",
        "parentId": "140900",
        "shortName": "繁峙",
        "letter": "F",
        "cityCode": "0350",
        "pinyin": "Fanshi"
    },
    {
        "id": "140925",
        "name": "宁武县",
        "parentId": "140900",
        "shortName": "宁武",
        "letter": "N",
        "cityCode": "0350",
        "pinyin": "Ningwu"
    },
    {
        "id": "140926",
        "name": "静乐县",
        "parentId": "140900",
        "shortName": "静乐",
        "letter": "J",
        "cityCode": "0350",
        "pinyin": "Jingle"
    },
    {
        "id": "140927",
        "name": "神池县",
        "parentId": "140900",
        "shortName": "神池",
        "letter": "S",
        "cityCode": "0350",
        "pinyin": "Shenchi"
    },
    {
        "id": "140928",
        "name": "五寨县",
        "parentId": "140900",
        "shortName": "五寨",
        "letter": "W",
        "cityCode": "0350",
        "pinyin": "Wuzhai"
    },
    {
        "id": "140929",
        "name": "岢岚县",
        "parentId": "140900",
        "shortName": "岢岚",
        "letter": "K",
        "cityCode": "0350",
        "pinyin": "Kelan"
    },
    {
        "id": "140930",
        "name": "河曲县",
        "parentId": "140900",
        "shortName": "河曲",
        "letter": "H",
        "cityCode": "0350",
        "pinyin": "Hequ"
    },
    {
        "id": "140931",
        "name": "保德县",
        "parentId": "140900",
        "shortName": "保德",
        "letter": "B",
        "cityCode": "0350",
        "pinyin": "Baode"
    },
    {
        "id": "140932",
        "name": "偏关县",
        "parentId": "140900",
        "shortName": "偏关",
        "letter": "P",
        "cityCode": "0350",
        "pinyin": "Pianguan"
    },
    {
        "id": "140981",
        "name": "原平市",
        "parentId": "140900",
        "shortName": "原平",
        "letter": "Y",
        "cityCode": "0350",
        "pinyin": "Yuanping"
    },
    {
        "id": "141000",
        "name": "临汾市",
        "parentId": "140000",
        "shortName": "临汾",
        "letter": "L",
        "cityCode": "0357",
        "pinyin": "Linfen"
    },
    {
        "id": "141002",
        "name": "尧都区",
        "parentId": "141000",
        "shortName": "尧都",
        "letter": "Y",
        "cityCode": "0357",
        "pinyin": "Yaodu"
    },
    {
        "id": "141021",
        "name": "曲沃县",
        "parentId": "141000",
        "shortName": "曲沃",
        "letter": "Q",
        "cityCode": "0357",
        "pinyin": "Quwo"
    },
    {
        "id": "141022",
        "name": "翼城县",
        "parentId": "141000",
        "shortName": "翼城",
        "letter": "Y",
        "cityCode": "0357",
        "pinyin": "Yicheng"
    },
    {
        "id": "141023",
        "name": "襄汾县",
        "parentId": "141000",
        "shortName": "襄汾",
        "letter": "X",
        "cityCode": "0357",
        "pinyin": "Xiangfen"
    },
    {
        "id": "141024",
        "name": "洪洞县",
        "parentId": "141000",
        "shortName": "洪洞",
        "letter": "H",
        "cityCode": "0357",
        "pinyin": "Hongtong"
    },
    {
        "id": "141025",
        "name": "古县",
        "parentId": "141000",
        "shortName": "古县",
        "letter": "G",
        "cityCode": "0357",
        "pinyin": "Guxian"
    },
    {
        "id": "141026",
        "name": "安泽县",
        "parentId": "141000",
        "shortName": "安泽",
        "letter": "A",
        "cityCode": "0357",
        "pinyin": "Anze"
    },
    {
        "id": "141027",
        "name": "浮山县",
        "parentId": "141000",
        "shortName": "浮山",
        "letter": "F",
        "cityCode": "0357",
        "pinyin": "Fushan"
    },
    {
        "id": "141028",
        "name": "吉县",
        "parentId": "141000",
        "shortName": "吉县",
        "letter": "J",
        "cityCode": "0357",
        "pinyin": "Jixian"
    },
    {
        "id": "141029",
        "name": "乡宁县",
        "parentId": "141000",
        "shortName": "乡宁",
        "letter": "X",
        "cityCode": "0357",
        "pinyin": "Xiangning"
    },
    {
        "id": "141030",
        "name": "大宁县",
        "parentId": "141000",
        "shortName": "大宁",
        "letter": "D",
        "cityCode": "0357",
        "pinyin": "Daning"
    },
    {
        "id": "141031",
        "name": "隰县",
        "parentId": "141000",
        "shortName": "隰县",
        "letter": "X",
        "cityCode": "0357",
        "pinyin": "Xixian"
    },
    {
        "id": "141032",
        "name": "永和县",
        "parentId": "141000",
        "shortName": "永和",
        "letter": "Y",
        "cityCode": "0357",
        "pinyin": "Yonghe"
    },
    {
        "id": "141033",
        "name": "蒲县",
        "parentId": "141000",
        "shortName": "蒲县",
        "letter": "P",
        "cityCode": "0357",
        "pinyin": "Puxian"
    },
    {
        "id": "141034",
        "name": "汾西县",
        "parentId": "141000",
        "shortName": "汾西",
        "letter": "F",
        "cityCode": "0357",
        "pinyin": "Fenxi"
    },
    {
        "id": "141081",
        "name": "侯马市",
        "parentId": "141000",
        "shortName": "侯马",
        "letter": "H",
        "cityCode": "0357",
        "pinyin": "Houma"
    },
    {
        "id": "141082",
        "name": "霍州市",
        "parentId": "141000",
        "shortName": "霍州",
        "letter": "H",
        "cityCode": "0357",
        "pinyin": "Huozhou"
    },
    {
        "id": "141100",
        "name": "吕梁市",
        "parentId": "140000",
        "shortName": "吕梁",
        "letter": "L",
        "cityCode": "0358",
        "pinyin": "Lvliang"
    },
    {
        "id": "141102",
        "name": "离石区",
        "parentId": "141100",
        "shortName": "离石",
        "letter": "L",
        "cityCode": "0358",
        "pinyin": "Lishi"
    },
    {
        "id": "141121",
        "name": "文水县",
        "parentId": "141100",
        "shortName": "文水",
        "letter": "W",
        "cityCode": "0358",
        "pinyin": "Wenshui"
    },
    {
        "id": "141122",
        "name": "交城县",
        "parentId": "141100",
        "shortName": "交城",
        "letter": "J",
        "cityCode": "0358",
        "pinyin": "Jiaocheng"
    },
    {
        "id": "141123",
        "name": "兴县",
        "parentId": "141100",
        "shortName": "兴县",
        "letter": "X",
        "cityCode": "0358",
        "pinyin": "Xingxian"
    },
    {
        "id": "141124",
        "name": "临县",
        "parentId": "141100",
        "shortName": "临县",
        "letter": "L",
        "cityCode": "0358",
        "pinyin": "Linxian"
    },
    {
        "id": "141125",
        "name": "柳林县",
        "parentId": "141100",
        "shortName": "柳林",
        "letter": "L",
        "cityCode": "0358",
        "pinyin": "Liulin"
    },
    {
        "id": "141126",
        "name": "石楼县",
        "parentId": "141100",
        "shortName": "石楼",
        "letter": "S",
        "cityCode": "0358",
        "pinyin": "Shilou"
    },
    {
        "id": "141127",
        "name": "岚县",
        "parentId": "141100",
        "shortName": "岚县",
        "letter": "L",
        "cityCode": "0358",
        "pinyin": "Lanxian"
    },
    {
        "id": "141128",
        "name": "方山县",
        "parentId": "141100",
        "shortName": "方山",
        "letter": "F",
        "cityCode": "0358",
        "pinyin": "Fangshan"
    },
    {
        "id": "141129",
        "name": "中阳县",
        "parentId": "141100",
        "shortName": "中阳",
        "letter": "Z",
        "cityCode": "0358",
        "pinyin": "Zhongyang"
    },
    {
        "id": "141130",
        "name": "交口县",
        "parentId": "141100",
        "shortName": "交口",
        "letter": "J",
        "cityCode": "0358",
        "pinyin": "Jiaokou"
    },
    {
        "id": "141181",
        "name": "孝义市",
        "parentId": "141100",
        "shortName": "孝义",
        "letter": "X",
        "cityCode": "0358",
        "pinyin": "Xiaoyi"
    },
    {
        "id": "141182",
        "name": "汾阳市",
        "parentId": "141100",
        "shortName": "汾阳",
        "letter": "F",
        "cityCode": "0358",
        "pinyin": "Fenyang"
    },
    {
        "id": "150000",
        "name": "内蒙古自治区",
        "parentId": "100000",
        "shortName": "内蒙古",
        "letter": "I",
        "cityCode": "",
        "pinyin": "Inner Mongolia"
    },
    {
        "id": "150100",
        "name": "呼和浩特市",
        "parentId": "150000",
        "shortName": "呼和浩特",
        "letter": "H",
        "cityCode": "0471",
        "pinyin": "Hohhot"
    },
    {
        "id": "150102",
        "name": "新城区",
        "parentId": "150100",
        "shortName": "新城",
        "letter": "X",
        "cityCode": "0471",
        "pinyin": "Xincheng"
    },
    {
        "id": "150103",
        "name": "回民区",
        "parentId": "150100",
        "shortName": "回民",
        "letter": "H",
        "cityCode": "0471",
        "pinyin": "Huimin"
    },
    {
        "id": "150104",
        "name": "玉泉区",
        "parentId": "150100",
        "shortName": "玉泉",
        "letter": "Y",
        "cityCode": "0471",
        "pinyin": "Yuquan"
    },
    {
        "id": "150105",
        "name": "赛罕区",
        "parentId": "150100",
        "shortName": "赛罕",
        "letter": "S",
        "cityCode": "0471",
        "pinyin": "Saihan"
    },
    {
        "id": "150121",
        "name": "土默特左旗",
        "parentId": "150100",
        "shortName": "土默特左旗",
        "letter": "T",
        "cityCode": "0471",
        "pinyin": "Tumotezuoqi"
    },
    {
        "id": "150122",
        "name": "托克托县",
        "parentId": "150100",
        "shortName": "托克托",
        "letter": "T",
        "cityCode": "0471",
        "pinyin": "Tuoketuo"
    },
    {
        "id": "150123",
        "name": "和林格尔县",
        "parentId": "150100",
        "shortName": "和林格尔",
        "letter": "H",
        "cityCode": "0471",
        "pinyin": "Helingeer"
    },
    {
        "id": "150124",
        "name": "清水河县",
        "parentId": "150100",
        "shortName": "清水河",
        "letter": "Q",
        "cityCode": "0471",
        "pinyin": "Qingshuihe"
    },
    {
        "id": "150125",
        "name": "武川县",
        "parentId": "150100",
        "shortName": "武川",
        "letter": "W",
        "cityCode": "0471",
        "pinyin": "Wuchuan"
    },
    {
        "id": "150200",
        "name": "包头市",
        "parentId": "150000",
        "shortName": "包头",
        "letter": "B",
        "cityCode": "0472",
        "pinyin": "Baotou"
    },
    {
        "id": "150202",
        "name": "东河区",
        "parentId": "150200",
        "shortName": "东河",
        "letter": "D",
        "cityCode": "0472",
        "pinyin": "Donghe"
    },
    {
        "id": "150203",
        "name": "昆都仑区",
        "parentId": "150200",
        "shortName": "昆都仑",
        "letter": "K",
        "cityCode": "0472",
        "pinyin": "Kundulun"
    },
    {
        "id": "150204",
        "name": "青山区",
        "parentId": "150200",
        "shortName": "青山",
        "letter": "Q",
        "cityCode": "0472",
        "pinyin": "Qingshan"
    },
    {
        "id": "150205",
        "name": "石拐区",
        "parentId": "150200",
        "shortName": "石拐",
        "letter": "S",
        "cityCode": "0472",
        "pinyin": "Shiguai"
    },
    {
        "id": "150206",
        "name": "白云鄂博矿区",
        "parentId": "150200",
        "shortName": "白云鄂博矿区",
        "letter": "B",
        "cityCode": "0472",
        "pinyin": "Baiyunebokuangqu"
    },
    {
        "id": "150207",
        "name": "九原区",
        "parentId": "150200",
        "shortName": "九原",
        "letter": "J",
        "cityCode": "0472",
        "pinyin": "Jiuyuan"
    },
    {
        "id": "150221",
        "name": "土默特右旗",
        "parentId": "150200",
        "shortName": "土默特右旗",
        "letter": "T",
        "cityCode": "0472",
        "pinyin": "Tumoteyouqi"
    },
    {
        "id": "150222",
        "name": "固阳县",
        "parentId": "150200",
        "shortName": "固阳",
        "letter": "G",
        "cityCode": "0472",
        "pinyin": "Guyang"
    },
    {
        "id": "150223",
        "name": "达尔罕茂明安联合旗",
        "parentId": "150200",
        "shortName": "达茂旗",
        "letter": "D",
        "cityCode": "0472",
        "pinyin": "Damaoqi"
    },
    {
        "id": "150300",
        "name": "乌海市",
        "parentId": "150000",
        "shortName": "乌海",
        "letter": "W",
        "cityCode": "0473",
        "pinyin": "Wuhai"
    },
    {
        "id": "150302",
        "name": "海勃湾区",
        "parentId": "150300",
        "shortName": "海勃湾",
        "letter": "H",
        "cityCode": "0473",
        "pinyin": "Haibowan"
    },
    {
        "id": "150303",
        "name": "海南区",
        "parentId": "150300",
        "shortName": "海南",
        "letter": "H",
        "cityCode": "0473",
        "pinyin": "Hainan"
    },
    {
        "id": "150304",
        "name": "乌达区",
        "parentId": "150300",
        "shortName": "乌达",
        "letter": "W",
        "cityCode": "0473",
        "pinyin": "Wuda"
    },
    {
        "id": "150400",
        "name": "赤峰市",
        "parentId": "150000",
        "shortName": "赤峰",
        "letter": "C",
        "cityCode": "0476",
        "pinyin": "Chifeng"
    },
    {
        "id": "150402",
        "name": "红山区",
        "parentId": "150400",
        "shortName": "红山",
        "letter": "H",
        "cityCode": "0476",
        "pinyin": "Hongshan"
    },
    {
        "id": "150403",
        "name": "元宝山区",
        "parentId": "150400",
        "shortName": "元宝山",
        "letter": "Y",
        "cityCode": "0476",
        "pinyin": "Yuanbaoshan"
    },
    {
        "id": "150404",
        "name": "松山区",
        "parentId": "150400",
        "shortName": "松山",
        "letter": "S",
        "cityCode": "0476",
        "pinyin": "Songshan"
    },
    {
        "id": "150421",
        "name": "阿鲁科尔沁旗",
        "parentId": "150400",
        "shortName": "阿鲁科尔沁旗",
        "letter": "A",
        "cityCode": "0476",
        "pinyin": "Alukeerqinqi"
    },
    {
        "id": "150422",
        "name": "巴林左旗",
        "parentId": "150400",
        "shortName": "巴林左旗",
        "letter": "B",
        "cityCode": "0476",
        "pinyin": "Balinzuoqi"
    },
    {
        "id": "150423",
        "name": "巴林右旗",
        "parentId": "150400",
        "shortName": "巴林右旗",
        "letter": "B",
        "cityCode": "0476",
        "pinyin": "Balinyouqi"
    },
    {
        "id": "150424",
        "name": "林西县",
        "parentId": "150400",
        "shortName": "林西",
        "letter": "L",
        "cityCode": "0476",
        "pinyin": "Linxi"
    },
    {
        "id": "150425",
        "name": "克什克腾旗",
        "parentId": "150400",
        "shortName": "克什克腾旗",
        "letter": "K",
        "cityCode": "0476",
        "pinyin": "Keshiketengqi"
    },
    {
        "id": "150426",
        "name": "翁牛特旗",
        "parentId": "150400",
        "shortName": "翁牛特旗",
        "letter": "W",
        "cityCode": "0476",
        "pinyin": "Wengniuteqi"
    },
    {
        "id": "150428",
        "name": "喀喇沁旗",
        "parentId": "150400",
        "shortName": "喀喇沁旗",
        "letter": "K",
        "cityCode": "0476",
        "pinyin": "Kalaqinqi"
    },
    {
        "id": "150429",
        "name": "宁城县",
        "parentId": "150400",
        "shortName": "宁城",
        "letter": "N",
        "cityCode": "0476",
        "pinyin": "Ningcheng"
    },
    {
        "id": "150430",
        "name": "敖汉旗",
        "parentId": "150400",
        "shortName": "敖汉旗",
        "letter": "A",
        "cityCode": "0476",
        "pinyin": "Aohanqi"
    },
    {
        "id": "150500",
        "name": "通辽市",
        "parentId": "150000",
        "shortName": "通辽",
        "letter": "T",
        "cityCode": "0475",
        "pinyin": "Tongliao"
    },
    {
        "id": "150502",
        "name": "科尔沁区",
        "parentId": "150500",
        "shortName": "科尔沁",
        "letter": "K",
        "cityCode": "0475",
        "pinyin": "Keerqin"
    },
    {
        "id": "150521",
        "name": "科尔沁左翼中旗",
        "parentId": "150500",
        "shortName": "科尔沁左翼中旗",
        "letter": "K",
        "cityCode": "0475",
        "pinyin": "Keerqinzuoyizhongqi"
    },
    {
        "id": "150522",
        "name": "科尔沁左翼后旗",
        "parentId": "150500",
        "shortName": "科尔沁左翼后旗",
        "letter": "K",
        "cityCode": "0475",
        "pinyin": "Keerqinzuoyihouqi"
    },
    {
        "id": "150523",
        "name": "开鲁县",
        "parentId": "150500",
        "shortName": "开鲁",
        "letter": "K",
        "cityCode": "0475",
        "pinyin": "Kailu"
    },
    {
        "id": "150524",
        "name": "库伦旗",
        "parentId": "150500",
        "shortName": "库伦旗",
        "letter": "K",
        "cityCode": "0475",
        "pinyin": "Kulunqi"
    },
    {
        "id": "150525",
        "name": "奈曼旗",
        "parentId": "150500",
        "shortName": "奈曼旗",
        "letter": "N",
        "cityCode": "0475",
        "pinyin": "Naimanqi"
    },
    {
        "id": "150526",
        "name": "扎鲁特旗",
        "parentId": "150500",
        "shortName": "扎鲁特旗",
        "letter": "Z",
        "cityCode": "0475",
        "pinyin": "Zhaluteqi"
    },
    {
        "id": "150581",
        "name": "霍林郭勒市",
        "parentId": "150500",
        "shortName": "霍林郭勒",
        "letter": "H",
        "cityCode": "0475",
        "pinyin": "Huolinguole"
    },
    {
        "id": "150600",
        "name": "鄂尔多斯市",
        "parentId": "150000",
        "shortName": "鄂尔多斯",
        "letter": "O",
        "cityCode": "0477",
        "pinyin": "Ordos"
    },
    {
        "id": "150602",
        "name": "东胜区",
        "parentId": "150600",
        "shortName": "东胜",
        "letter": "D",
        "cityCode": "0477",
        "pinyin": "Dongsheng"
    },
    {
        "id": "150621",
        "name": "达拉特旗",
        "parentId": "150600",
        "shortName": "达拉特旗",
        "letter": "D",
        "cityCode": "0477",
        "pinyin": "Dalateqi"
    },
    {
        "id": "150622",
        "name": "准格尔旗",
        "parentId": "150600",
        "shortName": "准格尔旗",
        "letter": "Z",
        "cityCode": "0477",
        "pinyin": "Zhungeerqi"
    },
    {
        "id": "150623",
        "name": "鄂托克前旗",
        "parentId": "150600",
        "shortName": "鄂托克前旗",
        "letter": "E",
        "cityCode": "0477",
        "pinyin": "Etuokeqianqi"
    },
    {
        "id": "150624",
        "name": "鄂托克旗",
        "parentId": "150600",
        "shortName": "鄂托克旗",
        "letter": "E",
        "cityCode": "0477",
        "pinyin": "Etuokeqi"
    },
    {
        "id": "150625",
        "name": "杭锦旗",
        "parentId": "150600",
        "shortName": "杭锦旗",
        "letter": "H",
        "cityCode": "0477",
        "pinyin": "Hangjinqi"
    },
    {
        "id": "150626",
        "name": "乌审旗",
        "parentId": "150600",
        "shortName": "乌审旗",
        "letter": "W",
        "cityCode": "0477",
        "pinyin": "Wushenqi"
    },
    {
        "id": "150627",
        "name": "伊金霍洛旗",
        "parentId": "150600",
        "shortName": "伊金霍洛旗",
        "letter": "Y",
        "cityCode": "0477",
        "pinyin": "Yijinhuoluoqi"
    },
    {
        "id": "150700",
        "name": "呼伦贝尔市",
        "parentId": "150000",
        "shortName": "呼伦贝尔",
        "letter": "H",
        "cityCode": "0470",
        "pinyin": "Hulunber"
    },
    {
        "id": "150702",
        "name": "海拉尔区",
        "parentId": "150700",
        "shortName": "海拉尔",
        "letter": "H",
        "cityCode": "0470",
        "pinyin": "Hailaer"
    },
    {
        "id": "150703",
        "name": "扎赉诺尔区",
        "parentId": "150700",
        "shortName": "扎赉诺尔",
        "letter": "Z",
        "cityCode": "0470",
        "pinyin": "Zhalainuoer"
    },
    {
        "id": "150721",
        "name": "阿荣旗",
        "parentId": "150700",
        "shortName": "阿荣旗",
        "letter": "A",
        "cityCode": "0470",
        "pinyin": "Arongqi"
    },
    {
        "id": "150722",
        "name": "莫力达瓦达斡尔族自治旗",
        "parentId": "150700",
        "shortName": "莫旗",
        "letter": "M",
        "cityCode": "0470",
        "pinyin": "Moqi"
    },
    {
        "id": "150723",
        "name": "鄂伦春自治旗",
        "parentId": "150700",
        "shortName": "鄂伦春",
        "letter": "E",
        "cityCode": "0470",
        "pinyin": "Elunchun"
    },
    {
        "id": "150724",
        "name": "鄂温克族自治旗",
        "parentId": "150700",
        "shortName": "鄂温",
        "letter": "E",
        "cityCode": "0470",
        "pinyin": "Ewen"
    },
    {
        "id": "150725",
        "name": "陈巴尔虎旗",
        "parentId": "150700",
        "shortName": "陈巴尔虎旗",
        "letter": "C",
        "cityCode": "0470",
        "pinyin": "Chenbaerhuqi"
    },
    {
        "id": "150726",
        "name": "新巴尔虎左旗",
        "parentId": "150700",
        "shortName": "新巴尔虎左旗",
        "letter": "X",
        "cityCode": "0470",
        "pinyin": "Xinbaerhuzuoqi"
    },
    {
        "id": "150727",
        "name": "新巴尔虎右旗",
        "parentId": "150700",
        "shortName": "新巴尔虎右旗",
        "letter": "X",
        "cityCode": "0470",
        "pinyin": "Xinbaerhuyouqi"
    },
    {
        "id": "150781",
        "name": "满洲里市",
        "parentId": "150700",
        "shortName": "满洲里",
        "letter": "M",
        "cityCode": "0470",
        "pinyin": "Manzhouli"
    },
    {
        "id": "150782",
        "name": "牙克石市",
        "parentId": "150700",
        "shortName": "牙克石",
        "letter": "Y",
        "cityCode": "0470",
        "pinyin": "Yakeshi"
    },
    {
        "id": "150783",
        "name": "扎兰屯市",
        "parentId": "150700",
        "shortName": "扎兰屯",
        "letter": "Z",
        "cityCode": "0470",
        "pinyin": "Zhalantun"
    },
    {
        "id": "150784",
        "name": "额尔古纳市",
        "parentId": "150700",
        "shortName": "额尔古纳",
        "letter": "E",
        "cityCode": "0470",
        "pinyin": "Eerguna"
    },
    {
        "id": "150785",
        "name": "根河市",
        "parentId": "150700",
        "shortName": "根河",
        "letter": "G",
        "cityCode": "0470",
        "pinyin": "Genhe"
    },
    {
        "id": "150800",
        "name": "巴彦淖尔市",
        "parentId": "150000",
        "shortName": "巴彦淖尔",
        "letter": "B",
        "cityCode": "0478",
        "pinyin": "Bayan Nur"
    },
    {
        "id": "150802",
        "name": "临河区",
        "parentId": "150800",
        "shortName": "临河",
        "letter": "L",
        "cityCode": "0478",
        "pinyin": "Linhe"
    },
    {
        "id": "150821",
        "name": "五原县",
        "parentId": "150800",
        "shortName": "五原",
        "letter": "W",
        "cityCode": "0478",
        "pinyin": "Wuyuan"
    },
    {
        "id": "150822",
        "name": "磴口县",
        "parentId": "150800",
        "shortName": "磴口",
        "letter": "D",
        "cityCode": "0478",
        "pinyin": "Dengkou"
    },
    {
        "id": "150823",
        "name": "乌拉特前旗",
        "parentId": "150800",
        "shortName": "乌拉特前旗",
        "letter": "W",
        "cityCode": "0478",
        "pinyin": "Wulateqianqi"
    },
    {
        "id": "150824",
        "name": "乌拉特中旗",
        "parentId": "150800",
        "shortName": "乌拉特中旗",
        "letter": "W",
        "cityCode": "0478",
        "pinyin": "Wulatezhongqi"
    },
    {
        "id": "150825",
        "name": "乌拉特后旗",
        "parentId": "150800",
        "shortName": "乌拉特后旗",
        "letter": "W",
        "cityCode": "0478",
        "pinyin": "Wulatehouqi"
    },
    {
        "id": "150826",
        "name": "杭锦后旗",
        "parentId": "150800",
        "shortName": "杭锦后旗",
        "letter": "H",
        "cityCode": "0478",
        "pinyin": "Hangjinhouqi"
    },
    {
        "id": "150900",
        "name": "乌兰察布市",
        "parentId": "150000",
        "shortName": "乌兰察布",
        "letter": "U",
        "cityCode": "0474",
        "pinyin": "Ulanqab"
    },
    {
        "id": "150902",
        "name": "集宁区",
        "parentId": "150900",
        "shortName": "集宁",
        "letter": "J",
        "cityCode": "0474",
        "pinyin": "Jining"
    },
    {
        "id": "150921",
        "name": "卓资县",
        "parentId": "150900",
        "shortName": "卓资",
        "letter": "Z",
        "cityCode": "0474",
        "pinyin": "Zhuozi"
    },
    {
        "id": "150922",
        "name": "化德县",
        "parentId": "150900",
        "shortName": "化德",
        "letter": "H",
        "cityCode": "0474",
        "pinyin": "Huade"
    },
    {
        "id": "150923",
        "name": "商都县",
        "parentId": "150900",
        "shortName": "商都",
        "letter": "S",
        "cityCode": "0474",
        "pinyin": "Shangdu"
    },
    {
        "id": "150924",
        "name": "兴和县",
        "parentId": "150900",
        "shortName": "兴和",
        "letter": "X",
        "cityCode": "0474",
        "pinyin": "Xinghe"
    },
    {
        "id": "150925",
        "name": "凉城县",
        "parentId": "150900",
        "shortName": "凉城",
        "letter": "L",
        "cityCode": "0474",
        "pinyin": "Liangcheng"
    },
    {
        "id": "150926",
        "name": "察哈尔右翼前旗",
        "parentId": "150900",
        "shortName": "察右前旗",
        "letter": "C",
        "cityCode": "0474",
        "pinyin": "Chayouqianqi"
    },
    {
        "id": "150927",
        "name": "察哈尔右翼中旗",
        "parentId": "150900",
        "shortName": "察右中旗",
        "letter": "C",
        "cityCode": "0474",
        "pinyin": "Chayouzhongqi"
    },
    {
        "id": "150928",
        "name": "察哈尔右翼后旗",
        "parentId": "150900",
        "shortName": "察右后旗",
        "letter": "C",
        "cityCode": "0474",
        "pinyin": "Chayouhouqi"
    },
    {
        "id": "150929",
        "name": "四子王旗",
        "parentId": "150900",
        "shortName": "四子王旗",
        "letter": "S",
        "cityCode": "0474",
        "pinyin": "Siziwangqi"
    },
    {
        "id": "150981",
        "name": "丰镇市",
        "parentId": "150900",
        "shortName": "丰镇",
        "letter": "F",
        "cityCode": "0474",
        "pinyin": "Fengzhen"
    },
    {
        "id": "152200",
        "name": "兴安盟",
        "parentId": "150000",
        "shortName": "兴安盟",
        "letter": "H",
        "cityCode": "0482",
        "pinyin": "Hinggan"
    },
    {
        "id": "152201",
        "name": "乌兰浩特市",
        "parentId": "152200",
        "shortName": "乌兰浩特",
        "letter": "W",
        "cityCode": "0482",
        "pinyin": "Wulanhaote"
    },
    {
        "id": "152202",
        "name": "阿尔山市",
        "parentId": "152200",
        "shortName": "阿尔山",
        "letter": "A",
        "cityCode": "0482",
        "pinyin": "Aershan"
    },
    {
        "id": "152221",
        "name": "科尔沁右翼前旗",
        "parentId": "152200",
        "shortName": "科右前旗",
        "letter": "K",
        "cityCode": "0482",
        "pinyin": "Keyouqianqi"
    },
    {
        "id": "152222",
        "name": "科尔沁右翼中旗",
        "parentId": "152200",
        "shortName": "科右中旗",
        "letter": "K",
        "cityCode": "0482",
        "pinyin": "Keyouzhongqi"
    },
    {
        "id": "152223",
        "name": "扎赉特旗",
        "parentId": "152200",
        "shortName": "扎赉特旗",
        "letter": "Z",
        "cityCode": "0482",
        "pinyin": "Zhalaiteqi"
    },
    {
        "id": "152224",
        "name": "突泉县",
        "parentId": "152200",
        "shortName": "突泉",
        "letter": "T",
        "cityCode": "0482",
        "pinyin": "Tuquan"
    },
    {
        "id": "152500",
        "name": "锡林郭勒盟",
        "parentId": "150000",
        "shortName": "锡林郭勒盟",
        "letter": "X",
        "cityCode": "0479",
        "pinyin": "Xilin Gol"
    },
    {
        "id": "152501",
        "name": "二连浩特市",
        "parentId": "152500",
        "shortName": "二连浩特",
        "letter": "E",
        "cityCode": "0479",
        "pinyin": "Erlianhaote"
    },
    {
        "id": "152502",
        "name": "锡林浩特市",
        "parentId": "152500",
        "shortName": "锡林浩特",
        "letter": "X",
        "cityCode": "0479",
        "pinyin": "Xilinhaote"
    },
    {
        "id": "152522",
        "name": "阿巴嘎旗",
        "parentId": "152500",
        "shortName": "阿巴嘎旗",
        "letter": "A",
        "cityCode": "0479",
        "pinyin": "Abagaqi"
    },
    {
        "id": "152523",
        "name": "苏尼特左旗",
        "parentId": "152500",
        "shortName": "苏尼特左旗",
        "letter": "S",
        "cityCode": "0479",
        "pinyin": "Sunitezuoqi"
    },
    {
        "id": "152524",
        "name": "苏尼特右旗",
        "parentId": "152500",
        "shortName": "苏尼特右旗",
        "letter": "S",
        "cityCode": "0479",
        "pinyin": "Suniteyouqi"
    },
    {
        "id": "152525",
        "name": "东乌珠穆沁旗",
        "parentId": "152500",
        "shortName": "东乌旗",
        "letter": "D",
        "cityCode": "0479",
        "pinyin": "Dongwuqi"
    },
    {
        "id": "152526",
        "name": "西乌珠穆沁旗",
        "parentId": "152500",
        "shortName": "西乌旗",
        "letter": "X",
        "cityCode": "0479",
        "pinyin": "Xiwuqi"
    },
    {
        "id": "152527",
        "name": "太仆寺旗",
        "parentId": "152500",
        "shortName": "太仆寺旗",
        "letter": "T",
        "cityCode": "0479",
        "pinyin": "Taipusiqi"
    },
    {
        "id": "152528",
        "name": "镶黄旗",
        "parentId": "152500",
        "shortName": "镶黄旗",
        "letter": "X",
        "cityCode": "0479",
        "pinyin": "Xianghuangqi"
    },
    {
        "id": "152529",
        "name": "正镶白旗",
        "parentId": "152500",
        "shortName": "正镶白旗",
        "letter": "Z",
        "cityCode": "0479",
        "pinyin": "Zhengxiangbaiqi"
    },
    {
        "id": "152530",
        "name": "正蓝旗",
        "parentId": "152500",
        "shortName": "正蓝旗",
        "letter": "Z",
        "cityCode": "0479",
        "pinyin": "Zhenglanqi"
    },
    {
        "id": "152531",
        "name": "多伦县",
        "parentId": "152500",
        "shortName": "多伦",
        "letter": "D",
        "cityCode": "0479",
        "pinyin": "Duolun"
    },
    {
        "id": "152900",
        "name": "阿拉善盟",
        "parentId": "150000",
        "shortName": "阿拉善盟",
        "letter": "A",
        "cityCode": "0483",
        "pinyin": "Alxa"
    },
    {
        "id": "152921",
        "name": "阿拉善左旗",
        "parentId": "152900",
        "shortName": "阿拉善左旗",
        "letter": "A",
        "cityCode": "0483",
        "pinyin": "Alashanzuoqi"
    },
    {
        "id": "152922",
        "name": "阿拉善右旗",
        "parentId": "152900",
        "shortName": "阿拉善右旗",
        "letter": "A",
        "cityCode": "0483",
        "pinyin": "Alashanyouqi"
    },
    {
        "id": "152923",
        "name": "额济纳旗",
        "parentId": "152900",
        "shortName": "额济纳旗",
        "letter": "E",
        "cityCode": "0483",
        "pinyin": "Ejinaqi"
    },
    {
        "id": "210000",
        "name": "辽宁省",
        "parentId": "100000",
        "shortName": "辽宁",
        "letter": "L",
        "cityCode": "",
        "pinyin": "Liaoning"
    },
    {
        "id": "210100",
        "name": "沈阳市",
        "parentId": "210000",
        "shortName": "沈阳",
        "letter": "S",
        "cityCode": "024",
        "pinyin": "Shenyang"
    },
    {
        "id": "210102",
        "name": "和平区",
        "parentId": "210100",
        "shortName": "和平",
        "letter": "H",
        "cityCode": "024",
        "pinyin": "Heping"
    },
    {
        "id": "210103",
        "name": "沈河区",
        "parentId": "210100",
        "shortName": "沈河",
        "letter": "S",
        "cityCode": "024",
        "pinyin": "Shenhe"
    },
    {
        "id": "210104",
        "name": "大东区",
        "parentId": "210100",
        "shortName": "大东",
        "letter": "D",
        "cityCode": "024",
        "pinyin": "Dadong"
    },
    {
        "id": "210105",
        "name": "皇姑区",
        "parentId": "210100",
        "shortName": "皇姑",
        "letter": "H",
        "cityCode": "024",
        "pinyin": "Huanggu"
    },
    {
        "id": "210106",
        "name": "铁西区",
        "parentId": "210100",
        "shortName": "铁西",
        "letter": "T",
        "cityCode": "024",
        "pinyin": "Tiexi"
    },
    {
        "id": "210111",
        "name": "苏家屯区",
        "parentId": "210100",
        "shortName": "苏家屯",
        "letter": "S",
        "cityCode": "024",
        "pinyin": "Sujiatun"
    },
    {
        "id": "210112",
        "name": "浑南区",
        "parentId": "210100",
        "shortName": "浑南",
        "letter": "H",
        "cityCode": "024",
        "pinyin": "Hunnan"
    },
    {
        "id": "210113",
        "name": "沈北新区",
        "parentId": "210100",
        "shortName": "沈北新区",
        "letter": "S",
        "cityCode": "024",
        "pinyin": "Shenbeixinqu"
    },
    {
        "id": "210114",
        "name": "于洪区",
        "parentId": "210100",
        "shortName": "于洪",
        "letter": "Y",
        "cityCode": "024",
        "pinyin": "Yuhong"
    },
    {
        "id": "210122",
        "name": "辽中县",
        "parentId": "210100",
        "shortName": "辽中",
        "letter": "L",
        "cityCode": "024",
        "pinyin": "Liaozhong"
    },
    {
        "id": "210123",
        "name": "康平县",
        "parentId": "210100",
        "shortName": "康平",
        "letter": "K",
        "cityCode": "024",
        "pinyin": "Kangping"
    },
    {
        "id": "210124",
        "name": "法库县",
        "parentId": "210100",
        "shortName": "法库",
        "letter": "F",
        "cityCode": "024",
        "pinyin": "Faku"
    },
    {
        "id": "210181",
        "name": "新民市",
        "parentId": "210100",
        "shortName": "新民",
        "letter": "X",
        "cityCode": "024",
        "pinyin": "Xinmin"
    },
    {
        "id": "210200",
        "name": "大连市",
        "parentId": "210000",
        "shortName": "大连",
        "letter": "D",
        "cityCode": "0411",
        "pinyin": "Dalian"
    },
    {
        "id": "210202",
        "name": "中山区",
        "parentId": "210200",
        "shortName": "中山",
        "letter": "Z",
        "cityCode": "0411",
        "pinyin": "Zhongshan"
    },
    {
        "id": "210203",
        "name": "西岗区",
        "parentId": "210200",
        "shortName": "西岗",
        "letter": "X",
        "cityCode": "0411",
        "pinyin": "Xigang"
    },
    {
        "id": "210204",
        "name": "沙河口区",
        "parentId": "210200",
        "shortName": "沙河口",
        "letter": "S",
        "cityCode": "0411",
        "pinyin": "Shahekou"
    },
    {
        "id": "210211",
        "name": "甘井子区",
        "parentId": "210200",
        "shortName": "甘井子",
        "letter": "G",
        "cityCode": "0411",
        "pinyin": "Ganjingzi"
    },
    {
        "id": "210212",
        "name": "旅顺口区",
        "parentId": "210200",
        "shortName": "旅顺口",
        "letter": "L",
        "cityCode": "0411",
        "pinyin": "Lvshunkou"
    },
    {
        "id": "210213",
        "name": "金州区",
        "parentId": "210200",
        "shortName": "金州",
        "letter": "J",
        "cityCode": "0411",
        "pinyin": "Jinzhou"
    },
    {
        "id": "210224",
        "name": "长海县",
        "parentId": "210200",
        "shortName": "长海",
        "letter": "C",
        "cityCode": "0411",
        "pinyin": "Changhai"
    },
    {
        "id": "210281",
        "name": "瓦房店市",
        "parentId": "210200",
        "shortName": "瓦房店",
        "letter": "W",
        "cityCode": "0411",
        "pinyin": "Wafangdian"
    },
    {
        "id": "210282",
        "name": "普兰店市",
        "parentId": "210200",
        "shortName": "普兰店",
        "letter": "P",
        "cityCode": "0411",
        "pinyin": "Pulandian"
    },
    {
        "id": "210283",
        "name": "庄河市",
        "parentId": "210200",
        "shortName": "庄河",
        "letter": "Z",
        "cityCode": "0411",
        "pinyin": "Zhuanghe"
    },
    {
        "id": "210300",
        "name": "鞍山市",
        "parentId": "210000",
        "shortName": "鞍山",
        "letter": "A",
        "cityCode": "0412",
        "pinyin": "Anshan"
    },
    {
        "id": "210302",
        "name": "铁东区",
        "parentId": "210300",
        "shortName": "铁东",
        "letter": "T",
        "cityCode": "0412",
        "pinyin": "Tiedong"
    },
    {
        "id": "210303",
        "name": "铁西区",
        "parentId": "210300",
        "shortName": "铁西",
        "letter": "T",
        "cityCode": "0413",
        "pinyin": "Tiexi"
    },
    {
        "id": "210304",
        "name": "立山区",
        "parentId": "210300",
        "shortName": "立山",
        "letter": "L",
        "cityCode": "0414",
        "pinyin": "Lishan"
    },
    {
        "id": "210311",
        "name": "千山区",
        "parentId": "210300",
        "shortName": "千山",
        "letter": "Q",
        "cityCode": "0415",
        "pinyin": "Qianshan"
    },
    {
        "id": "210321",
        "name": "台安县",
        "parentId": "210300",
        "shortName": "台安",
        "letter": "T",
        "cityCode": "0417",
        "pinyin": "Tai'an"
    },
    {
        "id": "210323",
        "name": "岫岩满族自治县",
        "parentId": "210300",
        "shortName": "岫岩",
        "letter": "X",
        "cityCode": "0418",
        "pinyin": "Xiuyan"
    },
    {
        "id": "210381",
        "name": "海城市",
        "parentId": "210300",
        "shortName": "海城",
        "letter": "H",
        "cityCode": "0416",
        "pinyin": "Haicheng"
    },
    {
        "id": "210400",
        "name": "抚顺市",
        "parentId": "210000",
        "shortName": "抚顺",
        "letter": "F",
        "cityCode": "024",
        "pinyin": "Fushun"
    },
    {
        "id": "210402",
        "name": "新抚区",
        "parentId": "210400",
        "shortName": "新抚",
        "letter": "X",
        "cityCode": "024",
        "pinyin": "Xinfu"
    },
    {
        "id": "210403",
        "name": "东洲区",
        "parentId": "210400",
        "shortName": "东洲",
        "letter": "D",
        "cityCode": "024",
        "pinyin": "Dongzhou"
    },
    {
        "id": "210404",
        "name": "望花区",
        "parentId": "210400",
        "shortName": "望花",
        "letter": "W",
        "cityCode": "024",
        "pinyin": "Wanghua"
    },
    {
        "id": "210411",
        "name": "顺城区",
        "parentId": "210400",
        "shortName": "顺城",
        "letter": "S",
        "cityCode": "024",
        "pinyin": "Shuncheng"
    },
    {
        "id": "210421",
        "name": "抚顺县",
        "parentId": "210400",
        "shortName": "抚顺",
        "letter": "F",
        "cityCode": "024",
        "pinyin": "Fushun"
    },
    {
        "id": "210422",
        "name": "新宾满族自治县",
        "parentId": "210400",
        "shortName": "新宾",
        "letter": "X",
        "cityCode": "024",
        "pinyin": "Xinbin"
    },
    {
        "id": "210423",
        "name": "清原满族自治县",
        "parentId": "210400",
        "shortName": "清原",
        "letter": "Q",
        "cityCode": "024",
        "pinyin": "Qingyuan"
    },
    {
        "id": "210500",
        "name": "本溪市",
        "parentId": "210000",
        "shortName": "本溪",
        "letter": "B",
        "cityCode": "0414",
        "pinyin": "Benxi"
    },
    {
        "id": "210502",
        "name": "平山区",
        "parentId": "210500",
        "shortName": "平山",
        "letter": "P",
        "cityCode": "0414",
        "pinyin": "Pingshan"
    },
    {
        "id": "210503",
        "name": "溪湖区",
        "parentId": "210500",
        "shortName": "溪湖",
        "letter": "X",
        "cityCode": "0414",
        "pinyin": "Xihu"
    },
    {
        "id": "210504",
        "name": "明山区",
        "parentId": "210500",
        "shortName": "明山",
        "letter": "M",
        "cityCode": "0414",
        "pinyin": "Mingshan"
    },
    {
        "id": "210505",
        "name": "南芬区",
        "parentId": "210500",
        "shortName": "南芬",
        "letter": "N",
        "cityCode": "0414",
        "pinyin": "Nanfen"
    },
    {
        "id": "210521",
        "name": "本溪满族自治县",
        "parentId": "210500",
        "shortName": "本溪",
        "letter": "B",
        "cityCode": "0414",
        "pinyin": "Benxi"
    },
    {
        "id": "210522",
        "name": "桓仁满族自治县",
        "parentId": "210500",
        "shortName": "桓仁",
        "letter": "H",
        "cityCode": "0414",
        "pinyin": "Huanren"
    },
    {
        "id": "210600",
        "name": "丹东市",
        "parentId": "210000",
        "shortName": "丹东",
        "letter": "D",
        "cityCode": "0415",
        "pinyin": "Dandong"
    },
    {
        "id": "210602",
        "name": "元宝区",
        "parentId": "210600",
        "shortName": "元宝",
        "letter": "Y",
        "cityCode": "0415",
        "pinyin": "Yuanbao"
    },
    {
        "id": "210603",
        "name": "振兴区",
        "parentId": "210600",
        "shortName": "振兴",
        "letter": "Z",
        "cityCode": "0415",
        "pinyin": "Zhenxing"
    },
    {
        "id": "210604",
        "name": "振安区",
        "parentId": "210600",
        "shortName": "振安",
        "letter": "Z",
        "cityCode": "0415",
        "pinyin": "Zhen'an"
    },
    {
        "id": "210624",
        "name": "宽甸满族自治县",
        "parentId": "210600",
        "shortName": "宽甸",
        "letter": "K",
        "cityCode": "0415",
        "pinyin": "Kuandian"
    },
    {
        "id": "210681",
        "name": "东港市",
        "parentId": "210600",
        "shortName": "东港",
        "letter": "D",
        "cityCode": "0415",
        "pinyin": "Donggang"
    },
    {
        "id": "210682",
        "name": "凤城市",
        "parentId": "210600",
        "shortName": "凤城",
        "letter": "F",
        "cityCode": "0415",
        "pinyin": "Fengcheng"
    },
    {
        "id": "210700",
        "name": "锦州市",
        "parentId": "210000",
        "shortName": "锦州",
        "letter": "J",
        "cityCode": "0416",
        "pinyin": "Jinzhou"
    },
    {
        "id": "210702",
        "name": "古塔区",
        "parentId": "210700",
        "shortName": "古塔",
        "letter": "G",
        "cityCode": "0416",
        "pinyin": "Guta"
    },
    {
        "id": "210703",
        "name": "凌河区",
        "parentId": "210700",
        "shortName": "凌河",
        "letter": "L",
        "cityCode": "0416",
        "pinyin": "Linghe"
    },
    {
        "id": "210711",
        "name": "太和区",
        "parentId": "210700",
        "shortName": "太和",
        "letter": "T",
        "cityCode": "0416",
        "pinyin": "Taihe"
    },
    {
        "id": "210726",
        "name": "黑山县",
        "parentId": "210700",
        "shortName": "黑山",
        "letter": "H",
        "cityCode": "0416",
        "pinyin": "Heishan"
    },
    {
        "id": "210727",
        "name": "义县",
        "parentId": "210700",
        "shortName": "义县",
        "letter": "Y",
        "cityCode": "0416",
        "pinyin": "Yixian"
    },
    {
        "id": "210781",
        "name": "凌海市",
        "parentId": "210700",
        "shortName": "凌海",
        "letter": "L",
        "cityCode": "0416",
        "pinyin": "Linghai"
    },
    {
        "id": "210782",
        "name": "北镇市",
        "parentId": "210700",
        "shortName": "北镇",
        "letter": "B",
        "cityCode": "0416",
        "pinyin": "Beizhen"
    },
    {
        "id": "210800",
        "name": "营口市",
        "parentId": "210000",
        "shortName": "营口",
        "letter": "Y",
        "cityCode": "0417",
        "pinyin": "Yingkou"
    },
    {
        "id": "210802",
        "name": "站前区",
        "parentId": "210800",
        "shortName": "站前",
        "letter": "Z",
        "cityCode": "0417",
        "pinyin": "Zhanqian"
    },
    {
        "id": "210803",
        "name": "西市区",
        "parentId": "210800",
        "shortName": "西市",
        "letter": "X",
        "cityCode": "0417",
        "pinyin": "Xishi"
    },
    {
        "id": "210804",
        "name": "鲅鱼圈区",
        "parentId": "210800",
        "shortName": "鲅鱼圈",
        "letter": "B",
        "cityCode": "0417",
        "pinyin": "Bayuquan"
    },
    {
        "id": "210811",
        "name": "老边区",
        "parentId": "210800",
        "shortName": "老边",
        "letter": "L",
        "cityCode": "0417",
        "pinyin": "Laobian"
    },
    {
        "id": "210881",
        "name": "盖州市",
        "parentId": "210800",
        "shortName": "盖州",
        "letter": "G",
        "cityCode": "0417",
        "pinyin": "Gaizhou"
    },
    {
        "id": "210882",
        "name": "大石桥市",
        "parentId": "210800",
        "shortName": "大石桥",
        "letter": "D",
        "cityCode": "0417",
        "pinyin": "Dashiqiao"
    },
    {
        "id": "210900",
        "name": "阜新市",
        "parentId": "210000",
        "shortName": "阜新",
        "letter": "F",
        "cityCode": "0418",
        "pinyin": "Fuxin"
    },
    {
        "id": "210902",
        "name": "海州区",
        "parentId": "210900",
        "shortName": "海州",
        "letter": "H",
        "cityCode": "0418",
        "pinyin": "Haizhou"
    },
    {
        "id": "210903",
        "name": "新邱区",
        "parentId": "210900",
        "shortName": "新邱",
        "letter": "X",
        "cityCode": "0418",
        "pinyin": "Xinqiu"
    },
    {
        "id": "210904",
        "name": "太平区",
        "parentId": "210900",
        "shortName": "太平",
        "letter": "T",
        "cityCode": "0418",
        "pinyin": "Taiping"
    },
    {
        "id": "210905",
        "name": "清河门区",
        "parentId": "210900",
        "shortName": "清河门",
        "letter": "Q",
        "cityCode": "0418",
        "pinyin": "Qinghemen"
    },
    {
        "id": "210911",
        "name": "细河区",
        "parentId": "210900",
        "shortName": "细河",
        "letter": "X",
        "cityCode": "0418",
        "pinyin": "Xihe"
    },
    {
        "id": "210921",
        "name": "阜新蒙古族自治县",
        "parentId": "210900",
        "shortName": "阜新",
        "letter": "F",
        "cityCode": "0418",
        "pinyin": "Fuxin"
    },
    {
        "id": "210922",
        "name": "彰武县",
        "parentId": "210900",
        "shortName": "彰武",
        "letter": "Z",
        "cityCode": "0418",
        "pinyin": "Zhangwu"
    },
    {
        "id": "211000",
        "name": "辽阳市",
        "parentId": "210000",
        "shortName": "辽阳",
        "letter": "L",
        "cityCode": "0419",
        "pinyin": "Liaoyang"
    },
    {
        "id": "211002",
        "name": "白塔区",
        "parentId": "211000",
        "shortName": "白塔",
        "letter": "B",
        "cityCode": "0419",
        "pinyin": "Baita"
    },
    {
        "id": "211003",
        "name": "文圣区",
        "parentId": "211000",
        "shortName": "文圣",
        "letter": "W",
        "cityCode": "0419",
        "pinyin": "Wensheng"
    },
    {
        "id": "211004",
        "name": "宏伟区",
        "parentId": "211000",
        "shortName": "宏伟",
        "letter": "H",
        "cityCode": "0419",
        "pinyin": "Hongwei"
    },
    {
        "id": "211005",
        "name": "弓长岭区",
        "parentId": "211000",
        "shortName": "弓长岭",
        "letter": "G",
        "cityCode": "0419",
        "pinyin": "Gongchangling"
    },
    {
        "id": "211011",
        "name": "太子河区",
        "parentId": "211000",
        "shortName": "太子河",
        "letter": "T",
        "cityCode": "0419",
        "pinyin": "Taizihe"
    },
    {
        "id": "211021",
        "name": "辽阳县",
        "parentId": "211000",
        "shortName": "辽阳",
        "letter": "L",
        "cityCode": "0419",
        "pinyin": "Liaoyang"
    },
    {
        "id": "211081",
        "name": "灯塔市",
        "parentId": "211000",
        "shortName": "灯塔",
        "letter": "D",
        "cityCode": "0419",
        "pinyin": "Dengta"
    },
    {
        "id": "211100",
        "name": "盘锦市",
        "parentId": "210000",
        "shortName": "盘锦",
        "letter": "P",
        "cityCode": "0427",
        "pinyin": "Panjin"
    },
    {
        "id": "211102",
        "name": "双台子区",
        "parentId": "211100",
        "shortName": "双台子",
        "letter": "S",
        "cityCode": "0427",
        "pinyin": "Shuangtaizi"
    },
    {
        "id": "211103",
        "name": "兴隆台区",
        "parentId": "211100",
        "shortName": "兴隆台",
        "letter": "X",
        "cityCode": "0427",
        "pinyin": "Xinglongtai"
    },
    {
        "id": "211121",
        "name": "大洼县",
        "parentId": "211100",
        "shortName": "大洼",
        "letter": "D",
        "cityCode": "0427",
        "pinyin": "Dawa"
    },
    {
        "id": "211122",
        "name": "盘山县",
        "parentId": "211100",
        "shortName": "盘山",
        "letter": "P",
        "cityCode": "0427",
        "pinyin": "Panshan"
    },
    {
        "id": "211200",
        "name": "铁岭市",
        "parentId": "210000",
        "shortName": "铁岭",
        "letter": "T",
        "cityCode": "024",
        "pinyin": "Tieling"
    },
    {
        "id": "211202",
        "name": "银州区",
        "parentId": "211200",
        "shortName": "银州",
        "letter": "Y",
        "cityCode": "024",
        "pinyin": "Yinzhou"
    },
    {
        "id": "211204",
        "name": "清河区",
        "parentId": "211200",
        "shortName": "清河",
        "letter": "Q",
        "cityCode": "024",
        "pinyin": "Qinghe"
    },
    {
        "id": "211221",
        "name": "铁岭县",
        "parentId": "211200",
        "shortName": "铁岭",
        "letter": "T",
        "cityCode": "024",
        "pinyin": "Tieling"
    },
    {
        "id": "211223",
        "name": "西丰县",
        "parentId": "211200",
        "shortName": "西丰",
        "letter": "X",
        "cityCode": "024",
        "pinyin": "Xifeng"
    },
    {
        "id": "211224",
        "name": "昌图县",
        "parentId": "211200",
        "shortName": "昌图",
        "letter": "C",
        "cityCode": "024",
        "pinyin": "Changtu"
    },
    {
        "id": "211281",
        "name": "调兵山市",
        "parentId": "211200",
        "shortName": "调兵山",
        "letter": "D",
        "cityCode": "024",
        "pinyin": "Diaobingshan"
    },
    {
        "id": "211282",
        "name": "开原市",
        "parentId": "211200",
        "shortName": "开原",
        "letter": "K",
        "cityCode": "024",
        "pinyin": "Kaiyuan"
    },
    {
        "id": "211300",
        "name": "朝阳市",
        "parentId": "210000",
        "shortName": "朝阳",
        "letter": "C",
        "cityCode": "0421",
        "pinyin": "Chaoyang"
    },
    {
        "id": "211302",
        "name": "双塔区",
        "parentId": "211300",
        "shortName": "双塔",
        "letter": "S",
        "cityCode": "0421",
        "pinyin": "Shuangta"
    },
    {
        "id": "211303",
        "name": "龙城区",
        "parentId": "211300",
        "shortName": "龙城",
        "letter": "L",
        "cityCode": "0421",
        "pinyin": "Longcheng"
    },
    {
        "id": "211321",
        "name": "朝阳县",
        "parentId": "211300",
        "shortName": "朝阳",
        "letter": "C",
        "cityCode": "0421",
        "pinyin": "Chaoyang"
    },
    {
        "id": "211322",
        "name": "建平县",
        "parentId": "211300",
        "shortName": "建平",
        "letter": "J",
        "cityCode": "0421",
        "pinyin": "Jianping"
    },
    {
        "id": "211324",
        "name": "喀喇沁左翼蒙古族自治县",
        "parentId": "211300",
        "shortName": "喀喇沁左翼",
        "letter": "K",
        "cityCode": "0421",
        "pinyin": "Kalaqinzuoyi"
    },
    {
        "id": "211381",
        "name": "北票市",
        "parentId": "211300",
        "shortName": "北票",
        "letter": "B",
        "cityCode": "0421",
        "pinyin": "Beipiao"
    },
    {
        "id": "211382",
        "name": "凌源市",
        "parentId": "211300",
        "shortName": "凌源",
        "letter": "L",
        "cityCode": "0421",
        "pinyin": "Lingyuan"
    },
    {
        "id": "211400",
        "name": "葫芦岛市",
        "parentId": "210000",
        "shortName": "葫芦岛",
        "letter": "H",
        "cityCode": "0429",
        "pinyin": "Huludao"
    },
    {
        "id": "211402",
        "name": "连山区",
        "parentId": "211400",
        "shortName": "连山",
        "letter": "L",
        "cityCode": "0429",
        "pinyin": "Lianshan"
    },
    {
        "id": "211403",
        "name": "龙港区",
        "parentId": "211400",
        "shortName": "龙港",
        "letter": "L",
        "cityCode": "0429",
        "pinyin": "Longgang"
    },
    {
        "id": "211404",
        "name": "南票区",
        "parentId": "211400",
        "shortName": "南票",
        "letter": "N",
        "cityCode": "0429",
        "pinyin": "Nanpiao"
    },
    {
        "id": "211421",
        "name": "绥中县",
        "parentId": "211400",
        "shortName": "绥中",
        "letter": "S",
        "cityCode": "0429",
        "pinyin": "Suizhong"
    },
    {
        "id": "211422",
        "name": "建昌县",
        "parentId": "211400",
        "shortName": "建昌",
        "letter": "J",
        "cityCode": "0429",
        "pinyin": "Jianchang"
    },
    {
        "id": "211481",
        "name": "兴城市",
        "parentId": "211400",
        "shortName": "兴城",
        "letter": "X",
        "cityCode": "0429",
        "pinyin": "Xingcheng"
    },
    {
        "id": "211500",
        "name": "金普新区",
        "parentId": "210000",
        "shortName": "金普新区",
        "letter": "J",
        "cityCode": "0411",
        "pinyin": "Jinpuxinqu"
    },
    {
        "id": "211501",
        "name": "金州新区",
        "parentId": "211500",
        "shortName": "金州新区",
        "letter": "J",
        "cityCode": "0411",
        "pinyin": "Jinzhouxinqu"
    },
    {
        "id": "211502",
        "name": "普湾新区",
        "parentId": "211500",
        "shortName": "普湾新区",
        "letter": "P",
        "cityCode": "0411",
        "pinyin": "Puwanxinqu"
    },
    {
        "id": "211503",
        "name": "保税区",
        "parentId": "211500",
        "shortName": "保税区",
        "letter": "B",
        "cityCode": "0411",
        "pinyin": "Baoshuiqu"
    },
    {
        "id": "220000",
        "name": "吉林省",
        "parentId": "100000",
        "shortName": "吉林",
        "letter": "J",
        "cityCode": "",
        "pinyin": "Jilin"
    },
    {
        "id": "220100",
        "name": "长春市",
        "parentId": "220000",
        "shortName": "长春",
        "letter": "C",
        "cityCode": "0431",
        "pinyin": "Changchun"
    },
    {
        "id": "220102",
        "name": "南关区",
        "parentId": "220100",
        "shortName": "南关",
        "letter": "N",
        "cityCode": "0431",
        "pinyin": "Nanguan"
    },
    {
        "id": "220103",
        "name": "宽城区",
        "parentId": "220100",
        "shortName": "宽城",
        "letter": "K",
        "cityCode": "0431",
        "pinyin": "Kuancheng"
    },
    {
        "id": "220104",
        "name": "朝阳区",
        "parentId": "220100",
        "shortName": "朝阳",
        "letter": "C",
        "cityCode": "0431",
        "pinyin": "Chaoyang"
    },
    {
        "id": "220105",
        "name": "二道区",
        "parentId": "220100",
        "shortName": "二道",
        "letter": "E",
        "cityCode": "0431",
        "pinyin": "Erdao"
    },
    {
        "id": "220106",
        "name": "绿园区",
        "parentId": "220100",
        "shortName": "绿园",
        "letter": "L",
        "cityCode": "0431",
        "pinyin": "Lvyuan"
    },
    {
        "id": "220112",
        "name": "双阳区",
        "parentId": "220100",
        "shortName": "双阳",
        "letter": "S",
        "cityCode": "0431",
        "pinyin": "Shuangyang"
    },
    {
        "id": "220113",
        "name": "九台区",
        "parentId": "220100",
        "shortName": "九台",
        "letter": "J",
        "cityCode": "0431",
        "pinyin": "Jiutai"
    },
    {
        "id": "220122",
        "name": "农安县",
        "parentId": "220100",
        "shortName": "农安",
        "letter": "N",
        "cityCode": "0431",
        "pinyin": "Nong'an"
    },
    {
        "id": "220182",
        "name": "榆树市",
        "parentId": "220100",
        "shortName": "榆树",
        "letter": "Y",
        "cityCode": "0431",
        "pinyin": "Yushu"
    },
    {
        "id": "220183",
        "name": "德惠市",
        "parentId": "220100",
        "shortName": "德惠",
        "letter": "D",
        "cityCode": "0431",
        "pinyin": "Dehui"
    },
    {
        "id": "220200",
        "name": "吉林市",
        "parentId": "220000",
        "shortName": "吉林",
        "letter": "J",
        "cityCode": "0432",
        "pinyin": "Jilin"
    },
    {
        "id": "220202",
        "name": "昌邑区",
        "parentId": "220200",
        "shortName": "昌邑",
        "letter": "C",
        "cityCode": "0432",
        "pinyin": "Changyi"
    },
    {
        "id": "220203",
        "name": "龙潭区",
        "parentId": "220200",
        "shortName": "龙潭",
        "letter": "L",
        "cityCode": "0432",
        "pinyin": "Longtan"
    },
    {
        "id": "220204",
        "name": "船营区",
        "parentId": "220200",
        "shortName": "船营",
        "letter": "C",
        "cityCode": "0432",
        "pinyin": "Chuanying"
    },
    {
        "id": "220211",
        "name": "丰满区",
        "parentId": "220200",
        "shortName": "丰满",
        "letter": "F",
        "cityCode": "0432",
        "pinyin": "Fengman"
    },
    {
        "id": "220221",
        "name": "永吉县",
        "parentId": "220200",
        "shortName": "永吉",
        "letter": "Y",
        "cityCode": "0432",
        "pinyin": "Yongji"
    },
    {
        "id": "220281",
        "name": "蛟河市",
        "parentId": "220200",
        "shortName": "蛟河",
        "letter": "J",
        "cityCode": "0432",
        "pinyin": "Jiaohe"
    },
    {
        "id": "220282",
        "name": "桦甸市",
        "parentId": "220200",
        "shortName": "桦甸",
        "letter": "H",
        "cityCode": "0432",
        "pinyin": "Huadian"
    },
    {
        "id": "220283",
        "name": "舒兰市",
        "parentId": "220200",
        "shortName": "舒兰",
        "letter": "S",
        "cityCode": "0432",
        "pinyin": "Shulan"
    },
    {
        "id": "220284",
        "name": "磐石市",
        "parentId": "220200",
        "shortName": "磐石",
        "letter": "P",
        "cityCode": "0432",
        "pinyin": "Panshi"
    },
    {
        "id": "220300",
        "name": "四平市",
        "parentId": "220000",
        "shortName": "四平",
        "letter": "S",
        "cityCode": "0434",
        "pinyin": "Siping"
    },
    {
        "id": "220302",
        "name": "铁西区",
        "parentId": "220300",
        "shortName": "铁西",
        "letter": "T",
        "cityCode": "0434",
        "pinyin": "Tiexi"
    },
    {
        "id": "220303",
        "name": "铁东区",
        "parentId": "220300",
        "shortName": "铁东",
        "letter": "T",
        "cityCode": "0434",
        "pinyin": "Tiedong"
    },
    {
        "id": "220322",
        "name": "梨树县",
        "parentId": "220300",
        "shortName": "梨树",
        "letter": "L",
        "cityCode": "0434",
        "pinyin": "Lishu"
    },
    {
        "id": "220323",
        "name": "伊通满族自治县",
        "parentId": "220300",
        "shortName": "伊通",
        "letter": "Y",
        "cityCode": "0434",
        "pinyin": "Yitong"
    },
    {
        "id": "220381",
        "name": "公主岭市",
        "parentId": "220300",
        "shortName": "公主岭",
        "letter": "G",
        "cityCode": "0434",
        "pinyin": "Gongzhuling"
    },
    {
        "id": "220382",
        "name": "双辽市",
        "parentId": "220300",
        "shortName": "双辽",
        "letter": "S",
        "cityCode": "0434",
        "pinyin": "Shuangliao"
    },
    {
        "id": "220400",
        "name": "辽源市",
        "parentId": "220000",
        "shortName": "辽源",
        "letter": "L",
        "cityCode": "0437",
        "pinyin": "Liaoyuan"
    },
    {
        "id": "220402",
        "name": "龙山区",
        "parentId": "220400",
        "shortName": "龙山",
        "letter": "L",
        "cityCode": "0437",
        "pinyin": "Longshan"
    },
    {
        "id": "220403",
        "name": "西安区",
        "parentId": "220400",
        "shortName": "西安",
        "letter": "X",
        "cityCode": "0437",
        "pinyin": "Xi'an"
    },
    {
        "id": "220421",
        "name": "东丰县",
        "parentId": "220400",
        "shortName": "东丰",
        "letter": "D",
        "cityCode": "0437",
        "pinyin": "Dongfeng"
    },
    {
        "id": "220422",
        "name": "东辽县",
        "parentId": "220400",
        "shortName": "东辽",
        "letter": "D",
        "cityCode": "0437",
        "pinyin": "Dongliao"
    },
    {
        "id": "220500",
        "name": "通化市",
        "parentId": "220000",
        "shortName": "通化",
        "letter": "T",
        "cityCode": "0435",
        "pinyin": "Tonghua"
    },
    {
        "id": "220502",
        "name": "东昌区",
        "parentId": "220500",
        "shortName": "东昌",
        "letter": "D",
        "cityCode": "0435",
        "pinyin": "Dongchang"
    },
    {
        "id": "220503",
        "name": "二道江区",
        "parentId": "220500",
        "shortName": "二道江",
        "letter": "E",
        "cityCode": "0435",
        "pinyin": "Erdaojiang"
    },
    {
        "id": "220521",
        "name": "通化县",
        "parentId": "220500",
        "shortName": "通化",
        "letter": "T",
        "cityCode": "0435",
        "pinyin": "Tonghua"
    },
    {
        "id": "220523",
        "name": "辉南县",
        "parentId": "220500",
        "shortName": "辉南",
        "letter": "H",
        "cityCode": "0435",
        "pinyin": "Huinan"
    },
    {
        "id": "220524",
        "name": "柳河县",
        "parentId": "220500",
        "shortName": "柳河",
        "letter": "L",
        "cityCode": "0435",
        "pinyin": "Liuhe"
    },
    {
        "id": "220581",
        "name": "梅河口市",
        "parentId": "220500",
        "shortName": "梅河口",
        "letter": "M",
        "cityCode": "0435",
        "pinyin": "Meihekou"
    },
    {
        "id": "220582",
        "name": "集安市",
        "parentId": "220500",
        "shortName": "集安",
        "letter": "J",
        "cityCode": "0435",
        "pinyin": "Ji'an"
    },
    {
        "id": "220600",
        "name": "白山市",
        "parentId": "220000",
        "shortName": "白山",
        "letter": "B",
        "cityCode": "0439",
        "pinyin": "Baishan"
    },
    {
        "id": "220602",
        "name": "浑江区",
        "parentId": "220600",
        "shortName": "浑江",
        "letter": "H",
        "cityCode": "0439",
        "pinyin": "Hunjiang"
    },
    {
        "id": "220605",
        "name": "江源区",
        "parentId": "220600",
        "shortName": "江源",
        "letter": "J",
        "cityCode": "0439",
        "pinyin": "Jiangyuan"
    },
    {
        "id": "220621",
        "name": "抚松县",
        "parentId": "220600",
        "shortName": "抚松",
        "letter": "F",
        "cityCode": "0439",
        "pinyin": "Fusong"
    },
    {
        "id": "220622",
        "name": "靖宇县",
        "parentId": "220600",
        "shortName": "靖宇",
        "letter": "J",
        "cityCode": "0439",
        "pinyin": "Jingyu"
    },
    {
        "id": "220623",
        "name": "长白朝鲜族自治县",
        "parentId": "220600",
        "shortName": "长白",
        "letter": "C",
        "cityCode": "0439",
        "pinyin": "Changbai"
    },
    {
        "id": "220681",
        "name": "临江市",
        "parentId": "220600",
        "shortName": "临江",
        "letter": "L",
        "cityCode": "0439",
        "pinyin": "Linjiang"
    },
    {
        "id": "220700",
        "name": "松原市",
        "parentId": "220000",
        "shortName": "松原",
        "letter": "S",
        "cityCode": "0438",
        "pinyin": "Songyuan"
    },
    {
        "id": "220702",
        "name": "宁江区",
        "parentId": "220700",
        "shortName": "宁江",
        "letter": "N",
        "cityCode": "0438",
        "pinyin": "Ningjiang"
    },
    {
        "id": "220721",
        "name": "前郭尔罗斯蒙古族自治县",
        "parentId": "220700",
        "shortName": "前郭尔罗斯",
        "letter": "Q",
        "cityCode": "0438",
        "pinyin": "Qianguoerluosi"
    },
    {
        "id": "220722",
        "name": "长岭县",
        "parentId": "220700",
        "shortName": "长岭",
        "letter": "C",
        "cityCode": "0438",
        "pinyin": "Changling"
    },
    {
        "id": "220723",
        "name": "乾安县",
        "parentId": "220700",
        "shortName": "乾安",
        "letter": "Q",
        "cityCode": "0438",
        "pinyin": "Qian'an"
    },
    {
        "id": "220781",
        "name": "扶余市",
        "parentId": "220700",
        "shortName": "扶余",
        "letter": "F",
        "cityCode": "0438",
        "pinyin": "Fuyu"
    },
    {
        "id": "220800",
        "name": "白城市",
        "parentId": "220000",
        "shortName": "白城",
        "letter": "B",
        "cityCode": "0436",
        "pinyin": "Baicheng"
    },
    {
        "id": "220802",
        "name": "洮北区",
        "parentId": "220800",
        "shortName": "洮北",
        "letter": "T",
        "cityCode": "0436",
        "pinyin": "Taobei"
    },
    {
        "id": "220821",
        "name": "镇赉县",
        "parentId": "220800",
        "shortName": "镇赉",
        "letter": "Z",
        "cityCode": "0436",
        "pinyin": "Zhenlai"
    },
    {
        "id": "220822",
        "name": "通榆县",
        "parentId": "220800",
        "shortName": "通榆",
        "letter": "T",
        "cityCode": "0436",
        "pinyin": "Tongyu"
    },
    {
        "id": "220881",
        "name": "洮南市",
        "parentId": "220800",
        "shortName": "洮南",
        "letter": "T",
        "cityCode": "0436",
        "pinyin": "Taonan"
    },
    {
        "id": "220882",
        "name": "大安市",
        "parentId": "220800",
        "shortName": "大安",
        "letter": "D",
        "cityCode": "0436",
        "pinyin": "Da'an"
    },
    {
        "id": "222400",
        "name": "延边朝鲜族自治州",
        "parentId": "220000",
        "shortName": "延边",
        "letter": "Y",
        "cityCode": "0433",
        "pinyin": "Yanbian"
    },
    {
        "id": "222401",
        "name": "延吉市",
        "parentId": "222400",
        "shortName": "延吉",
        "letter": "Y",
        "cityCode": "0433",
        "pinyin": "Yanji"
    },
    {
        "id": "222402",
        "name": "图们市",
        "parentId": "222400",
        "shortName": "图们",
        "letter": "T",
        "cityCode": "0433",
        "pinyin": "Tumen"
    },
    {
        "id": "222403",
        "name": "敦化市",
        "parentId": "222400",
        "shortName": "敦化",
        "letter": "D",
        "cityCode": "0433",
        "pinyin": "Dunhua"
    },
    {
        "id": "222404",
        "name": "珲春市",
        "parentId": "222400",
        "shortName": "珲春",
        "letter": "H",
        "cityCode": "0433",
        "pinyin": "Hunchun"
    },
    {
        "id": "222405",
        "name": "龙井市",
        "parentId": "222400",
        "shortName": "龙井",
        "letter": "L",
        "cityCode": "0433",
        "pinyin": "Longjing"
    },
    {
        "id": "222406",
        "name": "和龙市",
        "parentId": "222400",
        "shortName": "和龙",
        "letter": "H",
        "cityCode": "0433",
        "pinyin": "Helong"
    },
    {
        "id": "222424",
        "name": "汪清县",
        "parentId": "222400",
        "shortName": "汪清",
        "letter": "W",
        "cityCode": "0433",
        "pinyin": "Wangqing"
    },
    {
        "id": "222426",
        "name": "安图县",
        "parentId": "222400",
        "shortName": "安图",
        "letter": "A",
        "cityCode": "0433",
        "pinyin": "Antu"
    },
    {
        "id": "230000",
        "name": "黑龙江省",
        "parentId": "100000",
        "shortName": "黑龙江",
        "letter": "H",
        "cityCode": "",
        "pinyin": "Heilongjiang"
    },
    {
        "id": "230100",
        "name": "哈尔滨市",
        "parentId": "230000",
        "shortName": "哈尔滨",
        "letter": "H",
        "cityCode": "0451",
        "pinyin": "Harbin"
    },
    {
        "id": "230102",
        "name": "道里区",
        "parentId": "230100",
        "shortName": "道里",
        "letter": "D",
        "cityCode": "0451",
        "pinyin": "Daoli"
    },
    {
        "id": "230103",
        "name": "南岗区",
        "parentId": "230100",
        "shortName": "南岗",
        "letter": "N",
        "cityCode": "0451",
        "pinyin": "Nangang"
    },
    {
        "id": "230104",
        "name": "道外区",
        "parentId": "230100",
        "shortName": "道外",
        "letter": "D",
        "cityCode": "0451",
        "pinyin": "Daowai"
    },
    {
        "id": "230108",
        "name": "平房区",
        "parentId": "230100",
        "shortName": "平房",
        "letter": "P",
        "cityCode": "0451",
        "pinyin": "Pingfang"
    },
    {
        "id": "230109",
        "name": "松北区",
        "parentId": "230100",
        "shortName": "松北",
        "letter": "S",
        "cityCode": "0451",
        "pinyin": "Songbei"
    },
    {
        "id": "230110",
        "name": "香坊区",
        "parentId": "230100",
        "shortName": "香坊",
        "letter": "X",
        "cityCode": "0451",
        "pinyin": "Xiangfang"
    },
    {
        "id": "230111",
        "name": "呼兰区",
        "parentId": "230100",
        "shortName": "呼兰",
        "letter": "H",
        "cityCode": "0451",
        "pinyin": "Hulan"
    },
    {
        "id": "230112",
        "name": "阿城区",
        "parentId": "230100",
        "shortName": "阿城",
        "letter": "A",
        "cityCode": "0451",
        "pinyin": "A'cheng"
    },
    {
        "id": "230113",
        "name": "双城区",
        "parentId": "230100",
        "shortName": "双城",
        "letter": "S",
        "cityCode": "0451",
        "pinyin": "Shuangcheng"
    },
    {
        "id": "230123",
        "name": "依兰县",
        "parentId": "230100",
        "shortName": "依兰",
        "letter": "Y",
        "cityCode": "0451",
        "pinyin": "Yilan"
    },
    {
        "id": "230124",
        "name": "方正县",
        "parentId": "230100",
        "shortName": "方正",
        "letter": "F",
        "cityCode": "0451",
        "pinyin": "Fangzheng"
    },
    {
        "id": "230125",
        "name": "宾县",
        "parentId": "230100",
        "shortName": "宾县",
        "letter": "B",
        "cityCode": "0451",
        "pinyin": "Binxian"
    },
    {
        "id": "230126",
        "name": "巴彦县",
        "parentId": "230100",
        "shortName": "巴彦",
        "letter": "B",
        "cityCode": "0451",
        "pinyin": "Bayan"
    },
    {
        "id": "230127",
        "name": "木兰县",
        "parentId": "230100",
        "shortName": "木兰",
        "letter": "M",
        "cityCode": "0451",
        "pinyin": "Mulan"
    },
    {
        "id": "230128",
        "name": "通河县",
        "parentId": "230100",
        "shortName": "通河",
        "letter": "T",
        "cityCode": "0451",
        "pinyin": "Tonghe"
    },
    {
        "id": "230129",
        "name": "延寿县",
        "parentId": "230100",
        "shortName": "延寿",
        "letter": "Y",
        "cityCode": "0451",
        "pinyin": "Yanshou"
    },
    {
        "id": "230183",
        "name": "尚志市",
        "parentId": "230100",
        "shortName": "尚志",
        "letter": "S",
        "cityCode": "0451",
        "pinyin": "Shangzhi"
    },
    {
        "id": "230184",
        "name": "五常市",
        "parentId": "230100",
        "shortName": "五常",
        "letter": "W",
        "cityCode": "0451",
        "pinyin": "Wuchang"
    },
    {
        "id": "230200",
        "name": "齐齐哈尔市",
        "parentId": "230000",
        "shortName": "齐齐哈尔",
        "letter": "Q",
        "cityCode": "0452",
        "pinyin": "Qiqihar"
    },
    {
        "id": "230202",
        "name": "龙沙区",
        "parentId": "230200",
        "shortName": "龙沙",
        "letter": "L",
        "cityCode": "0452",
        "pinyin": "Longsha"
    },
    {
        "id": "230203",
        "name": "建华区",
        "parentId": "230200",
        "shortName": "建华",
        "letter": "J",
        "cityCode": "0452",
        "pinyin": "Jianhua"
    },
    {
        "id": "230204",
        "name": "铁锋区",
        "parentId": "230200",
        "shortName": "铁锋",
        "letter": "T",
        "cityCode": "0452",
        "pinyin": "Tiefeng"
    },
    {
        "id": "230205",
        "name": "昂昂溪区",
        "parentId": "230200",
        "shortName": "昂昂溪",
        "letter": "A",
        "cityCode": "0452",
        "pinyin": "Angangxi"
    },
    {
        "id": "230206",
        "name": "富拉尔基区",
        "parentId": "230200",
        "shortName": "富拉尔基",
        "letter": "F",
        "cityCode": "0452",
        "pinyin": "Fulaerji"
    },
    {
        "id": "230207",
        "name": "碾子山区",
        "parentId": "230200",
        "shortName": "碾子山",
        "letter": "N",
        "cityCode": "0452",
        "pinyin": "Nianzishan"
    },
    {
        "id": "230208",
        "name": "梅里斯达斡尔族区",
        "parentId": "230200",
        "shortName": "梅里斯",
        "letter": "M",
        "cityCode": "0452",
        "pinyin": "Meilisi"
    },
    {
        "id": "230221",
        "name": "龙江县",
        "parentId": "230200",
        "shortName": "龙江",
        "letter": "L",
        "cityCode": "0452",
        "pinyin": "Longjiang"
    },
    {
        "id": "230223",
        "name": "依安县",
        "parentId": "230200",
        "shortName": "依安",
        "letter": "Y",
        "cityCode": "0452",
        "pinyin": "Yi'an"
    },
    {
        "id": "230224",
        "name": "泰来县",
        "parentId": "230200",
        "shortName": "泰来",
        "letter": "T",
        "cityCode": "0452",
        "pinyin": "Tailai"
    },
    {
        "id": "230225",
        "name": "甘南县",
        "parentId": "230200",
        "shortName": "甘南",
        "letter": "G",
        "cityCode": "0452",
        "pinyin": "Gannan"
    },
    {
        "id": "230227",
        "name": "富裕县",
        "parentId": "230200",
        "shortName": "富裕",
        "letter": "F",
        "cityCode": "0452",
        "pinyin": "Fuyu"
    },
    {
        "id": "230229",
        "name": "克山县",
        "parentId": "230200",
        "shortName": "克山",
        "letter": "K",
        "cityCode": "0452",
        "pinyin": "Keshan"
    },
    {
        "id": "230230",
        "name": "克东县",
        "parentId": "230200",
        "shortName": "克东",
        "letter": "K",
        "cityCode": "0452",
        "pinyin": "Kedong"
    },
    {
        "id": "230231",
        "name": "拜泉县",
        "parentId": "230200",
        "shortName": "拜泉",
        "letter": "B",
        "cityCode": "0452",
        "pinyin": "Baiquan"
    },
    {
        "id": "230281",
        "name": "讷河市",
        "parentId": "230200",
        "shortName": "讷河",
        "letter": "N",
        "cityCode": "0452",
        "pinyin": "Nehe"
    },
    {
        "id": "230300",
        "name": "鸡西市",
        "parentId": "230000",
        "shortName": "鸡西",
        "letter": "J",
        "cityCode": "0467",
        "pinyin": "Jixi"
    },
    {
        "id": "230302",
        "name": "鸡冠区",
        "parentId": "230300",
        "shortName": "鸡冠",
        "letter": "J",
        "cityCode": "0467",
        "pinyin": "Jiguan"
    },
    {
        "id": "230303",
        "name": "恒山区",
        "parentId": "230300",
        "shortName": "恒山",
        "letter": "H",
        "cityCode": "0467",
        "pinyin": "Hengshan"
    },
    {
        "id": "230304",
        "name": "滴道区",
        "parentId": "230300",
        "shortName": "滴道",
        "letter": "D",
        "cityCode": "0467",
        "pinyin": "Didao"
    },
    {
        "id": "230305",
        "name": "梨树区",
        "parentId": "230300",
        "shortName": "梨树",
        "letter": "L",
        "cityCode": "0467",
        "pinyin": "Lishu"
    },
    {
        "id": "230306",
        "name": "城子河区",
        "parentId": "230300",
        "shortName": "城子河",
        "letter": "C",
        "cityCode": "0467",
        "pinyin": "Chengzihe"
    },
    {
        "id": "230307",
        "name": "麻山区",
        "parentId": "230300",
        "shortName": "麻山",
        "letter": "M",
        "cityCode": "0467",
        "pinyin": "Mashan"
    },
    {
        "id": "230321",
        "name": "鸡东县",
        "parentId": "230300",
        "shortName": "鸡东",
        "letter": "J",
        "cityCode": "0467",
        "pinyin": "Jidong"
    },
    {
        "id": "230381",
        "name": "虎林市",
        "parentId": "230300",
        "shortName": "虎林",
        "letter": "H",
        "cityCode": "0467",
        "pinyin": "Hulin"
    },
    {
        "id": "230382",
        "name": "密山市",
        "parentId": "230300",
        "shortName": "密山",
        "letter": "M",
        "cityCode": "0467",
        "pinyin": "Mishan"
    },
    {
        "id": "230400",
        "name": "鹤岗市",
        "parentId": "230000",
        "shortName": "鹤岗",
        "letter": "H",
        "cityCode": "0468",
        "pinyin": "Hegang"
    },
    {
        "id": "230402",
        "name": "向阳区",
        "parentId": "230400",
        "shortName": "向阳",
        "letter": "X",
        "cityCode": "0468",
        "pinyin": "Xiangyang"
    },
    {
        "id": "230403",
        "name": "工农区",
        "parentId": "230400",
        "shortName": "工农",
        "letter": "G",
        "cityCode": "0468",
        "pinyin": "Gongnong"
    },
    {
        "id": "230404",
        "name": "南山区",
        "parentId": "230400",
        "shortName": "南山",
        "letter": "N",
        "cityCode": "0468",
        "pinyin": "Nanshan"
    },
    {
        "id": "230405",
        "name": "兴安区",
        "parentId": "230400",
        "shortName": "兴安",
        "letter": "X",
        "cityCode": "0468",
        "pinyin": "Xing'an"
    },
    {
        "id": "230406",
        "name": "东山区",
        "parentId": "230400",
        "shortName": "东山",
        "letter": "D",
        "cityCode": "0468",
        "pinyin": "Dongshan"
    },
    {
        "id": "230407",
        "name": "兴山区",
        "parentId": "230400",
        "shortName": "兴山",
        "letter": "X",
        "cityCode": "0468",
        "pinyin": "Xingshan"
    },
    {
        "id": "230421",
        "name": "萝北县",
        "parentId": "230400",
        "shortName": "萝北",
        "letter": "L",
        "cityCode": "0468",
        "pinyin": "Luobei"
    },
    {
        "id": "230422",
        "name": "绥滨县",
        "parentId": "230400",
        "shortName": "绥滨",
        "letter": "S",
        "cityCode": "0468",
        "pinyin": "Suibin"
    },
    {
        "id": "230500",
        "name": "双鸭山市",
        "parentId": "230000",
        "shortName": "双鸭山",
        "letter": "S",
        "cityCode": "0469",
        "pinyin": "Shuangyashan"
    },
    {
        "id": "230502",
        "name": "尖山区",
        "parentId": "230500",
        "shortName": "尖山",
        "letter": "J",
        "cityCode": "0469",
        "pinyin": "Jianshan"
    },
    {
        "id": "230503",
        "name": "岭东区",
        "parentId": "230500",
        "shortName": "岭东",
        "letter": "L",
        "cityCode": "0469",
        "pinyin": "Lingdong"
    },
    {
        "id": "230505",
        "name": "四方台区",
        "parentId": "230500",
        "shortName": "四方台",
        "letter": "S",
        "cityCode": "0469",
        "pinyin": "Sifangtai"
    },
    {
        "id": "230506",
        "name": "宝山区",
        "parentId": "230500",
        "shortName": "宝山",
        "letter": "B",
        "cityCode": "0469",
        "pinyin": "Baoshan"
    },
    {
        "id": "230521",
        "name": "集贤县",
        "parentId": "230500",
        "shortName": "集贤",
        "letter": "J",
        "cityCode": "0469",
        "pinyin": "Jixian"
    },
    {
        "id": "230522",
        "name": "友谊县",
        "parentId": "230500",
        "shortName": "友谊",
        "letter": "Y",
        "cityCode": "0469",
        "pinyin": "Youyi"
    },
    {
        "id": "230523",
        "name": "宝清县",
        "parentId": "230500",
        "shortName": "宝清",
        "letter": "B",
        "cityCode": "0469",
        "pinyin": "Baoqing"
    },
    {
        "id": "230524",
        "name": "饶河县",
        "parentId": "230500",
        "shortName": "饶河",
        "letter": "R",
        "cityCode": "0469",
        "pinyin": "Raohe"
    },
    {
        "id": "230600",
        "name": "大庆市",
        "parentId": "230000",
        "shortName": "大庆",
        "letter": "D",
        "cityCode": "0459",
        "pinyin": "Daqing"
    },
    {
        "id": "230602",
        "name": "萨尔图区",
        "parentId": "230600",
        "shortName": "萨尔图",
        "letter": "S",
        "cityCode": "0459",
        "pinyin": "Saertu"
    },
    {
        "id": "230603",
        "name": "龙凤区",
        "parentId": "230600",
        "shortName": "龙凤",
        "letter": "L",
        "cityCode": "0459",
        "pinyin": "Longfeng"
    },
    {
        "id": "230604",
        "name": "让胡路区",
        "parentId": "230600",
        "shortName": "让胡路",
        "letter": "R",
        "cityCode": "0459",
        "pinyin": "Ranghulu"
    },
    {
        "id": "230605",
        "name": "红岗区",
        "parentId": "230600",
        "shortName": "红岗",
        "letter": "H",
        "cityCode": "0459",
        "pinyin": "Honggang"
    },
    {
        "id": "230606",
        "name": "大同区",
        "parentId": "230600",
        "shortName": "大同",
        "letter": "D",
        "cityCode": "0459",
        "pinyin": "Datong"
    },
    {
        "id": "230621",
        "name": "肇州县",
        "parentId": "230600",
        "shortName": "肇州",
        "letter": "Z",
        "cityCode": "0459",
        "pinyin": "Zhaozhou"
    },
    {
        "id": "230622",
        "name": "肇源县",
        "parentId": "230600",
        "shortName": "肇源",
        "letter": "Z",
        "cityCode": "0459",
        "pinyin": "Zhaoyuan"
    },
    {
        "id": "230623",
        "name": "林甸县",
        "parentId": "230600",
        "shortName": "林甸",
        "letter": "L",
        "cityCode": "0459",
        "pinyin": "Lindian"
    },
    {
        "id": "230624",
        "name": "杜尔伯特蒙古族自治县",
        "parentId": "230600",
        "shortName": "杜尔伯特",
        "letter": "D",
        "cityCode": "0459",
        "pinyin": "Duerbote"
    },
    {
        "id": "230700",
        "name": "伊春市",
        "parentId": "230000",
        "shortName": "伊春",
        "letter": "Y",
        "cityCode": "0458",
        "pinyin": "Yichun"
    },
    {
        "id": "230702",
        "name": "伊春区",
        "parentId": "230700",
        "shortName": "伊春",
        "letter": "Y",
        "cityCode": "0458",
        "pinyin": "Yichun"
    },
    {
        "id": "230703",
        "name": "南岔区",
        "parentId": "230700",
        "shortName": "南岔",
        "letter": "N",
        "cityCode": "0458",
        "pinyin": "Nancha"
    },
    {
        "id": "230704",
        "name": "友好区",
        "parentId": "230700",
        "shortName": "友好",
        "letter": "Y",
        "cityCode": "0458",
        "pinyin": "Youhao"
    },
    {
        "id": "230705",
        "name": "西林区",
        "parentId": "230700",
        "shortName": "西林",
        "letter": "X",
        "cityCode": "0458",
        "pinyin": "Xilin"
    },
    {
        "id": "230706",
        "name": "翠峦区",
        "parentId": "230700",
        "shortName": "翠峦",
        "letter": "C",
        "cityCode": "0458",
        "pinyin": "Cuiluan"
    },
    {
        "id": "230707",
        "name": "新青区",
        "parentId": "230700",
        "shortName": "新青",
        "letter": "X",
        "cityCode": "0458",
        "pinyin": "Xinqing"
    },
    {
        "id": "230708",
        "name": "美溪区",
        "parentId": "230700",
        "shortName": "美溪",
        "letter": "M",
        "cityCode": "0458",
        "pinyin": "Meixi"
    },
    {
        "id": "230709",
        "name": "金山屯区",
        "parentId": "230700",
        "shortName": "金山屯",
        "letter": "J",
        "cityCode": "0458",
        "pinyin": "Jinshantun"
    },
    {
        "id": "230710",
        "name": "五营区",
        "parentId": "230700",
        "shortName": "五营",
        "letter": "W",
        "cityCode": "0458",
        "pinyin": "Wuying"
    },
    {
        "id": "230711",
        "name": "乌马河区",
        "parentId": "230700",
        "shortName": "乌马河",
        "letter": "W",
        "cityCode": "0458",
        "pinyin": "Wumahe"
    },
    {
        "id": "230712",
        "name": "汤旺河区",
        "parentId": "230700",
        "shortName": "汤旺河",
        "letter": "T",
        "cityCode": "0458",
        "pinyin": "Tangwanghe"
    },
    {
        "id": "230713",
        "name": "带岭区",
        "parentId": "230700",
        "shortName": "带岭",
        "letter": "D",
        "cityCode": "0458",
        "pinyin": "Dailing"
    },
    {
        "id": "230714",
        "name": "乌伊岭区",
        "parentId": "230700",
        "shortName": "乌伊岭",
        "letter": "W",
        "cityCode": "0458",
        "pinyin": "Wuyiling"
    },
    {
        "id": "230715",
        "name": "红星区",
        "parentId": "230700",
        "shortName": "红星",
        "letter": "H",
        "cityCode": "0458",
        "pinyin": "Hongxing"
    },
    {
        "id": "230716",
        "name": "上甘岭区",
        "parentId": "230700",
        "shortName": "上甘岭",
        "letter": "S",
        "cityCode": "0458",
        "pinyin": "Shangganling"
    },
    {
        "id": "230722",
        "name": "嘉荫县",
        "parentId": "230700",
        "shortName": "嘉荫",
        "letter": "J",
        "cityCode": "0458",
        "pinyin": "Jiayin"
    },
    {
        "id": "230781",
        "name": "铁力市",
        "parentId": "230700",
        "shortName": "铁力",
        "letter": "T",
        "cityCode": "0458",
        "pinyin": "Tieli"
    },
    {
        "id": "230800",
        "name": "佳木斯市",
        "parentId": "230000",
        "shortName": "佳木斯",
        "letter": "J",
        "cityCode": "0454",
        "pinyin": "Jiamusi"
    },
    {
        "id": "230803",
        "name": "向阳区",
        "parentId": "230800",
        "shortName": "向阳",
        "letter": "X",
        "cityCode": "0454",
        "pinyin": "Xiangyang"
    },
    {
        "id": "230804",
        "name": "前进区",
        "parentId": "230800",
        "shortName": "前进",
        "letter": "Q",
        "cityCode": "0454",
        "pinyin": "Qianjin"
    },
    {
        "id": "230805",
        "name": "东风区",
        "parentId": "230800",
        "shortName": "东风",
        "letter": "D",
        "cityCode": "0454",
        "pinyin": "Dongfeng"
    },
    {
        "id": "230811",
        "name": "郊区",
        "parentId": "230800",
        "shortName": "郊区",
        "letter": "J",
        "cityCode": "0454",
        "pinyin": "Jiaoqu"
    },
    {
        "id": "230822",
        "name": "桦南县",
        "parentId": "230800",
        "shortName": "桦南",
        "letter": "H",
        "cityCode": "0454",
        "pinyin": "Huanan"
    },
    {
        "id": "230826",
        "name": "桦川县",
        "parentId": "230800",
        "shortName": "桦川",
        "letter": "H",
        "cityCode": "0454",
        "pinyin": "Huachuan"
    },
    {
        "id": "230828",
        "name": "汤原县",
        "parentId": "230800",
        "shortName": "汤原",
        "letter": "T",
        "cityCode": "0454",
        "pinyin": "Tangyuan"
    },
    {
        "id": "230833",
        "name": "抚远县",
        "parentId": "230800",
        "shortName": "抚远",
        "letter": "F",
        "cityCode": "0454",
        "pinyin": "Fuyuan"
    },
    {
        "id": "230881",
        "name": "同江市",
        "parentId": "230800",
        "shortName": "同江",
        "letter": "T",
        "cityCode": "0454",
        "pinyin": "Tongjiang"
    },
    {
        "id": "230882",
        "name": "富锦市",
        "parentId": "230800",
        "shortName": "富锦",
        "letter": "F",
        "cityCode": "0454",
        "pinyin": "Fujin"
    },
    {
        "id": "230900",
        "name": "七台河市",
        "parentId": "230000",
        "shortName": "七台河",
        "letter": "Q",
        "cityCode": "0464",
        "pinyin": "Qitaihe"
    },
    {
        "id": "230902",
        "name": "新兴区",
        "parentId": "230900",
        "shortName": "新兴",
        "letter": "X",
        "cityCode": "0464",
        "pinyin": "Xinxing"
    },
    {
        "id": "230903",
        "name": "桃山区",
        "parentId": "230900",
        "shortName": "桃山",
        "letter": "T",
        "cityCode": "0464",
        "pinyin": "Taoshan"
    },
    {
        "id": "230904",
        "name": "茄子河区",
        "parentId": "230900",
        "shortName": "茄子河",
        "letter": "Q",
        "cityCode": "0464",
        "pinyin": "Qiezihe"
    },
    {
        "id": "230921",
        "name": "勃利县",
        "parentId": "230900",
        "shortName": "勃利",
        "letter": "B",
        "cityCode": "0464",
        "pinyin": "Boli"
    },
    {
        "id": "231000",
        "name": "牡丹江市",
        "parentId": "230000",
        "shortName": "牡丹江",
        "letter": "M",
        "cityCode": "0453",
        "pinyin": "Mudanjiang"
    },
    {
        "id": "231002",
        "name": "东安区",
        "parentId": "231000",
        "shortName": "东安",
        "letter": "D",
        "cityCode": "0453",
        "pinyin": "Dong'an"
    },
    {
        "id": "231003",
        "name": "阳明区",
        "parentId": "231000",
        "shortName": "阳明",
        "letter": "Y",
        "cityCode": "0453",
        "pinyin": "Yangming"
    },
    {
        "id": "231004",
        "name": "爱民区",
        "parentId": "231000",
        "shortName": "爱民",
        "letter": "A",
        "cityCode": "0453",
        "pinyin": "Aimin"
    },
    {
        "id": "231005",
        "name": "西安区",
        "parentId": "231000",
        "shortName": "西安",
        "letter": "X",
        "cityCode": "0453",
        "pinyin": "Xi'an"
    },
    {
        "id": "231024",
        "name": "东宁县",
        "parentId": "231000",
        "shortName": "东宁",
        "letter": "D",
        "cityCode": "0453",
        "pinyin": "Dongning"
    },
    {
        "id": "231025",
        "name": "林口县",
        "parentId": "231000",
        "shortName": "林口",
        "letter": "L",
        "cityCode": "0453",
        "pinyin": "Linkou"
    },
    {
        "id": "231081",
        "name": "绥芬河市",
        "parentId": "231000",
        "shortName": "绥芬河",
        "letter": "S",
        "cityCode": "0453",
        "pinyin": "Suifenhe"
    },
    {
        "id": "231083",
        "name": "海林市",
        "parentId": "231000",
        "shortName": "海林",
        "letter": "H",
        "cityCode": "0453",
        "pinyin": "Hailin"
    },
    {
        "id": "231084",
        "name": "宁安市",
        "parentId": "231000",
        "shortName": "宁安",
        "letter": "N",
        "cityCode": "0453",
        "pinyin": "Ning'an"
    },
    {
        "id": "231085",
        "name": "穆棱市",
        "parentId": "231000",
        "shortName": "穆棱",
        "letter": "M",
        "cityCode": "0453",
        "pinyin": "Muling"
    },
    {
        "id": "231100",
        "name": "黑河市",
        "parentId": "230000",
        "shortName": "黑河",
        "letter": "H",
        "cityCode": "0456",
        "pinyin": "Heihe"
    },
    {
        "id": "231102",
        "name": "爱辉区",
        "parentId": "231100",
        "shortName": "爱辉",
        "letter": "A",
        "cityCode": "0456",
        "pinyin": "Aihui"
    },
    {
        "id": "231121",
        "name": "嫩江县",
        "parentId": "231100",
        "shortName": "嫩江",
        "letter": "N",
        "cityCode": "0456",
        "pinyin": "Nenjiang"
    },
    {
        "id": "231123",
        "name": "逊克县",
        "parentId": "231100",
        "shortName": "逊克",
        "letter": "X",
        "cityCode": "0456",
        "pinyin": "Xunke"
    },
    {
        "id": "231124",
        "name": "孙吴县",
        "parentId": "231100",
        "shortName": "孙吴",
        "letter": "S",
        "cityCode": "0456",
        "pinyin": "Sunwu"
    },
    {
        "id": "231181",
        "name": "北安市",
        "parentId": "231100",
        "shortName": "北安",
        "letter": "B",
        "cityCode": "0456",
        "pinyin": "Bei'an"
    },
    {
        "id": "231182",
        "name": "五大连池市",
        "parentId": "231100",
        "shortName": "五大连池",
        "letter": "W",
        "cityCode": "0456",
        "pinyin": "Wudalianchi"
    },
    {
        "id": "231200",
        "name": "绥化市",
        "parentId": "230000",
        "shortName": "绥化",
        "letter": "S",
        "cityCode": "0455",
        "pinyin": "Suihua"
    },
    {
        "id": "231202",
        "name": "北林区",
        "parentId": "231200",
        "shortName": "北林",
        "letter": "B",
        "cityCode": "0455",
        "pinyin": "Beilin"
    },
    {
        "id": "231221",
        "name": "望奎县",
        "parentId": "231200",
        "shortName": "望奎",
        "letter": "W",
        "cityCode": "0455",
        "pinyin": "Wangkui"
    },
    {
        "id": "231222",
        "name": "兰西县",
        "parentId": "231200",
        "shortName": "兰西",
        "letter": "L",
        "cityCode": "0455",
        "pinyin": "Lanxi"
    },
    {
        "id": "231223",
        "name": "青冈县",
        "parentId": "231200",
        "shortName": "青冈",
        "letter": "Q",
        "cityCode": "0455",
        "pinyin": "Qinggang"
    },
    {
        "id": "231224",
        "name": "庆安县",
        "parentId": "231200",
        "shortName": "庆安",
        "letter": "Q",
        "cityCode": "0455",
        "pinyin": "Qing'an"
    },
    {
        "id": "231225",
        "name": "明水县",
        "parentId": "231200",
        "shortName": "明水",
        "letter": "M",
        "cityCode": "0455",
        "pinyin": "Mingshui"
    },
    {
        "id": "231226",
        "name": "绥棱县",
        "parentId": "231200",
        "shortName": "绥棱",
        "letter": "S",
        "cityCode": "0455",
        "pinyin": "Suileng"
    },
    {
        "id": "231281",
        "name": "安达市",
        "parentId": "231200",
        "shortName": "安达",
        "letter": "A",
        "cityCode": "0455",
        "pinyin": "Anda"
    },
    {
        "id": "231282",
        "name": "肇东市",
        "parentId": "231200",
        "shortName": "肇东",
        "letter": "Z",
        "cityCode": "0455",
        "pinyin": "Zhaodong"
    },
    {
        "id": "231283",
        "name": "海伦市",
        "parentId": "231200",
        "shortName": "海伦",
        "letter": "H",
        "cityCode": "0455",
        "pinyin": "Hailun"
    },
    {
        "id": "232700",
        "name": "大兴安岭地区",
        "parentId": "230000",
        "shortName": "大兴安岭",
        "letter": "D",
        "cityCode": "0457",
        "pinyin": "DaXingAnLing"
    },
    {
        "id": "232701",
        "name": "加格达奇区",
        "parentId": "232700",
        "shortName": "加格达奇",
        "letter": "J",
        "cityCode": "0457",
        "pinyin": "Jiagedaqi"
    },
    {
        "id": "232702",
        "name": "新林区",
        "parentId": "232700",
        "shortName": "新林",
        "letter": "X",
        "cityCode": "0457",
        "pinyin": "Xinlin"
    },
    {
        "id": "232703",
        "name": "松岭区",
        "parentId": "232700",
        "shortName": "松岭",
        "letter": "S",
        "cityCode": "0457",
        "pinyin": "Songling"
    },
    {
        "id": "232704",
        "name": "呼中区",
        "parentId": "232700",
        "shortName": "呼中",
        "letter": "H",
        "cityCode": "0457",
        "pinyin": "Huzhong"
    },
    {
        "id": "232721",
        "name": "呼玛县",
        "parentId": "232700",
        "shortName": "呼玛",
        "letter": "H",
        "cityCode": "0457",
        "pinyin": "Huma"
    },
    {
        "id": "232722",
        "name": "塔河县",
        "parentId": "232700",
        "shortName": "塔河",
        "letter": "T",
        "cityCode": "0457",
        "pinyin": "Tahe"
    },
    {
        "id": "232723",
        "name": "漠河县",
        "parentId": "232700",
        "shortName": "漠河",
        "letter": "M",
        "cityCode": "0457",
        "pinyin": "Mohe"
    },
    {
        "id": "310000",
        "name": "上海市",
        "parentId": "100000",
        "shortName": "上海",
        "letter": "S",
        "cityCode": "",
        "pinyin": "Shanghai"
    },
    {
        "id": "310100",
        "name": "上海市",
        "parentId": "310000",
        "shortName": "上海",
        "letter": "S",
        "cityCode": "021",
        "pinyin": "Shanghai"
    },
    {
        "id": "310101",
        "name": "黄浦区",
        "parentId": "310100",
        "shortName": "黄浦",
        "letter": "H",
        "cityCode": "021",
        "pinyin": "Huangpu"
    },
    {
        "id": "310104",
        "name": "徐汇区",
        "parentId": "310100",
        "shortName": "徐汇",
        "letter": "X",
        "cityCode": "021",
        "pinyin": "Xuhui"
    },
    {
        "id": "310105",
        "name": "长宁区",
        "parentId": "310100",
        "shortName": "长宁",
        "letter": "C",
        "cityCode": "021",
        "pinyin": "Changning"
    },
    {
        "id": "310106",
        "name": "静安区",
        "parentId": "310100",
        "shortName": "静安",
        "letter": "J",
        "cityCode": "021",
        "pinyin": "Jing'an"
    },
    {
        "id": "310107",
        "name": "普陀区",
        "parentId": "310100",
        "shortName": "普陀",
        "letter": "P",
        "cityCode": "021",
        "pinyin": "Putuo"
    },
    {
        "id": "310108",
        "name": "闸北区",
        "parentId": "310100",
        "shortName": "闸北",
        "letter": "Z",
        "cityCode": "021",
        "pinyin": "Zhabei"
    },
    {
        "id": "310109",
        "name": "虹口区",
        "parentId": "310100",
        "shortName": "虹口",
        "letter": "H",
        "cityCode": "021",
        "pinyin": "Hongkou"
    },
    {
        "id": "310110",
        "name": "杨浦区",
        "parentId": "310100",
        "shortName": "杨浦",
        "letter": "Y",
        "cityCode": "021",
        "pinyin": "Yangpu"
    },
    {
        "id": "310112",
        "name": "闵行区",
        "parentId": "310100",
        "shortName": "闵行",
        "letter": "M",
        "cityCode": "021",
        "pinyin": "Minhang"
    },
    {
        "id": "310113",
        "name": "宝山区",
        "parentId": "310100",
        "shortName": "宝山",
        "letter": "B",
        "cityCode": "021",
        "pinyin": "Baoshan"
    },
    {
        "id": "310114",
        "name": "嘉定区",
        "parentId": "310100",
        "shortName": "嘉定",
        "letter": "J",
        "cityCode": "021",
        "pinyin": "Jiading"
    },
    {
        "id": "310115",
        "name": "浦东新区",
        "parentId": "310100",
        "shortName": "浦东",
        "letter": "P",
        "cityCode": "021",
        "pinyin": "Pudong"
    },
    {
        "id": "310116",
        "name": "金山区",
        "parentId": "310100",
        "shortName": "金山",
        "letter": "J",
        "cityCode": "021",
        "pinyin": "Jinshan"
    },
    {
        "id": "310117",
        "name": "松江区",
        "parentId": "310100",
        "shortName": "松江",
        "letter": "S",
        "cityCode": "021",
        "pinyin": "Songjiang"
    },
    {
        "id": "310118",
        "name": "青浦区",
        "parentId": "310100",
        "shortName": "青浦",
        "letter": "Q",
        "cityCode": "021",
        "pinyin": "Qingpu"
    },
    {
        "id": "310120",
        "name": "奉贤区",
        "parentId": "310100",
        "shortName": "奉贤",
        "letter": "F",
        "cityCode": "021",
        "pinyin": "Fengxian"
    },
    {
        "id": "310230",
        "name": "崇明县",
        "parentId": "310100",
        "shortName": "崇明",
        "letter": "C",
        "cityCode": "021",
        "pinyin": "Chongming"
    },
    {
        "id": "320000",
        "name": "江苏省",
        "parentId": "100000",
        "shortName": "江苏",
        "letter": "J",
        "cityCode": "",
        "pinyin": "Jiangsu"
    },
    {
        "id": "320100",
        "name": "南京市",
        "parentId": "320000",
        "shortName": "南京",
        "letter": "N",
        "cityCode": "025",
        "pinyin": "Nanjing"
    },
    {
        "id": "320102",
        "name": "玄武区",
        "parentId": "320100",
        "shortName": "玄武",
        "letter": "X",
        "cityCode": "025",
        "pinyin": "Xuanwu"
    },
    {
        "id": "320104",
        "name": "秦淮区",
        "parentId": "320100",
        "shortName": "秦淮",
        "letter": "Q",
        "cityCode": "025",
        "pinyin": "Qinhuai"
    },
    {
        "id": "320105",
        "name": "建邺区",
        "parentId": "320100",
        "shortName": "建邺",
        "letter": "J",
        "cityCode": "025",
        "pinyin": "Jianye"
    },
    {
        "id": "320106",
        "name": "鼓楼区",
        "parentId": "320100",
        "shortName": "鼓楼",
        "letter": "G",
        "cityCode": "025",
        "pinyin": "Gulou"
    },
    {
        "id": "320111",
        "name": "浦口区",
        "parentId": "320100",
        "shortName": "浦口",
        "letter": "P",
        "cityCode": "025",
        "pinyin": "Pukou"
    },
    {
        "id": "320113",
        "name": "栖霞区",
        "parentId": "320100",
        "shortName": "栖霞",
        "letter": "Q",
        "cityCode": "025",
        "pinyin": "Qixia"
    },
    {
        "id": "320114",
        "name": "雨花台区",
        "parentId": "320100",
        "shortName": "雨花台",
        "letter": "Y",
        "cityCode": "025",
        "pinyin": "Yuhuatai"
    },
    {
        "id": "320115",
        "name": "江宁区",
        "parentId": "320100",
        "shortName": "江宁",
        "letter": "J",
        "cityCode": "025",
        "pinyin": "Jiangning"
    },
    {
        "id": "320116",
        "name": "六合区",
        "parentId": "320100",
        "shortName": "六合",
        "letter": "L",
        "cityCode": "025",
        "pinyin": "Luhe"
    },
    {
        "id": "320117",
        "name": "溧水区",
        "parentId": "320100",
        "shortName": "溧水",
        "letter": "L",
        "cityCode": "025",
        "pinyin": "Lishui"
    },
    {
        "id": "320118",
        "name": "高淳区",
        "parentId": "320100",
        "shortName": "高淳",
        "letter": "G",
        "cityCode": "025",
        "pinyin": "Gaochun"
    },
    {
        "id": "320200",
        "name": "无锡市",
        "parentId": "320000",
        "shortName": "无锡",
        "letter": "W",
        "cityCode": "0510",
        "pinyin": "Wuxi"
    },
    {
        "id": "320202",
        "name": "崇安区",
        "parentId": "320200",
        "shortName": "崇安",
        "letter": "C",
        "cityCode": "0510",
        "pinyin": "Chong'an"
    },
    {
        "id": "320203",
        "name": "南长区",
        "parentId": "320200",
        "shortName": "南长",
        "letter": "N",
        "cityCode": "0510",
        "pinyin": "Nanchang"
    },
    {
        "id": "320204",
        "name": "北塘区",
        "parentId": "320200",
        "shortName": "北塘",
        "letter": "B",
        "cityCode": "0510",
        "pinyin": "Beitang"
    },
    {
        "id": "320205",
        "name": "锡山区",
        "parentId": "320200",
        "shortName": "锡山",
        "letter": "X",
        "cityCode": "0510",
        "pinyin": "Xishan"
    },
    {
        "id": "320206",
        "name": "惠山区",
        "parentId": "320200",
        "shortName": "惠山",
        "letter": "H",
        "cityCode": "0510",
        "pinyin": "Huishan"
    },
    {
        "id": "320211",
        "name": "滨湖区",
        "parentId": "320200",
        "shortName": "滨湖",
        "letter": "B",
        "cityCode": "0510",
        "pinyin": "Binhu"
    },
    {
        "id": "320281",
        "name": "江阴市",
        "parentId": "320200",
        "shortName": "江阴",
        "letter": "J",
        "cityCode": "0510",
        "pinyin": "Jiangyin"
    },
    {
        "id": "320282",
        "name": "宜兴市",
        "parentId": "320200",
        "shortName": "宜兴",
        "letter": "Y",
        "cityCode": "0510",
        "pinyin": "Yixing"
    },
    {
        "id": "320300",
        "name": "徐州市",
        "parentId": "320000",
        "shortName": "徐州",
        "letter": "X",
        "cityCode": "0516",
        "pinyin": "Xuzhou"
    },
    {
        "id": "320302",
        "name": "鼓楼区",
        "parentId": "320300",
        "shortName": "鼓楼",
        "letter": "G",
        "cityCode": "0516",
        "pinyin": "Gulou"
    },
    {
        "id": "320303",
        "name": "云龙区",
        "parentId": "320300",
        "shortName": "云龙",
        "letter": "Y",
        "cityCode": "0516",
        "pinyin": "Yunlong"
    },
    {
        "id": "320305",
        "name": "贾汪区",
        "parentId": "320300",
        "shortName": "贾汪",
        "letter": "J",
        "cityCode": "0516",
        "pinyin": "Jiawang"
    },
    {
        "id": "320311",
        "name": "泉山区",
        "parentId": "320300",
        "shortName": "泉山",
        "letter": "Q",
        "cityCode": "0516",
        "pinyin": "Quanshan"
    },
    {
        "id": "320312",
        "name": "铜山区",
        "parentId": "320300",
        "shortName": "铜山",
        "letter": "T",
        "cityCode": "0516",
        "pinyin": "Tongshan"
    },
    {
        "id": "320321",
        "name": "丰县",
        "parentId": "320300",
        "shortName": "丰县",
        "letter": "F",
        "cityCode": "0516",
        "pinyin": "Fengxian"
    },
    {
        "id": "320322",
        "name": "沛县",
        "parentId": "320300",
        "shortName": "沛县",
        "letter": "P",
        "cityCode": "0516",
        "pinyin": "Peixian"
    },
    {
        "id": "320324",
        "name": "睢宁县",
        "parentId": "320300",
        "shortName": "睢宁",
        "letter": "S",
        "cityCode": "0516",
        "pinyin": "Suining"
    },
    {
        "id": "320381",
        "name": "新沂市",
        "parentId": "320300",
        "shortName": "新沂",
        "letter": "X",
        "cityCode": "0516",
        "pinyin": "Xinyi"
    },
    {
        "id": "320382",
        "name": "邳州市",
        "parentId": "320300",
        "shortName": "邳州",
        "letter": "P",
        "cityCode": "0516",
        "pinyin": "Pizhou"
    },
    {
        "id": "320400",
        "name": "常州市",
        "parentId": "320000",
        "shortName": "常州",
        "letter": "C",
        "cityCode": "0519",
        "pinyin": "Changzhou"
    },
    {
        "id": "320402",
        "name": "天宁区",
        "parentId": "320400",
        "shortName": "天宁",
        "letter": "T",
        "cityCode": "0519",
        "pinyin": "Tianning"
    },
    {
        "id": "320404",
        "name": "钟楼区",
        "parentId": "320400",
        "shortName": "钟楼",
        "letter": "Z",
        "cityCode": "0519",
        "pinyin": "Zhonglou"
    },
    {
        "id": "320405",
        "name": "戚墅堰区",
        "parentId": "320400",
        "shortName": "戚墅堰",
        "letter": "Q",
        "cityCode": "0519",
        "pinyin": "Qishuyan"
    },
    {
        "id": "320411",
        "name": "新北区",
        "parentId": "320400",
        "shortName": "新北",
        "letter": "X",
        "cityCode": "0519",
        "pinyin": "Xinbei"
    },
    {
        "id": "320412",
        "name": "武进区",
        "parentId": "320400",
        "shortName": "武进",
        "letter": "W",
        "cityCode": "0519",
        "pinyin": "Wujin"
    },
    {
        "id": "320481",
        "name": "溧阳市",
        "parentId": "320400",
        "shortName": "溧阳",
        "letter": "L",
        "cityCode": "0519",
        "pinyin": "Liyang"
    },
    {
        "id": "320482",
        "name": "金坛市",
        "parentId": "320400",
        "shortName": "金坛",
        "letter": "J",
        "cityCode": "0519",
        "pinyin": "Jintan"
    },
    {
        "id": "320500",
        "name": "苏州市",
        "parentId": "320000",
        "shortName": "苏州",
        "letter": "S",
        "cityCode": "0512",
        "pinyin": "Suzhou"
    },
    {
        "id": "320505",
        "name": "虎丘区",
        "parentId": "320500",
        "shortName": "虎丘",
        "letter": "H",
        "cityCode": "0512",
        "pinyin": "Huqiu"
    },
    {
        "id": "320506",
        "name": "吴中区",
        "parentId": "320500",
        "shortName": "吴中",
        "letter": "W",
        "cityCode": "0512",
        "pinyin": "Wuzhong"
    },
    {
        "id": "320507",
        "name": "相城区",
        "parentId": "320500",
        "shortName": "相城",
        "letter": "X",
        "cityCode": "0512",
        "pinyin": "Xiangcheng"
    },
    {
        "id": "320508",
        "name": "姑苏区",
        "parentId": "320500",
        "shortName": "姑苏",
        "letter": "G",
        "cityCode": "0512",
        "pinyin": "Gusu"
    },
    {
        "id": "320509",
        "name": "吴江区",
        "parentId": "320500",
        "shortName": "吴江",
        "letter": "W",
        "cityCode": "0512",
        "pinyin": "Wujiang"
    },
    {
        "id": "320581",
        "name": "常熟市",
        "parentId": "320500",
        "shortName": "常熟",
        "letter": "C",
        "cityCode": "0512",
        "pinyin": "Changshu"
    },
    {
        "id": "320582",
        "name": "张家港市",
        "parentId": "320500",
        "shortName": "张家港",
        "letter": "Z",
        "cityCode": "0512",
        "pinyin": "Zhangjiagang"
    },
    {
        "id": "320583",
        "name": "昆山市",
        "parentId": "320500",
        "shortName": "昆山",
        "letter": "K",
        "cityCode": "0512",
        "pinyin": "Kunshan"
    },
    {
        "id": "320585",
        "name": "太仓市",
        "parentId": "320500",
        "shortName": "太仓",
        "letter": "T",
        "cityCode": "0512",
        "pinyin": "Taicang"
    },
    {
        "id": "320600",
        "name": "南通市",
        "parentId": "320000",
        "shortName": "南通",
        "letter": "N",
        "cityCode": "0513",
        "pinyin": "Nantong"
    },
    {
        "id": "320602",
        "name": "崇川区",
        "parentId": "320600",
        "shortName": "崇川",
        "letter": "C",
        "cityCode": "0513",
        "pinyin": "Chongchuan"
    },
    {
        "id": "320611",
        "name": "港闸区",
        "parentId": "320600",
        "shortName": "港闸",
        "letter": "G",
        "cityCode": "0513",
        "pinyin": "Gangzha"
    },
    {
        "id": "320612",
        "name": "通州区",
        "parentId": "320600",
        "shortName": "通州",
        "letter": "T",
        "cityCode": "0513",
        "pinyin": "Tongzhou"
    },
    {
        "id": "320621",
        "name": "海安县",
        "parentId": "320600",
        "shortName": "海安",
        "letter": "H",
        "cityCode": "0513",
        "pinyin": "Hai'an"
    },
    {
        "id": "320623",
        "name": "如东县",
        "parentId": "320600",
        "shortName": "如东",
        "letter": "R",
        "cityCode": "0513",
        "pinyin": "Rudong"
    },
    {
        "id": "320681",
        "name": "启东市",
        "parentId": "320600",
        "shortName": "启东",
        "letter": "Q",
        "cityCode": "0513",
        "pinyin": "Qidong"
    },
    {
        "id": "320682",
        "name": "如皋市",
        "parentId": "320600",
        "shortName": "如皋",
        "letter": "R",
        "cityCode": "0513",
        "pinyin": "Rugao"
    },
    {
        "id": "320684",
        "name": "海门市",
        "parentId": "320600",
        "shortName": "海门",
        "letter": "H",
        "cityCode": "0513",
        "pinyin": "Haimen"
    },
    {
        "id": "320700",
        "name": "连云港市",
        "parentId": "320000",
        "shortName": "连云港",
        "letter": "L",
        "cityCode": "0518",
        "pinyin": "Lianyungang"
    },
    {
        "id": "320703",
        "name": "连云区",
        "parentId": "320700",
        "shortName": "连云",
        "letter": "L",
        "cityCode": "0518",
        "pinyin": "Lianyun"
    },
    {
        "id": "320706",
        "name": "海州区",
        "parentId": "320700",
        "shortName": "海州",
        "letter": "H",
        "cityCode": "0518",
        "pinyin": "Haizhou"
    },
    {
        "id": "320707",
        "name": "赣榆区",
        "parentId": "320700",
        "shortName": "赣榆",
        "letter": "G",
        "cityCode": "0518",
        "pinyin": "Ganyu"
    },
    {
        "id": "320722",
        "name": "东海县",
        "parentId": "320700",
        "shortName": "东海",
        "letter": "D",
        "cityCode": "0518",
        "pinyin": "Donghai"
    },
    {
        "id": "320723",
        "name": "灌云县",
        "parentId": "320700",
        "shortName": "灌云",
        "letter": "G",
        "cityCode": "0518",
        "pinyin": "Guanyun"
    },
    {
        "id": "320724",
        "name": "灌南县",
        "parentId": "320700",
        "shortName": "灌南",
        "letter": "G",
        "cityCode": "0518",
        "pinyin": "Guannan"
    },
    {
        "id": "320800",
        "name": "淮安市",
        "parentId": "320000",
        "shortName": "淮安",
        "letter": "H",
        "cityCode": "0517",
        "pinyin": "Huai'an"
    },
    {
        "id": "320802",
        "name": "清河区",
        "parentId": "320800",
        "shortName": "清河",
        "letter": "Q",
        "cityCode": "0517",
        "pinyin": "Qinghe"
    },
    {
        "id": "320803",
        "name": "淮安区",
        "parentId": "320800",
        "shortName": "淮安",
        "letter": "H",
        "cityCode": "0517",
        "pinyin": "Huai'an"
    },
    {
        "id": "320804",
        "name": "淮阴区",
        "parentId": "320800",
        "shortName": "淮阴",
        "letter": "H",
        "cityCode": "0517",
        "pinyin": "Huaiyin"
    },
    {
        "id": "320811",
        "name": "清浦区",
        "parentId": "320800",
        "shortName": "清浦",
        "letter": "Q",
        "cityCode": "0517",
        "pinyin": "Qingpu"
    },
    {
        "id": "320826",
        "name": "涟水县",
        "parentId": "320800",
        "shortName": "涟水",
        "letter": "L",
        "cityCode": "0517",
        "pinyin": "Lianshui"
    },
    {
        "id": "320829",
        "name": "洪泽县",
        "parentId": "320800",
        "shortName": "洪泽",
        "letter": "H",
        "cityCode": "0517",
        "pinyin": "Hongze"
    },
    {
        "id": "320830",
        "name": "盱眙县",
        "parentId": "320800",
        "shortName": "盱眙",
        "letter": "X",
        "cityCode": "0517",
        "pinyin": "Xuyi"
    },
    {
        "id": "320831",
        "name": "金湖县",
        "parentId": "320800",
        "shortName": "金湖",
        "letter": "J",
        "cityCode": "0517",
        "pinyin": "Jinhu"
    },
    {
        "id": "320900",
        "name": "盐城市",
        "parentId": "320000",
        "shortName": "盐城",
        "letter": "Y",
        "cityCode": "0515",
        "pinyin": "Yancheng"
    },
    {
        "id": "320902",
        "name": "亭湖区",
        "parentId": "320900",
        "shortName": "亭湖",
        "letter": "T",
        "cityCode": "0515",
        "pinyin": "Tinghu"
    },
    {
        "id": "320903",
        "name": "盐都区",
        "parentId": "320900",
        "shortName": "盐都",
        "letter": "Y",
        "cityCode": "0515",
        "pinyin": "Yandu"
    },
    {
        "id": "320921",
        "name": "响水县",
        "parentId": "320900",
        "shortName": "响水",
        "letter": "X",
        "cityCode": "0515",
        "pinyin": "Xiangshui"
    },
    {
        "id": "320922",
        "name": "滨海县",
        "parentId": "320900",
        "shortName": "滨海",
        "letter": "B",
        "cityCode": "0515",
        "pinyin": "Binhai"
    },
    {
        "id": "320923",
        "name": "阜宁县",
        "parentId": "320900",
        "shortName": "阜宁",
        "letter": "F",
        "cityCode": "0515",
        "pinyin": "Funing"
    },
    {
        "id": "320924",
        "name": "射阳县",
        "parentId": "320900",
        "shortName": "射阳",
        "letter": "S",
        "cityCode": "0515",
        "pinyin": "Sheyang"
    },
    {
        "id": "320925",
        "name": "建湖县",
        "parentId": "320900",
        "shortName": "建湖",
        "letter": "J",
        "cityCode": "0515",
        "pinyin": "Jianhu"
    },
    {
        "id": "320981",
        "name": "东台市",
        "parentId": "320900",
        "shortName": "东台",
        "letter": "D",
        "cityCode": "0515",
        "pinyin": "Dongtai"
    },
    {
        "id": "320982",
        "name": "大丰市",
        "parentId": "320900",
        "shortName": "大丰",
        "letter": "D",
        "cityCode": "0515",
        "pinyin": "Dafeng"
    },
    {
        "id": "321000",
        "name": "扬州市",
        "parentId": "320000",
        "shortName": "扬州",
        "letter": "Y",
        "cityCode": "0514",
        "pinyin": "Yangzhou"
    },
    {
        "id": "321002",
        "name": "广陵区",
        "parentId": "321000",
        "shortName": "广陵",
        "letter": "G",
        "cityCode": "0514",
        "pinyin": "Guangling"
    },
    {
        "id": "321003",
        "name": "邗江区",
        "parentId": "321000",
        "shortName": "邗江",
        "letter": "H",
        "cityCode": "0514",
        "pinyin": "Hanjiang"
    },
    {
        "id": "321012",
        "name": "江都区",
        "parentId": "321000",
        "shortName": "江都",
        "letter": "J",
        "cityCode": "0514",
        "pinyin": "Jiangdu"
    },
    {
        "id": "321023",
        "name": "宝应县",
        "parentId": "321000",
        "shortName": "宝应",
        "letter": "B",
        "cityCode": "0514",
        "pinyin": "Baoying"
    },
    {
        "id": "321081",
        "name": "仪征市",
        "parentId": "321000",
        "shortName": "仪征",
        "letter": "Y",
        "cityCode": "0514",
        "pinyin": "Yizheng"
    },
    {
        "id": "321084",
        "name": "高邮市",
        "parentId": "321000",
        "shortName": "高邮",
        "letter": "G",
        "cityCode": "0514",
        "pinyin": "Gaoyou"
    },
    {
        "id": "321100",
        "name": "镇江市",
        "parentId": "320000",
        "shortName": "镇江",
        "letter": "Z",
        "cityCode": "0511",
        "pinyin": "Zhenjiang"
    },
    {
        "id": "321102",
        "name": "京口区",
        "parentId": "321100",
        "shortName": "京口",
        "letter": "J",
        "cityCode": "0511",
        "pinyin": "Jingkou"
    },
    {
        "id": "321111",
        "name": "润州区",
        "parentId": "321100",
        "shortName": "润州",
        "letter": "R",
        "cityCode": "0511",
        "pinyin": "Runzhou"
    },
    {
        "id": "321112",
        "name": "丹徒区",
        "parentId": "321100",
        "shortName": "丹徒",
        "letter": "D",
        "cityCode": "0511",
        "pinyin": "Dantu"
    },
    {
        "id": "321181",
        "name": "丹阳市",
        "parentId": "321100",
        "shortName": "丹阳",
        "letter": "D",
        "cityCode": "0511",
        "pinyin": "Danyang"
    },
    {
        "id": "321182",
        "name": "扬中市",
        "parentId": "321100",
        "shortName": "扬中",
        "letter": "Y",
        "cityCode": "0511",
        "pinyin": "Yangzhong"
    },
    {
        "id": "321183",
        "name": "句容市",
        "parentId": "321100",
        "shortName": "句容",
        "letter": "J",
        "cityCode": "0511",
        "pinyin": "Jurong"
    },
    {
        "id": "321200",
        "name": "泰州市",
        "parentId": "320000",
        "shortName": "泰州",
        "letter": "T",
        "cityCode": "0523",
        "pinyin": "Taizhou"
    },
    {
        "id": "321202",
        "name": "海陵区",
        "parentId": "321200",
        "shortName": "海陵",
        "letter": "H",
        "cityCode": "0523",
        "pinyin": "Hailing"
    },
    {
        "id": "321203",
        "name": "高港区",
        "parentId": "321200",
        "shortName": "高港",
        "letter": "G",
        "cityCode": "0523",
        "pinyin": "Gaogang"
    },
    {
        "id": "321204",
        "name": "姜堰区",
        "parentId": "321200",
        "shortName": "姜堰",
        "letter": "J",
        "cityCode": "0523",
        "pinyin": "Jiangyan"
    },
    {
        "id": "321281",
        "name": "兴化市",
        "parentId": "321200",
        "shortName": "兴化",
        "letter": "X",
        "cityCode": "0523",
        "pinyin": "Xinghua"
    },
    {
        "id": "321282",
        "name": "靖江市",
        "parentId": "321200",
        "shortName": "靖江",
        "letter": "J",
        "cityCode": "0523",
        "pinyin": "Jingjiang"
    },
    {
        "id": "321283",
        "name": "泰兴市",
        "parentId": "321200",
        "shortName": "泰兴",
        "letter": "T",
        "cityCode": "0523",
        "pinyin": "Taixing"
    },
    {
        "id": "321300",
        "name": "宿迁市",
        "parentId": "320000",
        "shortName": "宿迁",
        "letter": "S",
        "cityCode": "0527",
        "pinyin": "Suqian"
    },
    {
        "id": "321302",
        "name": "宿城区",
        "parentId": "321300",
        "shortName": "宿城",
        "letter": "S",
        "cityCode": "0527",
        "pinyin": "Sucheng"
    },
    {
        "id": "321311",
        "name": "宿豫区",
        "parentId": "321300",
        "shortName": "宿豫",
        "letter": "S",
        "cityCode": "0527",
        "pinyin": "Suyu"
    },
    {
        "id": "321322",
        "name": "沭阳县",
        "parentId": "321300",
        "shortName": "沭阳",
        "letter": "S",
        "cityCode": "0527",
        "pinyin": "Shuyang"
    },
    {
        "id": "321323",
        "name": "泗阳县",
        "parentId": "321300",
        "shortName": "泗阳",
        "letter": "S",
        "cityCode": "0527",
        "pinyin": "Siyang"
    },
    {
        "id": "321324",
        "name": "泗洪县",
        "parentId": "321300",
        "shortName": "泗洪",
        "letter": "S",
        "cityCode": "0527",
        "pinyin": "Sihong"
    },
    {
        "id": "330000",
        "name": "浙江省",
        "parentId": "100000",
        "shortName": "浙江",
        "letter": "Z",
        "cityCode": "",
        "pinyin": "Zhejiang"
    },
    {
        "id": "330100",
        "name": "杭州市",
        "parentId": "330000",
        "shortName": "杭州",
        "letter": "H",
        "cityCode": "0571",
        "pinyin": "Hangzhou"
    },
    {
        "id": "330102",
        "name": "上城区",
        "parentId": "330100",
        "shortName": "上城",
        "letter": "S",
        "cityCode": "0571",
        "pinyin": "Shangcheng"
    },
    {
        "id": "330103",
        "name": "下城区",
        "parentId": "330100",
        "shortName": "下城",
        "letter": "X",
        "cityCode": "0571",
        "pinyin": "Xiacheng"
    },
    {
        "id": "330104",
        "name": "江干区",
        "parentId": "330100",
        "shortName": "江干",
        "letter": "J",
        "cityCode": "0571",
        "pinyin": "Jianggan"
    },
    {
        "id": "330105",
        "name": "拱墅区",
        "parentId": "330100",
        "shortName": "拱墅",
        "letter": "G",
        "cityCode": "0571",
        "pinyin": "Gongshu"
    },
    {
        "id": "330106",
        "name": "西湖区",
        "parentId": "330100",
        "shortName": "西湖",
        "letter": "X",
        "cityCode": "0571",
        "pinyin": "Xihu"
    },
    {
        "id": "330108",
        "name": "滨江区",
        "parentId": "330100",
        "shortName": "滨江",
        "letter": "B",
        "cityCode": "0571",
        "pinyin": "Binjiang"
    },
    {
        "id": "330109",
        "name": "萧山区",
        "parentId": "330100",
        "shortName": "萧山",
        "letter": "X",
        "cityCode": "0571",
        "pinyin": "Xiaoshan"
    },
    {
        "id": "330110",
        "name": "余杭区",
        "parentId": "330100",
        "shortName": "余杭",
        "letter": "Y",
        "cityCode": "0571",
        "pinyin": "Yuhang"
    },
    {
        "id": "330122",
        "name": "桐庐县",
        "parentId": "330100",
        "shortName": "桐庐",
        "letter": "T",
        "cityCode": "0571",
        "pinyin": "Tonglu"
    },
    {
        "id": "330127",
        "name": "淳安县",
        "parentId": "330100",
        "shortName": "淳安",
        "letter": "C",
        "cityCode": "0571",
        "pinyin": "Chun'an"
    },
    {
        "id": "330182",
        "name": "建德市",
        "parentId": "330100",
        "shortName": "建德",
        "letter": "J",
        "cityCode": "0571",
        "pinyin": "Jiande"
    },
    {
        "id": "330183",
        "name": "富阳区",
        "parentId": "330100",
        "shortName": "富阳",
        "letter": "F",
        "cityCode": "0571",
        "pinyin": "Fuyang"
    },
    {
        "id": "330185",
        "name": "临安市",
        "parentId": "330100",
        "shortName": "临安",
        "letter": "L",
        "cityCode": "0571",
        "pinyin": "Lin'an"
    },
    {
        "id": "330200",
        "name": "宁波市",
        "parentId": "330000",
        "shortName": "宁波",
        "letter": "N",
        "cityCode": "0574",
        "pinyin": "Ningbo"
    },
    {
        "id": "330203",
        "name": "海曙区",
        "parentId": "330200",
        "shortName": "海曙",
        "letter": "H",
        "cityCode": "0574",
        "pinyin": "Haishu"
    },
    {
        "id": "330204",
        "name": "江东区",
        "parentId": "330200",
        "shortName": "江东",
        "letter": "J",
        "cityCode": "0574",
        "pinyin": "Jiangdong"
    },
    {
        "id": "330205",
        "name": "江北区",
        "parentId": "330200",
        "shortName": "江北",
        "letter": "J",
        "cityCode": "0574",
        "pinyin": "Jiangbei"
    },
    {
        "id": "330206",
        "name": "北仑区",
        "parentId": "330200",
        "shortName": "北仑",
        "letter": "B",
        "cityCode": "0574",
        "pinyin": "Beilun"
    },
    {
        "id": "330211",
        "name": "镇海区",
        "parentId": "330200",
        "shortName": "镇海",
        "letter": "Z",
        "cityCode": "0574",
        "pinyin": "Zhenhai"
    },
    {
        "id": "330212",
        "name": "鄞州区",
        "parentId": "330200",
        "shortName": "鄞州",
        "letter": "Y",
        "cityCode": "0574",
        "pinyin": "Yinzhou"
    },
    {
        "id": "330225",
        "name": "象山县",
        "parentId": "330200",
        "shortName": "象山",
        "letter": "X",
        "cityCode": "0574",
        "pinyin": "Xiangshan"
    },
    {
        "id": "330226",
        "name": "宁海县",
        "parentId": "330200",
        "shortName": "宁海",
        "letter": "N",
        "cityCode": "0574",
        "pinyin": "Ninghai"
    },
    {
        "id": "330281",
        "name": "余姚市",
        "parentId": "330200",
        "shortName": "余姚",
        "letter": "Y",
        "cityCode": "0574",
        "pinyin": "Yuyao"
    },
    {
        "id": "330282",
        "name": "慈溪市",
        "parentId": "330200",
        "shortName": "慈溪",
        "letter": "C",
        "cityCode": "0574",
        "pinyin": "Cixi"
    },
    {
        "id": "330283",
        "name": "奉化市",
        "parentId": "330200",
        "shortName": "奉化",
        "letter": "F",
        "cityCode": "0574",
        "pinyin": "Fenghua"
    },
    {
        "id": "330300",
        "name": "温州市",
        "parentId": "330000",
        "shortName": "温州",
        "letter": "W",
        "cityCode": "0577",
        "pinyin": "Wenzhou"
    },
    {
        "id": "330302",
        "name": "鹿城区",
        "parentId": "330300",
        "shortName": "鹿城",
        "letter": "L",
        "cityCode": "0577",
        "pinyin": "Lucheng"
    },
    {
        "id": "330303",
        "name": "龙湾区",
        "parentId": "330300",
        "shortName": "龙湾",
        "letter": "L",
        "cityCode": "0577",
        "pinyin": "Longwan"
    },
    {
        "id": "330304",
        "name": "瓯海区",
        "parentId": "330300",
        "shortName": "瓯海",
        "letter": "O",
        "cityCode": "0577",
        "pinyin": "Ouhai"
    },
    {
        "id": "330322",
        "name": "洞头县",
        "parentId": "330300",
        "shortName": "洞头",
        "letter": "D",
        "cityCode": "0577",
        "pinyin": "Dongtou"
    },
    {
        "id": "330324",
        "name": "永嘉县",
        "parentId": "330300",
        "shortName": "永嘉",
        "letter": "Y",
        "cityCode": "0577",
        "pinyin": "Yongjia"
    },
    {
        "id": "330326",
        "name": "平阳县",
        "parentId": "330300",
        "shortName": "平阳",
        "letter": "P",
        "cityCode": "0577",
        "pinyin": "Pingyang"
    },
    {
        "id": "330327",
        "name": "苍南县",
        "parentId": "330300",
        "shortName": "苍南",
        "letter": "C",
        "cityCode": "0577",
        "pinyin": "Cangnan"
    },
    {
        "id": "330328",
        "name": "文成县",
        "parentId": "330300",
        "shortName": "文成",
        "letter": "W",
        "cityCode": "0577",
        "pinyin": "Wencheng"
    },
    {
        "id": "330329",
        "name": "泰顺县",
        "parentId": "330300",
        "shortName": "泰顺",
        "letter": "T",
        "cityCode": "0577",
        "pinyin": "Taishun"
    },
    {
        "id": "330381",
        "name": "瑞安市",
        "parentId": "330300",
        "shortName": "瑞安",
        "letter": "R",
        "cityCode": "0577",
        "pinyin": "Rui'an"
    },
    {
        "id": "330382",
        "name": "乐清市",
        "parentId": "330300",
        "shortName": "乐清",
        "letter": "Y",
        "cityCode": "0577",
        "pinyin": "Yueqing"
    },
    {
        "id": "330400",
        "name": "嘉兴市",
        "parentId": "330000",
        "shortName": "嘉兴",
        "letter": "J",
        "cityCode": "0573",
        "pinyin": "Jiaxing"
    },
    {
        "id": "330402",
        "name": "南湖区",
        "parentId": "330400",
        "shortName": "南湖",
        "letter": "N",
        "cityCode": "0573",
        "pinyin": "Nanhu"
    },
    {
        "id": "330411",
        "name": "秀洲区",
        "parentId": "330400",
        "shortName": "秀洲",
        "letter": "X",
        "cityCode": "0573",
        "pinyin": "Xiuzhou"
    },
    {
        "id": "330421",
        "name": "嘉善县",
        "parentId": "330400",
        "shortName": "嘉善",
        "letter": "J",
        "cityCode": "0573",
        "pinyin": "Jiashan"
    },
    {
        "id": "330424",
        "name": "海盐县",
        "parentId": "330400",
        "shortName": "海盐",
        "letter": "H",
        "cityCode": "0573",
        "pinyin": "Haiyan"
    },
    {
        "id": "330481",
        "name": "海宁市",
        "parentId": "330400",
        "shortName": "海宁",
        "letter": "H",
        "cityCode": "0573",
        "pinyin": "Haining"
    },
    {
        "id": "330482",
        "name": "平湖市",
        "parentId": "330400",
        "shortName": "平湖",
        "letter": "P",
        "cityCode": "0573",
        "pinyin": "Pinghu"
    },
    {
        "id": "330483",
        "name": "桐乡市",
        "parentId": "330400",
        "shortName": "桐乡",
        "letter": "T",
        "cityCode": "0573",
        "pinyin": "Tongxiang"
    },
    {
        "id": "330500",
        "name": "湖州市",
        "parentId": "330000",
        "shortName": "湖州",
        "letter": "H",
        "cityCode": "0572",
        "pinyin": "Huzhou"
    },
    {
        "id": "330502",
        "name": "吴兴区",
        "parentId": "330500",
        "shortName": "吴兴",
        "letter": "W",
        "cityCode": "0572",
        "pinyin": "Wuxing"
    },
    {
        "id": "330503",
        "name": "南浔区",
        "parentId": "330500",
        "shortName": "南浔",
        "letter": "N",
        "cityCode": "0572",
        "pinyin": "Nanxun"
    },
    {
        "id": "330521",
        "name": "德清县",
        "parentId": "330500",
        "shortName": "德清",
        "letter": "D",
        "cityCode": "0572",
        "pinyin": "Deqing"
    },
    {
        "id": "330522",
        "name": "长兴县",
        "parentId": "330500",
        "shortName": "长兴",
        "letter": "C",
        "cityCode": "0572",
        "pinyin": "Changxing"
    },
    {
        "id": "330523",
        "name": "安吉县",
        "parentId": "330500",
        "shortName": "安吉",
        "letter": "A",
        "cityCode": "0572",
        "pinyin": "Anji"
    },
    {
        "id": "330600",
        "name": "绍兴市",
        "parentId": "330000",
        "shortName": "绍兴",
        "letter": "S",
        "cityCode": "0575",
        "pinyin": "Shaoxing"
    },
    {
        "id": "330602",
        "name": "越城区",
        "parentId": "330600",
        "shortName": "越城",
        "letter": "Y",
        "cityCode": "0575",
        "pinyin": "Yuecheng"
    },
    {
        "id": "330603",
        "name": "柯桥区",
        "parentId": "330600",
        "shortName": "柯桥",
        "letter": "K",
        "cityCode": "0575",
        "pinyin": "Keqiao"
    },
    {
        "id": "330604",
        "name": "上虞区",
        "parentId": "330600",
        "shortName": "上虞",
        "letter": "S",
        "cityCode": "0575",
        "pinyin": "Shangyu"
    },
    {
        "id": "330624",
        "name": "新昌县",
        "parentId": "330600",
        "shortName": "新昌",
        "letter": "X",
        "cityCode": "0575",
        "pinyin": "Xinchang"
    },
    {
        "id": "330681",
        "name": "诸暨市",
        "parentId": "330600",
        "shortName": "诸暨",
        "letter": "Z",
        "cityCode": "0575",
        "pinyin": "Zhuji"
    },
    {
        "id": "330683",
        "name": "嵊州市",
        "parentId": "330600",
        "shortName": "嵊州",
        "letter": "S",
        "cityCode": "0575",
        "pinyin": "Shengzhou"
    },
    {
        "id": "330700",
        "name": "金华市",
        "parentId": "330000",
        "shortName": "金华",
        "letter": "J",
        "cityCode": "0579",
        "pinyin": "Jinhua"
    },
    {
        "id": "330702",
        "name": "婺城区",
        "parentId": "330700",
        "shortName": "婺城",
        "letter": "W",
        "cityCode": "0579",
        "pinyin": "Wucheng"
    },
    {
        "id": "330703",
        "name": "金东区",
        "parentId": "330700",
        "shortName": "金东",
        "letter": "J",
        "cityCode": "0579",
        "pinyin": "Jindong"
    },
    {
        "id": "330723",
        "name": "武义县",
        "parentId": "330700",
        "shortName": "武义",
        "letter": "W",
        "cityCode": "0579",
        "pinyin": "Wuyi"
    },
    {
        "id": "330726",
        "name": "浦江县",
        "parentId": "330700",
        "shortName": "浦江",
        "letter": "P",
        "cityCode": "0579",
        "pinyin": "Pujiang"
    },
    {
        "id": "330727",
        "name": "磐安县",
        "parentId": "330700",
        "shortName": "磐安",
        "letter": "P",
        "cityCode": "0579",
        "pinyin": "Pan'an"
    },
    {
        "id": "330781",
        "name": "兰溪市",
        "parentId": "330700",
        "shortName": "兰溪",
        "letter": "L",
        "cityCode": "0579",
        "pinyin": "Lanxi"
    },
    {
        "id": "330782",
        "name": "义乌市",
        "parentId": "330700",
        "shortName": "义乌",
        "letter": "Y",
        "cityCode": "0579",
        "pinyin": "Yiwu"
    },
    {
        "id": "330783",
        "name": "东阳市",
        "parentId": "330700",
        "shortName": "东阳",
        "letter": "D",
        "cityCode": "0579",
        "pinyin": "Dongyang"
    },
    {
        "id": "330784",
        "name": "永康市",
        "parentId": "330700",
        "shortName": "永康",
        "letter": "Y",
        "cityCode": "0579",
        "pinyin": "Yongkang"
    },
    {
        "id": "330800",
        "name": "衢州市",
        "parentId": "330000",
        "shortName": "衢州",
        "letter": "Q",
        "cityCode": "0570",
        "pinyin": "Quzhou"
    },
    {
        "id": "330802",
        "name": "柯城区",
        "parentId": "330800",
        "shortName": "柯城",
        "letter": "K",
        "cityCode": "0570",
        "pinyin": "Kecheng"
    },
    {
        "id": "330803",
        "name": "衢江区",
        "parentId": "330800",
        "shortName": "衢江",
        "letter": "Q",
        "cityCode": "0570",
        "pinyin": "Qujiang"
    },
    {
        "id": "330822",
        "name": "常山县",
        "parentId": "330800",
        "shortName": "常山",
        "letter": "C",
        "cityCode": "0570",
        "pinyin": "Changshan"
    },
    {
        "id": "330824",
        "name": "开化县",
        "parentId": "330800",
        "shortName": "开化",
        "letter": "K",
        "cityCode": "0570",
        "pinyin": "Kaihua"
    },
    {
        "id": "330825",
        "name": "龙游县",
        "parentId": "330800",
        "shortName": "龙游",
        "letter": "L",
        "cityCode": "0570",
        "pinyin": "Longyou"
    },
    {
        "id": "330881",
        "name": "江山市",
        "parentId": "330800",
        "shortName": "江山",
        "letter": "J",
        "cityCode": "0570",
        "pinyin": "Jiangshan"
    },
    {
        "id": "330900",
        "name": "舟山市",
        "parentId": "330000",
        "shortName": "舟山",
        "letter": "Z",
        "cityCode": "0580",
        "pinyin": "Zhoushan"
    },
    {
        "id": "330902",
        "name": "定海区",
        "parentId": "330900",
        "shortName": "定海",
        "letter": "D",
        "cityCode": "0580",
        "pinyin": "Dinghai"
    },
    {
        "id": "330903",
        "name": "普陀区",
        "parentId": "330900",
        "shortName": "普陀",
        "letter": "P",
        "cityCode": "0580",
        "pinyin": "Putuo"
    },
    {
        "id": "330921",
        "name": "岱山县",
        "parentId": "330900",
        "shortName": "岱山",
        "letter": "D",
        "cityCode": "0580",
        "pinyin": "Daishan"
    },
    {
        "id": "330922",
        "name": "嵊泗县",
        "parentId": "330900",
        "shortName": "嵊泗",
        "letter": "S",
        "cityCode": "0580",
        "pinyin": "Shengsi"
    },
    {
        "id": "331000",
        "name": "台州市",
        "parentId": "330000",
        "shortName": "台州",
        "letter": "T",
        "cityCode": "0576",
        "pinyin": "Taizhou"
    },
    {
        "id": "331002",
        "name": "椒江区",
        "parentId": "331000",
        "shortName": "椒江",
        "letter": "J",
        "cityCode": "0576",
        "pinyin": "Jiaojiang"
    },
    {
        "id": "331003",
        "name": "黄岩区",
        "parentId": "331000",
        "shortName": "黄岩",
        "letter": "H",
        "cityCode": "0576",
        "pinyin": "Huangyan"
    },
    {
        "id": "331004",
        "name": "路桥区",
        "parentId": "331000",
        "shortName": "路桥",
        "letter": "L",
        "cityCode": "0576",
        "pinyin": "Luqiao"
    },
    {
        "id": "331021",
        "name": "玉环县",
        "parentId": "331000",
        "shortName": "玉环",
        "letter": "Y",
        "cityCode": "0576",
        "pinyin": "Yuhuan"
    },
    {
        "id": "331022",
        "name": "三门县",
        "parentId": "331000",
        "shortName": "三门",
        "letter": "S",
        "cityCode": "0576",
        "pinyin": "Sanmen"
    },
    {
        "id": "331023",
        "name": "天台县",
        "parentId": "331000",
        "shortName": "天台",
        "letter": "T",
        "cityCode": "0576",
        "pinyin": "Tiantai"
    },
    {
        "id": "331024",
        "name": "仙居县",
        "parentId": "331000",
        "shortName": "仙居",
        "letter": "X",
        "cityCode": "0576",
        "pinyin": "Xianju"
    },
    {
        "id": "331081",
        "name": "温岭市",
        "parentId": "331000",
        "shortName": "温岭",
        "letter": "W",
        "cityCode": "0576",
        "pinyin": "Wenling"
    },
    {
        "id": "331082",
        "name": "临海市",
        "parentId": "331000",
        "shortName": "临海",
        "letter": "L",
        "cityCode": "0576",
        "pinyin": "Linhai"
    },
    {
        "id": "331100",
        "name": "丽水市",
        "parentId": "330000",
        "shortName": "丽水",
        "letter": "L",
        "cityCode": "0578",
        "pinyin": "Lishui"
    },
    {
        "id": "331102",
        "name": "莲都区",
        "parentId": "331100",
        "shortName": "莲都",
        "letter": "L",
        "cityCode": "0578",
        "pinyin": "Liandu"
    },
    {
        "id": "331121",
        "name": "青田县",
        "parentId": "331100",
        "shortName": "青田",
        "letter": "Q",
        "cityCode": "0578",
        "pinyin": "Qingtian"
    },
    {
        "id": "331122",
        "name": "缙云县",
        "parentId": "331100",
        "shortName": "缙云",
        "letter": "J",
        "cityCode": "0578",
        "pinyin": "Jinyun"
    },
    {
        "id": "331123",
        "name": "遂昌县",
        "parentId": "331100",
        "shortName": "遂昌",
        "letter": "S",
        "cityCode": "0578",
        "pinyin": "Suichang"
    },
    {
        "id": "331124",
        "name": "松阳县",
        "parentId": "331100",
        "shortName": "松阳",
        "letter": "S",
        "cityCode": "0578",
        "pinyin": "Songyang"
    },
    {
        "id": "331125",
        "name": "云和县",
        "parentId": "331100",
        "shortName": "云和",
        "letter": "Y",
        "cityCode": "0578",
        "pinyin": "Yunhe"
    },
    {
        "id": "331126",
        "name": "庆元县",
        "parentId": "331100",
        "shortName": "庆元",
        "letter": "Q",
        "cityCode": "0578",
        "pinyin": "Qingyuan"
    },
    {
        "id": "331127",
        "name": "景宁畲族自治县",
        "parentId": "331100",
        "shortName": "景宁",
        "letter": "J",
        "cityCode": "0578",
        "pinyin": "Jingning"
    },
    {
        "id": "331181",
        "name": "龙泉市",
        "parentId": "331100",
        "shortName": "龙泉",
        "letter": "L",
        "cityCode": "0578",
        "pinyin": "Longquan"
    },
    {
        "id": "331200",
        "name": "舟山群岛新区",
        "parentId": "330000",
        "shortName": "舟山新区",
        "letter": "Z",
        "cityCode": "0580",
        "pinyin": "Zhoushan"
    },
    {
        "id": "331201",
        "name": "金塘岛",
        "parentId": "331200",
        "shortName": "金塘",
        "letter": "J",
        "cityCode": "0580",
        "pinyin": "Jintang"
    },
    {
        "id": "331202",
        "name": "六横岛",
        "parentId": "331200",
        "shortName": "六横",
        "letter": "L",
        "cityCode": "0580",
        "pinyin": "Liuheng"
    },
    {
        "id": "331203",
        "name": "衢山岛",
        "parentId": "331200",
        "shortName": "衢山",
        "letter": "Q",
        "cityCode": "0580",
        "pinyin": "Qushan"
    },
    {
        "id": "331204",
        "name": "舟山本岛西北部",
        "parentId": "331200",
        "shortName": "舟山",
        "letter": "Z",
        "cityCode": "0580",
        "pinyin": "Zhoushan"
    },
    {
        "id": "331205",
        "name": "岱山岛西南部",
        "parentId": "331200",
        "shortName": "岱山",
        "letter": "D",
        "cityCode": "0580",
        "pinyin": "Daishan"
    },
    {
        "id": "331206",
        "name": "泗礁岛",
        "parentId": "331200",
        "shortName": "泗礁",
        "letter": "S",
        "cityCode": "0580",
        "pinyin": "Sijiao"
    },
    {
        "id": "331207",
        "name": "朱家尖岛",
        "parentId": "331200",
        "shortName": "朱家尖",
        "letter": "Z",
        "cityCode": "0580",
        "pinyin": "Zhujiajian"
    },
    {
        "id": "331208",
        "name": "洋山岛",
        "parentId": "331200",
        "shortName": "洋山",
        "letter": "Y",
        "cityCode": "0580",
        "pinyin": "Yangshan"
    },
    {
        "id": "331209",
        "name": "长涂岛",
        "parentId": "331200",
        "shortName": "长涂",
        "letter": "C",
        "cityCode": "0580",
        "pinyin": "Changtu"
    },
    {
        "id": "331210",
        "name": "虾峙岛",
        "parentId": "331200",
        "shortName": "虾峙",
        "letter": "X",
        "cityCode": "0580",
        "pinyin": "Xiazhi"
    },
    {
        "id": "340000",
        "name": "安徽省",
        "parentId": "100000",
        "shortName": "安徽",
        "letter": "A",
        "cityCode": "",
        "pinyin": "Anhui"
    },
    {
        "id": "340100",
        "name": "合肥市",
        "parentId": "340000",
        "shortName": "合肥",
        "letter": "H",
        "cityCode": "0551",
        "pinyin": "Hefei"
    },
    {
        "id": "340102",
        "name": "瑶海区",
        "parentId": "340100",
        "shortName": "瑶海",
        "letter": "Y",
        "cityCode": "0551",
        "pinyin": "Yaohai"
    },
    {
        "id": "340103",
        "name": "庐阳区",
        "parentId": "340100",
        "shortName": "庐阳",
        "letter": "L",
        "cityCode": "0551",
        "pinyin": "Luyang"
    },
    {
        "id": "340104",
        "name": "蜀山区",
        "parentId": "340100",
        "shortName": "蜀山",
        "letter": "S",
        "cityCode": "0551",
        "pinyin": "Shushan"
    },
    {
        "id": "340111",
        "name": "包河区",
        "parentId": "340100",
        "shortName": "包河",
        "letter": "B",
        "cityCode": "0551",
        "pinyin": "Baohe"
    },
    {
        "id": "340121",
        "name": "长丰县",
        "parentId": "340100",
        "shortName": "长丰",
        "letter": "C",
        "cityCode": "0551",
        "pinyin": "Changfeng"
    },
    {
        "id": "340122",
        "name": "肥东县",
        "parentId": "340100",
        "shortName": "肥东",
        "letter": "F",
        "cityCode": "0551",
        "pinyin": "Feidong"
    },
    {
        "id": "340123",
        "name": "肥西县",
        "parentId": "340100",
        "shortName": "肥西",
        "letter": "F",
        "cityCode": "0551",
        "pinyin": "Feixi"
    },
    {
        "id": "340124",
        "name": "庐江县",
        "parentId": "340100",
        "shortName": "庐江",
        "letter": "L",
        "cityCode": "0565",
        "pinyin": "Lujiang"
    },
    {
        "id": "340181",
        "name": "巢湖市",
        "parentId": "340100",
        "shortName": "巢湖",
        "letter": "C",
        "cityCode": "0565",
        "pinyin": "Chaohu"
    },
    {
        "id": "340200",
        "name": "芜湖市",
        "parentId": "340000",
        "shortName": "芜湖",
        "letter": "W",
        "cityCode": "0551",
        "pinyin": "Wuhu"
    },
    {
        "id": "340202",
        "name": "镜湖区",
        "parentId": "340200",
        "shortName": "镜湖",
        "letter": "J",
        "cityCode": "0553",
        "pinyin": "Jinghu"
    },
    {
        "id": "340203",
        "name": "弋江区",
        "parentId": "340200",
        "shortName": "弋江",
        "letter": "Y",
        "cityCode": "0553",
        "pinyin": "Yijiang"
    },
    {
        "id": "340207",
        "name": "鸠江区",
        "parentId": "340200",
        "shortName": "鸠江",
        "letter": "J",
        "cityCode": "0553",
        "pinyin": "Jiujiang"
    },
    {
        "id": "340208",
        "name": "三山区",
        "parentId": "340200",
        "shortName": "三山",
        "letter": "S",
        "cityCode": "0553",
        "pinyin": "Sanshan"
    },
    {
        "id": "340221",
        "name": "芜湖县",
        "parentId": "340200",
        "shortName": "芜湖",
        "letter": "W",
        "cityCode": "0553",
        "pinyin": "Wuhu"
    },
    {
        "id": "340222",
        "name": "繁昌县",
        "parentId": "340200",
        "shortName": "繁昌",
        "letter": "F",
        "cityCode": "0553",
        "pinyin": "Fanchang"
    },
    {
        "id": "340223",
        "name": "南陵县",
        "parentId": "340200",
        "shortName": "南陵",
        "letter": "N",
        "cityCode": "0553",
        "pinyin": "Nanling"
    },
    {
        "id": "340225",
        "name": "无为县",
        "parentId": "340200",
        "shortName": "无为",
        "letter": "W",
        "cityCode": "0565",
        "pinyin": "Wuwei"
    },
    {
        "id": "340300",
        "name": "蚌埠市",
        "parentId": "340000",
        "shortName": "蚌埠",
        "letter": "B",
        "cityCode": "0552",
        "pinyin": "Bengbu"
    },
    {
        "id": "340302",
        "name": "龙子湖区",
        "parentId": "340300",
        "shortName": "龙子湖",
        "letter": "L",
        "cityCode": "0552",
        "pinyin": "Longzihu"
    },
    {
        "id": "340303",
        "name": "蚌山区",
        "parentId": "340300",
        "shortName": "蚌山",
        "letter": "B",
        "cityCode": "0552",
        "pinyin": "Bengshan"
    },
    {
        "id": "340304",
        "name": "禹会区",
        "parentId": "340300",
        "shortName": "禹会",
        "letter": "Y",
        "cityCode": "0552",
        "pinyin": "Yuhui"
    },
    {
        "id": "340311",
        "name": "淮上区",
        "parentId": "340300",
        "shortName": "淮上",
        "letter": "H",
        "cityCode": "0552",
        "pinyin": "Huaishang"
    },
    {
        "id": "340321",
        "name": "怀远县",
        "parentId": "340300",
        "shortName": "怀远",
        "letter": "H",
        "cityCode": "0552",
        "pinyin": "Huaiyuan"
    },
    {
        "id": "340322",
        "name": "五河县",
        "parentId": "340300",
        "shortName": "五河",
        "letter": "W",
        "cityCode": "0552",
        "pinyin": "Wuhe"
    },
    {
        "id": "340323",
        "name": "固镇县",
        "parentId": "340300",
        "shortName": "固镇",
        "letter": "G",
        "cityCode": "0552",
        "pinyin": "Guzhen"
    },
    {
        "id": "340400",
        "name": "淮南市",
        "parentId": "340000",
        "shortName": "淮南",
        "letter": "H",
        "cityCode": "0554",
        "pinyin": "Huainan"
    },
    {
        "id": "340402",
        "name": "大通区",
        "parentId": "340400",
        "shortName": "大通",
        "letter": "D",
        "cityCode": "0554",
        "pinyin": "Datong"
    },
    {
        "id": "340403",
        "name": "田家庵区",
        "parentId": "340400",
        "shortName": "田家庵",
        "letter": "T",
        "cityCode": "0554",
        "pinyin": "Tianjiaan"
    },
    {
        "id": "340404",
        "name": "谢家集区",
        "parentId": "340400",
        "shortName": "谢家集",
        "letter": "X",
        "cityCode": "0554",
        "pinyin": "Xiejiaji"
    },
    {
        "id": "340405",
        "name": "八公山区",
        "parentId": "340400",
        "shortName": "八公山",
        "letter": "B",
        "cityCode": "0554",
        "pinyin": "Bagongshan"
    },
    {
        "id": "340406",
        "name": "潘集区",
        "parentId": "340400",
        "shortName": "潘集",
        "letter": "P",
        "cityCode": "0554",
        "pinyin": "Panji"
    },
    {
        "id": "340421",
        "name": "凤台县",
        "parentId": "340400",
        "shortName": "凤台",
        "letter": "F",
        "cityCode": "0554",
        "pinyin": "Fengtai"
    },
    {
        "id": "340500",
        "name": "马鞍山市",
        "parentId": "340000",
        "shortName": "马鞍山",
        "letter": "M",
        "cityCode": "0555",
        "pinyin": "Ma'anshan"
    },
    {
        "id": "340503",
        "name": "花山区",
        "parentId": "340500",
        "shortName": "花山",
        "letter": "H",
        "cityCode": "0555",
        "pinyin": "Huashan"
    },
    {
        "id": "340504",
        "name": "雨山区",
        "parentId": "340500",
        "shortName": "雨山",
        "letter": "Y",
        "cityCode": "0555",
        "pinyin": "Yushan"
    },
    {
        "id": "340506",
        "name": "博望区",
        "parentId": "340500",
        "shortName": "博望",
        "letter": "B",
        "cityCode": "0555",
        "pinyin": "Bowang"
    },
    {
        "id": "340521",
        "name": "当涂县",
        "parentId": "340500",
        "shortName": "当涂",
        "letter": "D",
        "cityCode": "0555",
        "pinyin": "Dangtu"
    },
    {
        "id": "340522",
        "name": "含山县",
        "parentId": "340500",
        "shortName": "含山",
        "letter": "H",
        "cityCode": "0555",
        "pinyin": "Hanshan"
    },
    {
        "id": "340523",
        "name": "和县",
        "parentId": "340500",
        "shortName": "和县",
        "letter": "H",
        "cityCode": "0555",
        "pinyin": "Hexian"
    },
    {
        "id": "340600",
        "name": "淮北市",
        "parentId": "340000",
        "shortName": "淮北",
        "letter": "H",
        "cityCode": "0561",
        "pinyin": "Huaibei"
    },
    {
        "id": "340602",
        "name": "杜集区",
        "parentId": "340600",
        "shortName": "杜集",
        "letter": "D",
        "cityCode": "0561",
        "pinyin": "Duji"
    },
    {
        "id": "340603",
        "name": "相山区",
        "parentId": "340600",
        "shortName": "相山",
        "letter": "X",
        "cityCode": "0561",
        "pinyin": "Xiangshan"
    },
    {
        "id": "340604",
        "name": "烈山区",
        "parentId": "340600",
        "shortName": "烈山",
        "letter": "L",
        "cityCode": "0561",
        "pinyin": "Lieshan"
    },
    {
        "id": "340621",
        "name": "濉溪县",
        "parentId": "340600",
        "shortName": "濉溪",
        "letter": "S",
        "cityCode": "0561",
        "pinyin": "Suixi"
    },
    {
        "id": "340700",
        "name": "铜陵市",
        "parentId": "340000",
        "shortName": "铜陵",
        "letter": "T",
        "cityCode": "0562",
        "pinyin": "Tongling"
    },
    {
        "id": "340702",
        "name": "铜官山区",
        "parentId": "340700",
        "shortName": "铜官山",
        "letter": "T",
        "cityCode": "0562",
        "pinyin": "Tongguanshan"
    },
    {
        "id": "340703",
        "name": "狮子山区",
        "parentId": "340700",
        "shortName": "狮子山",
        "letter": "S",
        "cityCode": "0562",
        "pinyin": "Shizishan"
    },
    {
        "id": "340711",
        "name": "郊区",
        "parentId": "340700",
        "shortName": "郊区",
        "letter": "J",
        "cityCode": "0562",
        "pinyin": "Jiaoqu"
    },
    {
        "id": "340721",
        "name": "铜陵县",
        "parentId": "340700",
        "shortName": "铜陵",
        "letter": "T",
        "cityCode": "0562",
        "pinyin": "Tongling"
    },
    {
        "id": "340800",
        "name": "安庆市",
        "parentId": "340000",
        "shortName": "安庆",
        "letter": "A",
        "cityCode": "0556",
        "pinyin": "Anqing"
    },
    {
        "id": "340802",
        "name": "迎江区",
        "parentId": "340800",
        "shortName": "迎江",
        "letter": "Y",
        "cityCode": "0556",
        "pinyin": "Yingjiang"
    },
    {
        "id": "340803",
        "name": "大观区",
        "parentId": "340800",
        "shortName": "大观",
        "letter": "D",
        "cityCode": "0556",
        "pinyin": "Daguan"
    },
    {
        "id": "340811",
        "name": "宜秀区",
        "parentId": "340800",
        "shortName": "宜秀",
        "letter": "Y",
        "cityCode": "0556",
        "pinyin": "Yixiu"
    },
    {
        "id": "340822",
        "name": "怀宁县",
        "parentId": "340800",
        "shortName": "怀宁",
        "letter": "H",
        "cityCode": "0556",
        "pinyin": "Huaining"
    },
    {
        "id": "340823",
        "name": "枞阳县",
        "parentId": "340800",
        "shortName": "枞阳",
        "letter": "Z",
        "cityCode": "0556",
        "pinyin": "Zongyang"
    },
    {
        "id": "340824",
        "name": "潜山县",
        "parentId": "340800",
        "shortName": "潜山",
        "letter": "Q",
        "cityCode": "0556",
        "pinyin": "Qianshan"
    },
    {
        "id": "340825",
        "name": "太湖县",
        "parentId": "340800",
        "shortName": "太湖",
        "letter": "T",
        "cityCode": "0556",
        "pinyin": "Taihu"
    },
    {
        "id": "340826",
        "name": "宿松县",
        "parentId": "340800",
        "shortName": "宿松",
        "letter": "S",
        "cityCode": "0556",
        "pinyin": "Susong"
    },
    {
        "id": "340827",
        "name": "望江县",
        "parentId": "340800",
        "shortName": "望江",
        "letter": "W",
        "cityCode": "0556",
        "pinyin": "Wangjiang"
    },
    {
        "id": "340828",
        "name": "岳西县",
        "parentId": "340800",
        "shortName": "岳西",
        "letter": "Y",
        "cityCode": "0556",
        "pinyin": "Yuexi"
    },
    {
        "id": "340881",
        "name": "桐城市",
        "parentId": "340800",
        "shortName": "桐城",
        "letter": "T",
        "cityCode": "0556",
        "pinyin": "Tongcheng"
    },
    {
        "id": "341000",
        "name": "黄山市",
        "parentId": "340000",
        "shortName": "黄山",
        "letter": "H",
        "cityCode": "0559",
        "pinyin": "Huangshan"
    },
    {
        "id": "341002",
        "name": "屯溪区",
        "parentId": "341000",
        "shortName": "屯溪",
        "letter": "T",
        "cityCode": "0559",
        "pinyin": "Tunxi"
    },
    {
        "id": "341003",
        "name": "黄山区",
        "parentId": "341000",
        "shortName": "黄山",
        "letter": "H",
        "cityCode": "0559",
        "pinyin": "Huangshan"
    },
    {
        "id": "341004",
        "name": "徽州区",
        "parentId": "341000",
        "shortName": "徽州",
        "letter": "H",
        "cityCode": "0559",
        "pinyin": "Huizhou"
    },
    {
        "id": "341021",
        "name": "歙县",
        "parentId": "341000",
        "shortName": "歙县",
        "letter": "S",
        "cityCode": "0559",
        "pinyin": "Shexian"
    },
    {
        "id": "341022",
        "name": "休宁县",
        "parentId": "341000",
        "shortName": "休宁",
        "letter": "X",
        "cityCode": "0559",
        "pinyin": "Xiuning"
    },
    {
        "id": "341023",
        "name": "黟县",
        "parentId": "341000",
        "shortName": "黟县",
        "letter": "Y",
        "cityCode": "0559",
        "pinyin": "Yixian"
    },
    {
        "id": "341024",
        "name": "祁门县",
        "parentId": "341000",
        "shortName": "祁门",
        "letter": "Q",
        "cityCode": "0559",
        "pinyin": "Qimen"
    },
    {
        "id": "341100",
        "name": "滁州市",
        "parentId": "340000",
        "shortName": "滁州",
        "letter": "C",
        "cityCode": "0550",
        "pinyin": "Chuzhou"
    },
    {
        "id": "341102",
        "name": "琅琊区",
        "parentId": "341100",
        "shortName": "琅琊",
        "letter": "L",
        "cityCode": "0550",
        "pinyin": "Langya"
    },
    {
        "id": "341103",
        "name": "南谯区",
        "parentId": "341100",
        "shortName": "南谯",
        "letter": "N",
        "cityCode": "0550",
        "pinyin": "Nanqiao"
    },
    {
        "id": "341122",
        "name": "来安县",
        "parentId": "341100",
        "shortName": "来安",
        "letter": "L",
        "cityCode": "0550",
        "pinyin": "Lai'an"
    },
    {
        "id": "341124",
        "name": "全椒县",
        "parentId": "341100",
        "shortName": "全椒",
        "letter": "Q",
        "cityCode": "0550",
        "pinyin": "Quanjiao"
    },
    {
        "id": "341125",
        "name": "定远县",
        "parentId": "341100",
        "shortName": "定远",
        "letter": "D",
        "cityCode": "0550",
        "pinyin": "Dingyuan"
    },
    {
        "id": "341126",
        "name": "凤阳县",
        "parentId": "341100",
        "shortName": "凤阳",
        "letter": "F",
        "cityCode": "0550",
        "pinyin": "Fengyang"
    },
    {
        "id": "341181",
        "name": "天长市",
        "parentId": "341100",
        "shortName": "天长",
        "letter": "T",
        "cityCode": "0550",
        "pinyin": "Tianchang"
    },
    {
        "id": "341182",
        "name": "明光市",
        "parentId": "341100",
        "shortName": "明光",
        "letter": "M",
        "cityCode": "0550",
        "pinyin": "Mingguang"
    },
    {
        "id": "341200",
        "name": "阜阳市",
        "parentId": "340000",
        "shortName": "阜阳",
        "letter": "F",
        "cityCode": "0558",
        "pinyin": "Fuyang"
    },
    {
        "id": "341202",
        "name": "颍州区",
        "parentId": "341200",
        "shortName": "颍州",
        "letter": "Y",
        "cityCode": "0558",
        "pinyin": "Yingzhou"
    },
    {
        "id": "341203",
        "name": "颍东区",
        "parentId": "341200",
        "shortName": "颍东",
        "letter": "Y",
        "cityCode": "0558",
        "pinyin": "Yingdong"
    },
    {
        "id": "341204",
        "name": "颍泉区",
        "parentId": "341200",
        "shortName": "颍泉",
        "letter": "Y",
        "cityCode": "0558",
        "pinyin": "Yingquan"
    },
    {
        "id": "341221",
        "name": "临泉县",
        "parentId": "341200",
        "shortName": "临泉",
        "letter": "L",
        "cityCode": "0558",
        "pinyin": "Linquan"
    },
    {
        "id": "341222",
        "name": "太和县",
        "parentId": "341200",
        "shortName": "太和",
        "letter": "T",
        "cityCode": "0558",
        "pinyin": "Taihe"
    },
    {
        "id": "341225",
        "name": "阜南县",
        "parentId": "341200",
        "shortName": "阜南",
        "letter": "F",
        "cityCode": "0558",
        "pinyin": "Funan"
    },
    {
        "id": "341226",
        "name": "颍上县",
        "parentId": "341200",
        "shortName": "颍上",
        "letter": "Y",
        "cityCode": "0558",
        "pinyin": "Yingshang"
    },
    {
        "id": "341282",
        "name": "界首市",
        "parentId": "341200",
        "shortName": "界首",
        "letter": "J",
        "cityCode": "0558",
        "pinyin": "Jieshou"
    },
    {
        "id": "341300",
        "name": "宿州市",
        "parentId": "340000",
        "shortName": "宿州",
        "letter": "S",
        "cityCode": "0557",
        "pinyin": "Suzhou"
    },
    {
        "id": "341302",
        "name": "埇桥区",
        "parentId": "341300",
        "shortName": "埇桥",
        "letter": "Y",
        "cityCode": "0557",
        "pinyin": "Yongqiao"
    },
    {
        "id": "341321",
        "name": "砀山县",
        "parentId": "341300",
        "shortName": "砀山",
        "letter": "D",
        "cityCode": "0557",
        "pinyin": "Dangshan"
    },
    {
        "id": "341322",
        "name": "萧县",
        "parentId": "341300",
        "shortName": "萧县",
        "letter": "X",
        "cityCode": "0557",
        "pinyin": "Xiaoxian"
    },
    {
        "id": "341323",
        "name": "灵璧县",
        "parentId": "341300",
        "shortName": "灵璧",
        "letter": "L",
        "cityCode": "0557",
        "pinyin": "Lingbi"
    },
    {
        "id": "341324",
        "name": "泗县",
        "parentId": "341300",
        "shortName": "泗县",
        "letter": "S",
        "cityCode": "0557",
        "pinyin": "Sixian"
    },
    {
        "id": "341500",
        "name": "六安市",
        "parentId": "340000",
        "shortName": "六安",
        "letter": "L",
        "cityCode": "0564",
        "pinyin": "Lu'an"
    },
    {
        "id": "341502",
        "name": "金安区",
        "parentId": "341500",
        "shortName": "金安",
        "letter": "J",
        "cityCode": "0564",
        "pinyin": "Jin'an"
    },
    {
        "id": "341503",
        "name": "裕安区",
        "parentId": "341500",
        "shortName": "裕安",
        "letter": "Y",
        "cityCode": "0564",
        "pinyin": "Yu'an"
    },
    {
        "id": "341521",
        "name": "寿县",
        "parentId": "341500",
        "shortName": "寿县",
        "letter": "S",
        "cityCode": "0564",
        "pinyin": "Shouxian"
    },
    {
        "id": "341522",
        "name": "霍邱县",
        "parentId": "341500",
        "shortName": "霍邱",
        "letter": "H",
        "cityCode": "0564",
        "pinyin": "Huoqiu"
    },
    {
        "id": "341523",
        "name": "舒城县",
        "parentId": "341500",
        "shortName": "舒城",
        "letter": "S",
        "cityCode": "0564",
        "pinyin": "Shucheng"
    },
    {
        "id": "341524",
        "name": "金寨县",
        "parentId": "341500",
        "shortName": "金寨",
        "letter": "J",
        "cityCode": "0564",
        "pinyin": "Jinzhai"
    },
    {
        "id": "341525",
        "name": "霍山县",
        "parentId": "341500",
        "shortName": "霍山",
        "letter": "H",
        "cityCode": "0564",
        "pinyin": "Huoshan"
    },
    {
        "id": "341600",
        "name": "亳州市",
        "parentId": "340000",
        "shortName": "亳州",
        "letter": "B",
        "cityCode": "0558",
        "pinyin": "Bozhou"
    },
    {
        "id": "341602",
        "name": "谯城区",
        "parentId": "341600",
        "shortName": "谯城",
        "letter": "Q",
        "cityCode": "0558",
        "pinyin": "Qiaocheng"
    },
    {
        "id": "341621",
        "name": "涡阳县",
        "parentId": "341600",
        "shortName": "涡阳",
        "letter": "G",
        "cityCode": "0558",
        "pinyin": "Guoyang"
    },
    {
        "id": "341622",
        "name": "蒙城县",
        "parentId": "341600",
        "shortName": "蒙城",
        "letter": "M",
        "cityCode": "0558",
        "pinyin": "Mengcheng"
    },
    {
        "id": "341623",
        "name": "利辛县",
        "parentId": "341600",
        "shortName": "利辛",
        "letter": "L",
        "cityCode": "0558",
        "pinyin": "Lixin"
    },
    {
        "id": "341700",
        "name": "池州市",
        "parentId": "340000",
        "shortName": "池州",
        "letter": "C",
        "cityCode": "0566",
        "pinyin": "Chizhou"
    },
    {
        "id": "341702",
        "name": "贵池区",
        "parentId": "341700",
        "shortName": "贵池",
        "letter": "G",
        "cityCode": "0566",
        "pinyin": "Guichi"
    },
    {
        "id": "341721",
        "name": "东至县",
        "parentId": "341700",
        "shortName": "东至",
        "letter": "D",
        "cityCode": "0566",
        "pinyin": "Dongzhi"
    },
    {
        "id": "341722",
        "name": "石台县",
        "parentId": "341700",
        "shortName": "石台",
        "letter": "S",
        "cityCode": "0566",
        "pinyin": "Shitai"
    },
    {
        "id": "341723",
        "name": "青阳县",
        "parentId": "341700",
        "shortName": "青阳",
        "letter": "Q",
        "cityCode": "0566",
        "pinyin": "Qingyang"
    },
    {
        "id": "341800",
        "name": "宣城市",
        "parentId": "340000",
        "shortName": "宣城",
        "letter": "X",
        "cityCode": "0563",
        "pinyin": "Xuancheng"
    },
    {
        "id": "341802",
        "name": "宣州区",
        "parentId": "341800",
        "shortName": "宣州",
        "letter": "X",
        "cityCode": "0563",
        "pinyin": "Xuanzhou"
    },
    {
        "id": "341821",
        "name": "郎溪县",
        "parentId": "341800",
        "shortName": "郎溪",
        "letter": "L",
        "cityCode": "0563",
        "pinyin": "Langxi"
    },
    {
        "id": "341822",
        "name": "广德县",
        "parentId": "341800",
        "shortName": "广德",
        "letter": "G",
        "cityCode": "0563",
        "pinyin": "Guangde"
    },
    {
        "id": "341823",
        "name": "泾县",
        "parentId": "341800",
        "shortName": "泾县",
        "letter": "J",
        "cityCode": "0563",
        "pinyin": "Jingxian"
    },
    {
        "id": "341824",
        "name": "绩溪县",
        "parentId": "341800",
        "shortName": "绩溪",
        "letter": "J",
        "cityCode": "0563",
        "pinyin": "Jixi"
    },
    {
        "id": "341825",
        "name": "旌德县",
        "parentId": "341800",
        "shortName": "旌德",
        "letter": "J",
        "cityCode": "0563",
        "pinyin": "Jingde"
    },
    {
        "id": "341881",
        "name": "宁国市",
        "parentId": "341800",
        "shortName": "宁国",
        "letter": "N",
        "cityCode": "0563",
        "pinyin": "Ningguo"
    },
    {
        "id": "350000",
        "name": "福建省",
        "parentId": "100000",
        "shortName": "福建",
        "letter": "F",
        "cityCode": "",
        "pinyin": "Fujian"
    },
    {
        "id": "350100",
        "name": "福州市",
        "parentId": "350000",
        "shortName": "福州",
        "letter": "F",
        "cityCode": "0591",
        "pinyin": "Fuzhou"
    },
    {
        "id": "350102",
        "name": "鼓楼区",
        "parentId": "350100",
        "shortName": "鼓楼",
        "letter": "G",
        "cityCode": "0591",
        "pinyin": "Gulou"
    },
    {
        "id": "350103",
        "name": "台江区",
        "parentId": "350100",
        "shortName": "台江",
        "letter": "T",
        "cityCode": "0591",
        "pinyin": "Taijiang"
    },
    {
        "id": "350104",
        "name": "仓山区",
        "parentId": "350100",
        "shortName": "仓山",
        "letter": "C",
        "cityCode": "0591",
        "pinyin": "Cangshan"
    },
    {
        "id": "350105",
        "name": "马尾区",
        "parentId": "350100",
        "shortName": "马尾",
        "letter": "M",
        "cityCode": "0591",
        "pinyin": "Mawei"
    },
    {
        "id": "350111",
        "name": "晋安区",
        "parentId": "350100",
        "shortName": "晋安",
        "letter": "J",
        "cityCode": "0591",
        "pinyin": "Jin'an"
    },
    {
        "id": "350121",
        "name": "闽侯县",
        "parentId": "350100",
        "shortName": "闽侯",
        "letter": "M",
        "cityCode": "0591",
        "pinyin": "Minhou"
    },
    {
        "id": "350122",
        "name": "连江县",
        "parentId": "350100",
        "shortName": "连江",
        "letter": "L",
        "cityCode": "0591",
        "pinyin": "Lianjiang"
    },
    {
        "id": "350123",
        "name": "罗源县",
        "parentId": "350100",
        "shortName": "罗源",
        "letter": "L",
        "cityCode": "0591",
        "pinyin": "Luoyuan"
    },
    {
        "id": "350124",
        "name": "闽清县",
        "parentId": "350100",
        "shortName": "闽清",
        "letter": "M",
        "cityCode": "0591",
        "pinyin": "Minqing"
    },
    {
        "id": "350125",
        "name": "永泰县",
        "parentId": "350100",
        "shortName": "永泰",
        "letter": "Y",
        "cityCode": "0591",
        "pinyin": "Yongtai"
    },
    {
        "id": "350128",
        "name": "平潭县",
        "parentId": "350100",
        "shortName": "平潭",
        "letter": "P",
        "cityCode": "0591",
        "pinyin": "Pingtan"
    },
    {
        "id": "350181",
        "name": "福清市",
        "parentId": "350100",
        "shortName": "福清",
        "letter": "F",
        "cityCode": "0591",
        "pinyin": "Fuqing"
    },
    {
        "id": "350182",
        "name": "长乐市",
        "parentId": "350100",
        "shortName": "长乐",
        "letter": "C",
        "cityCode": "0591",
        "pinyin": "Changle"
    },
    {
        "id": "350200",
        "name": "厦门市",
        "parentId": "350000",
        "shortName": "厦门",
        "letter": "X",
        "cityCode": "0592",
        "pinyin": "Xiamen"
    },
    {
        "id": "350203",
        "name": "思明区",
        "parentId": "350200",
        "shortName": "思明",
        "letter": "S",
        "cityCode": "0592",
        "pinyin": "Siming"
    },
    {
        "id": "350205",
        "name": "海沧区",
        "parentId": "350200",
        "shortName": "海沧",
        "letter": "H",
        "cityCode": "0592",
        "pinyin": "Haicang"
    },
    {
        "id": "350206",
        "name": "湖里区",
        "parentId": "350200",
        "shortName": "湖里",
        "letter": "H",
        "cityCode": "0592",
        "pinyin": "Huli"
    },
    {
        "id": "350211",
        "name": "集美区",
        "parentId": "350200",
        "shortName": "集美",
        "letter": "J",
        "cityCode": "0592",
        "pinyin": "Jimei"
    },
    {
        "id": "350212",
        "name": "同安区",
        "parentId": "350200",
        "shortName": "同安",
        "letter": "T",
        "cityCode": "0592",
        "pinyin": "Tong'an"
    },
    {
        "id": "350213",
        "name": "翔安区",
        "parentId": "350200",
        "shortName": "翔安",
        "letter": "X",
        "cityCode": "0592",
        "pinyin": "Xiang'an"
    },
    {
        "id": "350300",
        "name": "莆田市",
        "parentId": "350000",
        "shortName": "莆田",
        "letter": "P",
        "cityCode": "0594",
        "pinyin": "Putian"
    },
    {
        "id": "350302",
        "name": "城厢区",
        "parentId": "350300",
        "shortName": "城厢",
        "letter": "C",
        "cityCode": "0594",
        "pinyin": "Chengxiang"
    },
    {
        "id": "350303",
        "name": "涵江区",
        "parentId": "350300",
        "shortName": "涵江",
        "letter": "H",
        "cityCode": "0594",
        "pinyin": "Hanjiang"
    },
    {
        "id": "350304",
        "name": "荔城区",
        "parentId": "350300",
        "shortName": "荔城",
        "letter": "L",
        "cityCode": "0594",
        "pinyin": "Licheng"
    },
    {
        "id": "350305",
        "name": "秀屿区",
        "parentId": "350300",
        "shortName": "秀屿",
        "letter": "X",
        "cityCode": "0594",
        "pinyin": "Xiuyu"
    },
    {
        "id": "350322",
        "name": "仙游县",
        "parentId": "350300",
        "shortName": "仙游",
        "letter": "X",
        "cityCode": "0594",
        "pinyin": "Xianyou"
    },
    {
        "id": "350400",
        "name": "三明市",
        "parentId": "350000",
        "shortName": "三明",
        "letter": "S",
        "cityCode": "0598",
        "pinyin": "Sanming"
    },
    {
        "id": "350402",
        "name": "梅列区",
        "parentId": "350400",
        "shortName": "梅列",
        "letter": "M",
        "cityCode": "0598",
        "pinyin": "Meilie"
    },
    {
        "id": "350403",
        "name": "三元区",
        "parentId": "350400",
        "shortName": "三元",
        "letter": "S",
        "cityCode": "0598",
        "pinyin": "Sanyuan"
    },
    {
        "id": "350421",
        "name": "明溪县",
        "parentId": "350400",
        "shortName": "明溪",
        "letter": "M",
        "cityCode": "0598",
        "pinyin": "Mingxi"
    },
    {
        "id": "350423",
        "name": "清流县",
        "parentId": "350400",
        "shortName": "清流",
        "letter": "Q",
        "cityCode": "0598",
        "pinyin": "Qingliu"
    },
    {
        "id": "350424",
        "name": "宁化县",
        "parentId": "350400",
        "shortName": "宁化",
        "letter": "N",
        "cityCode": "0598",
        "pinyin": "Ninghua"
    },
    {
        "id": "350425",
        "name": "大田县",
        "parentId": "350400",
        "shortName": "大田",
        "letter": "D",
        "cityCode": "0598",
        "pinyin": "Datian"
    },
    {
        "id": "350426",
        "name": "尤溪县",
        "parentId": "350400",
        "shortName": "尤溪",
        "letter": "Y",
        "cityCode": "0598",
        "pinyin": "Youxi"
    },
    {
        "id": "350427",
        "name": "沙县",
        "parentId": "350400",
        "shortName": "沙县",
        "letter": "S",
        "cityCode": "0598",
        "pinyin": "Shaxian"
    },
    {
        "id": "350428",
        "name": "将乐县",
        "parentId": "350400",
        "shortName": "将乐",
        "letter": "J",
        "cityCode": "0598",
        "pinyin": "Jiangle"
    },
    {
        "id": "350429",
        "name": "泰宁县",
        "parentId": "350400",
        "shortName": "泰宁",
        "letter": "T",
        "cityCode": "0598",
        "pinyin": "Taining"
    },
    {
        "id": "350430",
        "name": "建宁县",
        "parentId": "350400",
        "shortName": "建宁",
        "letter": "J",
        "cityCode": "0598",
        "pinyin": "Jianning"
    },
    {
        "id": "350481",
        "name": "永安市",
        "parentId": "350400",
        "shortName": "永安",
        "letter": "Y",
        "cityCode": "0598",
        "pinyin": "Yong'an"
    },
    {
        "id": "350500",
        "name": "泉州市",
        "parentId": "350000",
        "shortName": "泉州",
        "letter": "Q",
        "cityCode": "0595",
        "pinyin": "Quanzhou"
    },
    {
        "id": "350502",
        "name": "鲤城区",
        "parentId": "350500",
        "shortName": "鲤城",
        "letter": "L",
        "cityCode": "0595",
        "pinyin": "Licheng"
    },
    {
        "id": "350503",
        "name": "丰泽区",
        "parentId": "350500",
        "shortName": "丰泽",
        "letter": "F",
        "cityCode": "0595",
        "pinyin": "Fengze"
    },
    {
        "id": "350504",
        "name": "洛江区",
        "parentId": "350500",
        "shortName": "洛江",
        "letter": "L",
        "cityCode": "0595",
        "pinyin": "Luojiang"
    },
    {
        "id": "350505",
        "name": "泉港区",
        "parentId": "350500",
        "shortName": "泉港",
        "letter": "Q",
        "cityCode": "0595",
        "pinyin": "Quangang"
    },
    {
        "id": "350521",
        "name": "惠安县",
        "parentId": "350500",
        "shortName": "惠安",
        "letter": "H",
        "cityCode": "0595",
        "pinyin": "Hui'an"
    },
    {
        "id": "350524",
        "name": "安溪县",
        "parentId": "350500",
        "shortName": "安溪",
        "letter": "A",
        "cityCode": "0595",
        "pinyin": "Anxi"
    },
    {
        "id": "350525",
        "name": "永春县",
        "parentId": "350500",
        "shortName": "永春",
        "letter": "Y",
        "cityCode": "0595",
        "pinyin": "Yongchun"
    },
    {
        "id": "350526",
        "name": "德化县",
        "parentId": "350500",
        "shortName": "德化",
        "letter": "D",
        "cityCode": "0595",
        "pinyin": "Dehua"
    },
    {
        "id": "350527",
        "name": "金门县",
        "parentId": "350500",
        "shortName": "金门",
        "letter": "J",
        "cityCode": "",
        "pinyin": "Jinmen"
    },
    {
        "id": "350581",
        "name": "石狮市",
        "parentId": "350500",
        "shortName": "石狮",
        "letter": "S",
        "cityCode": "0595",
        "pinyin": "Shishi"
    },
    {
        "id": "350582",
        "name": "晋江市",
        "parentId": "350500",
        "shortName": "晋江",
        "letter": "J",
        "cityCode": "0595",
        "pinyin": "Jinjiang"
    },
    {
        "id": "350583",
        "name": "南安市",
        "parentId": "350500",
        "shortName": "南安",
        "letter": "N",
        "cityCode": "0595",
        "pinyin": "Nan'an"
    },
    {
        "id": "350600",
        "name": "漳州市",
        "parentId": "350000",
        "shortName": "漳州",
        "letter": "Z",
        "cityCode": "0596",
        "pinyin": "Zhangzhou"
    },
    {
        "id": "350602",
        "name": "芗城区",
        "parentId": "350600",
        "shortName": "芗城",
        "letter": "X",
        "cityCode": "0596",
        "pinyin": "Xiangcheng"
    },
    {
        "id": "350603",
        "name": "龙文区",
        "parentId": "350600",
        "shortName": "龙文",
        "letter": "L",
        "cityCode": "0596",
        "pinyin": "Longwen"
    },
    {
        "id": "350622",
        "name": "云霄县",
        "parentId": "350600",
        "shortName": "云霄",
        "letter": "Y",
        "cityCode": "0596",
        "pinyin": "Yunxiao"
    },
    {
        "id": "350623",
        "name": "漳浦县",
        "parentId": "350600",
        "shortName": "漳浦",
        "letter": "Z",
        "cityCode": "0596",
        "pinyin": "Zhangpu"
    },
    {
        "id": "350624",
        "name": "诏安县",
        "parentId": "350600",
        "shortName": "诏安",
        "letter": "Z",
        "cityCode": "0596",
        "pinyin": "Zhao'an"
    },
    {
        "id": "350625",
        "name": "长泰县",
        "parentId": "350600",
        "shortName": "长泰",
        "letter": "C",
        "cityCode": "0596",
        "pinyin": "Changtai"
    },
    {
        "id": "350626",
        "name": "东山县",
        "parentId": "350600",
        "shortName": "东山",
        "letter": "D",
        "cityCode": "0596",
        "pinyin": "Dongshan"
    },
    {
        "id": "350627",
        "name": "南靖县",
        "parentId": "350600",
        "shortName": "南靖",
        "letter": "N",
        "cityCode": "0596",
        "pinyin": "Nanjing"
    },
    {
        "id": "350628",
        "name": "平和县",
        "parentId": "350600",
        "shortName": "平和",
        "letter": "P",
        "cityCode": "0596",
        "pinyin": "Pinghe"
    },
    {
        "id": "350629",
        "name": "华安县",
        "parentId": "350600",
        "shortName": "华安",
        "letter": "H",
        "cityCode": "0596",
        "pinyin": "Hua'an"
    },
    {
        "id": "350681",
        "name": "龙海市",
        "parentId": "350600",
        "shortName": "龙海",
        "letter": "L",
        "cityCode": "0596",
        "pinyin": "Longhai"
    },
    {
        "id": "350700",
        "name": "南平市",
        "parentId": "350000",
        "shortName": "南平",
        "letter": "N",
        "cityCode": "0599",
        "pinyin": "Nanping"
    },
    {
        "id": "350702",
        "name": "延平区",
        "parentId": "350700",
        "shortName": "延平",
        "letter": "Y",
        "cityCode": "0600",
        "pinyin": "Yanping"
    },
    {
        "id": "350703",
        "name": "建阳区",
        "parentId": "350700",
        "shortName": "建阳",
        "letter": "J",
        "cityCode": "0599",
        "pinyin": "Jianyang"
    },
    {
        "id": "350721",
        "name": "顺昌县",
        "parentId": "350700",
        "shortName": "顺昌",
        "letter": "S",
        "cityCode": "0605",
        "pinyin": "Shunchang"
    },
    {
        "id": "350722",
        "name": "浦城县",
        "parentId": "350700",
        "shortName": "浦城",
        "letter": "P",
        "cityCode": "0606",
        "pinyin": "Pucheng"
    },
    {
        "id": "350723",
        "name": "光泽县",
        "parentId": "350700",
        "shortName": "光泽",
        "letter": "G",
        "cityCode": "0607",
        "pinyin": "Guangze"
    },
    {
        "id": "350724",
        "name": "松溪县",
        "parentId": "350700",
        "shortName": "松溪",
        "letter": "S",
        "cityCode": "0608",
        "pinyin": "Songxi"
    },
    {
        "id": "350725",
        "name": "政和县",
        "parentId": "350700",
        "shortName": "政和",
        "letter": "Z",
        "cityCode": "0609",
        "pinyin": "Zhenghe"
    },
    {
        "id": "350781",
        "name": "邵武市",
        "parentId": "350700",
        "shortName": "邵武",
        "letter": "S",
        "cityCode": "0601",
        "pinyin": "Shaowu"
    },
    {
        "id": "350782",
        "name": "武夷山市",
        "parentId": "350700",
        "shortName": "武夷山",
        "letter": "W",
        "cityCode": "0602",
        "pinyin": "Wuyishan"
    },
    {
        "id": "350783",
        "name": "建瓯市",
        "parentId": "350700",
        "shortName": "建瓯",
        "letter": "J",
        "cityCode": "0603",
        "pinyin": "Jianou"
    },
    {
        "id": "350800",
        "name": "龙岩市",
        "parentId": "350000",
        "shortName": "龙岩",
        "letter": "L",
        "cityCode": "0597",
        "pinyin": "Longyan"
    },
    {
        "id": "350802",
        "name": "新罗区",
        "parentId": "350800",
        "shortName": "新罗",
        "letter": "X",
        "cityCode": "0597",
        "pinyin": "Xinluo"
    },
    {
        "id": "350821",
        "name": "长汀县",
        "parentId": "350800",
        "shortName": "长汀",
        "letter": "C",
        "cityCode": "0597",
        "pinyin": "Changting"
    },
    {
        "id": "350822",
        "name": "永定区",
        "parentId": "350800",
        "shortName": "永定",
        "letter": "Y",
        "cityCode": "0597",
        "pinyin": "Yongding"
    },
    {
        "id": "350823",
        "name": "上杭县",
        "parentId": "350800",
        "shortName": "上杭",
        "letter": "S",
        "cityCode": "0597",
        "pinyin": "Shanghang"
    },
    {
        "id": "350824",
        "name": "武平县",
        "parentId": "350800",
        "shortName": "武平",
        "letter": "W",
        "cityCode": "0597",
        "pinyin": "Wuping"
    },
    {
        "id": "350825",
        "name": "连城县",
        "parentId": "350800",
        "shortName": "连城",
        "letter": "L",
        "cityCode": "0597",
        "pinyin": "Liancheng"
    },
    {
        "id": "350881",
        "name": "漳平市",
        "parentId": "350800",
        "shortName": "漳平",
        "letter": "Z",
        "cityCode": "0597",
        "pinyin": "Zhangping"
    },
    {
        "id": "350900",
        "name": "宁德市",
        "parentId": "350000",
        "shortName": "宁德",
        "letter": "N",
        "cityCode": "0593",
        "pinyin": "Ningde"
    },
    {
        "id": "350902",
        "name": "蕉城区",
        "parentId": "350900",
        "shortName": "蕉城",
        "letter": "J",
        "cityCode": "0593",
        "pinyin": "Jiaocheng"
    },
    {
        "id": "350921",
        "name": "霞浦县",
        "parentId": "350900",
        "shortName": "霞浦",
        "letter": "X",
        "cityCode": "0593",
        "pinyin": "Xiapu"
    },
    {
        "id": "350922",
        "name": "古田县",
        "parentId": "350900",
        "shortName": "古田",
        "letter": "G",
        "cityCode": "0593",
        "pinyin": "Gutian"
    },
    {
        "id": "350923",
        "name": "屏南县",
        "parentId": "350900",
        "shortName": "屏南",
        "letter": "P",
        "cityCode": "0593",
        "pinyin": "Pingnan"
    },
    {
        "id": "350924",
        "name": "寿宁县",
        "parentId": "350900",
        "shortName": "寿宁",
        "letter": "S",
        "cityCode": "0593",
        "pinyin": "Shouning"
    },
    {
        "id": "350925",
        "name": "周宁县",
        "parentId": "350900",
        "shortName": "周宁",
        "letter": "Z",
        "cityCode": "0593",
        "pinyin": "Zhouning"
    },
    {
        "id": "350926",
        "name": "柘荣县",
        "parentId": "350900",
        "shortName": "柘荣",
        "letter": "Z",
        "cityCode": "0593",
        "pinyin": "Zherong"
    },
    {
        "id": "350981",
        "name": "福安市",
        "parentId": "350900",
        "shortName": "福安",
        "letter": "F",
        "cityCode": "0593",
        "pinyin": "Fu'an"
    },
    {
        "id": "350982",
        "name": "福鼎市",
        "parentId": "350900",
        "shortName": "福鼎",
        "letter": "F",
        "cityCode": "0593",
        "pinyin": "Fuding"
    },
    {
        "id": "360000",
        "name": "江西省",
        "parentId": "100000",
        "shortName": "江西",
        "letter": "J",
        "cityCode": "",
        "pinyin": "Jiangxi"
    },
    {
        "id": "360100",
        "name": "南昌市",
        "parentId": "360000",
        "shortName": "南昌",
        "letter": "N",
        "cityCode": "0791",
        "pinyin": "Nanchang"
    },
    {
        "id": "360102",
        "name": "东湖区",
        "parentId": "360100",
        "shortName": "东湖",
        "letter": "D",
        "cityCode": "0791",
        "pinyin": "Donghu"
    },
    {
        "id": "360103",
        "name": "西湖区",
        "parentId": "360100",
        "shortName": "西湖",
        "letter": "X",
        "cityCode": "0791",
        "pinyin": "Xihu"
    },
    {
        "id": "360104",
        "name": "青云谱区",
        "parentId": "360100",
        "shortName": "青云谱",
        "letter": "Q",
        "cityCode": "0791",
        "pinyin": "Qingyunpu"
    },
    {
        "id": "360105",
        "name": "湾里区",
        "parentId": "360100",
        "shortName": "湾里",
        "letter": "W",
        "cityCode": "0791",
        "pinyin": "Wanli"
    },
    {
        "id": "360111",
        "name": "青山湖区",
        "parentId": "360100",
        "shortName": "青山湖",
        "letter": "Q",
        "cityCode": "0791",
        "pinyin": "Qingshanhu"
    },
    {
        "id": "360121",
        "name": "南昌县",
        "parentId": "360100",
        "shortName": "南昌",
        "letter": "N",
        "cityCode": "0791",
        "pinyin": "Nanchang"
    },
    {
        "id": "360122",
        "name": "新建县",
        "parentId": "360100",
        "shortName": "新建",
        "letter": "X",
        "cityCode": "0791",
        "pinyin": "Xinjian"
    },
    {
        "id": "360123",
        "name": "安义县",
        "parentId": "360100",
        "shortName": "安义",
        "letter": "A",
        "cityCode": "0791",
        "pinyin": "Anyi"
    },
    {
        "id": "360124",
        "name": "进贤县",
        "parentId": "360100",
        "shortName": "进贤",
        "letter": "J",
        "cityCode": "0791",
        "pinyin": "Jinxian"
    },
    {
        "id": "360200",
        "name": "景德镇市",
        "parentId": "360000",
        "shortName": "景德镇",
        "letter": "J",
        "cityCode": "0798",
        "pinyin": "Jingdezhen"
    },
    {
        "id": "360202",
        "name": "昌江区",
        "parentId": "360200",
        "shortName": "昌江",
        "letter": "C",
        "cityCode": "0799",
        "pinyin": "Changjiang"
    },
    {
        "id": "360203",
        "name": "珠山区",
        "parentId": "360200",
        "shortName": "珠山",
        "letter": "Z",
        "cityCode": "0800",
        "pinyin": "Zhushan"
    },
    {
        "id": "360222",
        "name": "浮梁县",
        "parentId": "360200",
        "shortName": "浮梁",
        "letter": "F",
        "cityCode": "0802",
        "pinyin": "Fuliang"
    },
    {
        "id": "360281",
        "name": "乐平市",
        "parentId": "360200",
        "shortName": "乐平",
        "letter": "L",
        "cityCode": "0801",
        "pinyin": "Leping"
    },
    {
        "id": "360300",
        "name": "萍乡市",
        "parentId": "360000",
        "shortName": "萍乡",
        "letter": "P",
        "cityCode": "0799",
        "pinyin": "Pingxiang"
    },
    {
        "id": "360302",
        "name": "安源区",
        "parentId": "360300",
        "shortName": "安源",
        "letter": "A",
        "cityCode": "0800",
        "pinyin": "Anyuan"
    },
    {
        "id": "360313",
        "name": "湘东区",
        "parentId": "360300",
        "shortName": "湘东",
        "letter": "X",
        "cityCode": "0801",
        "pinyin": "Xiangdong"
    },
    {
        "id": "360321",
        "name": "莲花县",
        "parentId": "360300",
        "shortName": "莲花",
        "letter": "L",
        "cityCode": "0802",
        "pinyin": "Lianhua"
    },
    {
        "id": "360322",
        "name": "上栗县",
        "parentId": "360300",
        "shortName": "上栗",
        "letter": "S",
        "cityCode": "0803",
        "pinyin": "Shangli"
    },
    {
        "id": "360323",
        "name": "芦溪县",
        "parentId": "360300",
        "shortName": "芦溪",
        "letter": "L",
        "cityCode": "0804",
        "pinyin": "Luxi"
    },
    {
        "id": "360400",
        "name": "九江市",
        "parentId": "360000",
        "shortName": "九江",
        "letter": "J",
        "cityCode": "0792",
        "pinyin": "Jiujiang"
    },
    {
        "id": "360402",
        "name": "庐山区",
        "parentId": "360400",
        "shortName": "庐山",
        "letter": "L",
        "cityCode": "0792",
        "pinyin": "Lushan"
    },
    {
        "id": "360403",
        "name": "浔阳区",
        "parentId": "360400",
        "shortName": "浔阳",
        "letter": "X",
        "cityCode": "0792",
        "pinyin": "Xunyang"
    },
    {
        "id": "360421",
        "name": "九江县",
        "parentId": "360400",
        "shortName": "九江",
        "letter": "J",
        "cityCode": "0792",
        "pinyin": "Jiujiang"
    },
    {
        "id": "360423",
        "name": "武宁县",
        "parentId": "360400",
        "shortName": "武宁",
        "letter": "W",
        "cityCode": "0792",
        "pinyin": "Wuning"
    },
    {
        "id": "360424",
        "name": "修水县",
        "parentId": "360400",
        "shortName": "修水",
        "letter": "X",
        "cityCode": "0792",
        "pinyin": "Xiushui"
    },
    {
        "id": "360425",
        "name": "永修县",
        "parentId": "360400",
        "shortName": "永修",
        "letter": "Y",
        "cityCode": "0792",
        "pinyin": "Yongxiu"
    },
    {
        "id": "360426",
        "name": "德安县",
        "parentId": "360400",
        "shortName": "德安",
        "letter": "D",
        "cityCode": "0792",
        "pinyin": "De'an"
    },
    {
        "id": "360427",
        "name": "星子县",
        "parentId": "360400",
        "shortName": "星子",
        "letter": "X",
        "cityCode": "0792",
        "pinyin": "Xingzi"
    },
    {
        "id": "360428",
        "name": "都昌县",
        "parentId": "360400",
        "shortName": "都昌",
        "letter": "D",
        "cityCode": "0792",
        "pinyin": "Duchang"
    },
    {
        "id": "360429",
        "name": "湖口县",
        "parentId": "360400",
        "shortName": "湖口",
        "letter": "H",
        "cityCode": "0792",
        "pinyin": "Hukou"
    },
    {
        "id": "360430",
        "name": "彭泽县",
        "parentId": "360400",
        "shortName": "彭泽",
        "letter": "P",
        "cityCode": "0792",
        "pinyin": "Pengze"
    },
    {
        "id": "360481",
        "name": "瑞昌市",
        "parentId": "360400",
        "shortName": "瑞昌",
        "letter": "R",
        "cityCode": "0792",
        "pinyin": "Ruichang"
    },
    {
        "id": "360482",
        "name": "共青城市",
        "parentId": "360400",
        "shortName": "共青城",
        "letter": "G",
        "cityCode": "0792",
        "pinyin": "Gongqingcheng"
    },
    {
        "id": "360500",
        "name": "新余市",
        "parentId": "360000",
        "shortName": "新余",
        "letter": "X",
        "cityCode": "0790",
        "pinyin": "Xinyu"
    },
    {
        "id": "360502",
        "name": "渝水区",
        "parentId": "360500",
        "shortName": "渝水",
        "letter": "Y",
        "cityCode": "0790",
        "pinyin": "Yushui"
    },
    {
        "id": "360521",
        "name": "分宜县",
        "parentId": "360500",
        "shortName": "分宜",
        "letter": "F",
        "cityCode": "0790",
        "pinyin": "Fenyi"
    },
    {
        "id": "360600",
        "name": "鹰潭市",
        "parentId": "360000",
        "shortName": "鹰潭",
        "letter": "Y",
        "cityCode": "0701",
        "pinyin": "Yingtan"
    },
    {
        "id": "360602",
        "name": "月湖区",
        "parentId": "360600",
        "shortName": "月湖",
        "letter": "Y",
        "cityCode": "0701",
        "pinyin": "Yuehu"
    },
    {
        "id": "360622",
        "name": "余江县",
        "parentId": "360600",
        "shortName": "余江",
        "letter": "Y",
        "cityCode": "0701",
        "pinyin": "Yujiang"
    },
    {
        "id": "360681",
        "name": "贵溪市",
        "parentId": "360600",
        "shortName": "贵溪",
        "letter": "G",
        "cityCode": "0701",
        "pinyin": "Guixi"
    },
    {
        "id": "360700",
        "name": "赣州市",
        "parentId": "360000",
        "shortName": "赣州",
        "letter": "G",
        "cityCode": "0797",
        "pinyin": "Ganzhou"
    },
    {
        "id": "360702",
        "name": "章贡区",
        "parentId": "360700",
        "shortName": "章贡",
        "letter": "Z",
        "cityCode": "0797",
        "pinyin": "Zhanggong"
    },
    {
        "id": "360703",
        "name": "南康区",
        "parentId": "360700",
        "shortName": "南康",
        "letter": "N",
        "cityCode": "0797",
        "pinyin": "Nankang"
    },
    {
        "id": "360721",
        "name": "赣县",
        "parentId": "360700",
        "shortName": "赣县",
        "letter": "G",
        "cityCode": "0797",
        "pinyin": "Ganxian"
    },
    {
        "id": "360722",
        "name": "信丰县",
        "parentId": "360700",
        "shortName": "信丰",
        "letter": "X",
        "cityCode": "0797",
        "pinyin": "Xinfeng"
    },
    {
        "id": "360723",
        "name": "大余县",
        "parentId": "360700",
        "shortName": "大余",
        "letter": "D",
        "cityCode": "0797",
        "pinyin": "Dayu"
    },
    {
        "id": "360724",
        "name": "上犹县",
        "parentId": "360700",
        "shortName": "上犹",
        "letter": "S",
        "cityCode": "0797",
        "pinyin": "Shangyou"
    },
    {
        "id": "360725",
        "name": "崇义县",
        "parentId": "360700",
        "shortName": "崇义",
        "letter": "C",
        "cityCode": "0797",
        "pinyin": "Chongyi"
    },
    {
        "id": "360726",
        "name": "安远县",
        "parentId": "360700",
        "shortName": "安远",
        "letter": "A",
        "cityCode": "0797",
        "pinyin": "Anyuan"
    },
    {
        "id": "360727",
        "name": "龙南县",
        "parentId": "360700",
        "shortName": "龙南",
        "letter": "L",
        "cityCode": "0797",
        "pinyin": "Longnan"
    },
    {
        "id": "360728",
        "name": "定南县",
        "parentId": "360700",
        "shortName": "定南",
        "letter": "D",
        "cityCode": "0797",
        "pinyin": "Dingnan"
    },
    {
        "id": "360729",
        "name": "全南县",
        "parentId": "360700",
        "shortName": "全南",
        "letter": "Q",
        "cityCode": "0797",
        "pinyin": "Quannan"
    },
    {
        "id": "360730",
        "name": "宁都县",
        "parentId": "360700",
        "shortName": "宁都",
        "letter": "N",
        "cityCode": "0797",
        "pinyin": "Ningdu"
    },
    {
        "id": "360731",
        "name": "于都县",
        "parentId": "360700",
        "shortName": "于都",
        "letter": "Y",
        "cityCode": "0797",
        "pinyin": "Yudu"
    },
    {
        "id": "360732",
        "name": "兴国县",
        "parentId": "360700",
        "shortName": "兴国",
        "letter": "X",
        "cityCode": "0797",
        "pinyin": "Xingguo"
    },
    {
        "id": "360733",
        "name": "会昌县",
        "parentId": "360700",
        "shortName": "会昌",
        "letter": "H",
        "cityCode": "0797",
        "pinyin": "Huichang"
    },
    {
        "id": "360734",
        "name": "寻乌县",
        "parentId": "360700",
        "shortName": "寻乌",
        "letter": "X",
        "cityCode": "0797",
        "pinyin": "Xunwu"
    },
    {
        "id": "360735",
        "name": "石城县",
        "parentId": "360700",
        "shortName": "石城",
        "letter": "S",
        "cityCode": "0797",
        "pinyin": "Shicheng"
    },
    {
        "id": "360781",
        "name": "瑞金市",
        "parentId": "360700",
        "shortName": "瑞金",
        "letter": "R",
        "cityCode": "0797",
        "pinyin": "Ruijin"
    },
    {
        "id": "360800",
        "name": "吉安市",
        "parentId": "360000",
        "shortName": "吉安",
        "letter": "J",
        "cityCode": "0796",
        "pinyin": "Ji'an"
    },
    {
        "id": "360802",
        "name": "吉州区",
        "parentId": "360800",
        "shortName": "吉州",
        "letter": "J",
        "cityCode": "0796",
        "pinyin": "Jizhou"
    },
    {
        "id": "360803",
        "name": "青原区",
        "parentId": "360800",
        "shortName": "青原",
        "letter": "Q",
        "cityCode": "0796",
        "pinyin": "Qingyuan"
    },
    {
        "id": "360821",
        "name": "吉安县",
        "parentId": "360800",
        "shortName": "吉安",
        "letter": "J",
        "cityCode": "0796",
        "pinyin": "Ji'an"
    },
    {
        "id": "360822",
        "name": "吉水县",
        "parentId": "360800",
        "shortName": "吉水",
        "letter": "J",
        "cityCode": "0796",
        "pinyin": "Jishui"
    },
    {
        "id": "360823",
        "name": "峡江县",
        "parentId": "360800",
        "shortName": "峡江",
        "letter": "X",
        "cityCode": "0796",
        "pinyin": "Xiajiang"
    },
    {
        "id": "360824",
        "name": "新干县",
        "parentId": "360800",
        "shortName": "新干",
        "letter": "X",
        "cityCode": "0796",
        "pinyin": "Xingan"
    },
    {
        "id": "360825",
        "name": "永丰县",
        "parentId": "360800",
        "shortName": "永丰",
        "letter": "Y",
        "cityCode": "0796",
        "pinyin": "Yongfeng"
    },
    {
        "id": "360826",
        "name": "泰和县",
        "parentId": "360800",
        "shortName": "泰和",
        "letter": "T",
        "cityCode": "0796",
        "pinyin": "Taihe"
    },
    {
        "id": "360827",
        "name": "遂川县",
        "parentId": "360800",
        "shortName": "遂川",
        "letter": "S",
        "cityCode": "0796",
        "pinyin": "Suichuan"
    },
    {
        "id": "360828",
        "name": "万安县",
        "parentId": "360800",
        "shortName": "万安",
        "letter": "W",
        "cityCode": "0796",
        "pinyin": "Wan'an"
    },
    {
        "id": "360829",
        "name": "安福县",
        "parentId": "360800",
        "shortName": "安福",
        "letter": "A",
        "cityCode": "0796",
        "pinyin": "Anfu"
    },
    {
        "id": "360830",
        "name": "永新县",
        "parentId": "360800",
        "shortName": "永新",
        "letter": "Y",
        "cityCode": "0796",
        "pinyin": "Yongxin"
    },
    {
        "id": "360881",
        "name": "井冈山市",
        "parentId": "360800",
        "shortName": "井冈山",
        "letter": "J",
        "cityCode": "0796",
        "pinyin": "Jinggangshan"
    },
    {
        "id": "360900",
        "name": "宜春市",
        "parentId": "360000",
        "shortName": "宜春",
        "letter": "Y",
        "cityCode": "0795",
        "pinyin": "Yichun"
    },
    {
        "id": "360902",
        "name": "袁州区",
        "parentId": "360900",
        "shortName": "袁州",
        "letter": "Y",
        "cityCode": "0795",
        "pinyin": "Yuanzhou"
    },
    {
        "id": "360921",
        "name": "奉新县",
        "parentId": "360900",
        "shortName": "奉新",
        "letter": "F",
        "cityCode": "0795",
        "pinyin": "Fengxin"
    },
    {
        "id": "360922",
        "name": "万载县",
        "parentId": "360900",
        "shortName": "万载",
        "letter": "W",
        "cityCode": "0795",
        "pinyin": "Wanzai"
    },
    {
        "id": "360923",
        "name": "上高县",
        "parentId": "360900",
        "shortName": "上高",
        "letter": "S",
        "cityCode": "0795",
        "pinyin": "Shanggao"
    },
    {
        "id": "360924",
        "name": "宜丰县",
        "parentId": "360900",
        "shortName": "宜丰",
        "letter": "Y",
        "cityCode": "0795",
        "pinyin": "Yifeng"
    },
    {
        "id": "360925",
        "name": "靖安县",
        "parentId": "360900",
        "shortName": "靖安",
        "letter": "J",
        "cityCode": "0795",
        "pinyin": "Jing'an"
    },
    {
        "id": "360926",
        "name": "铜鼓县",
        "parentId": "360900",
        "shortName": "铜鼓",
        "letter": "T",
        "cityCode": "0795",
        "pinyin": "Tonggu"
    },
    {
        "id": "360981",
        "name": "丰城市",
        "parentId": "360900",
        "shortName": "丰城",
        "letter": "F",
        "cityCode": "0795",
        "pinyin": "Fengcheng"
    },
    {
        "id": "360982",
        "name": "樟树市",
        "parentId": "360900",
        "shortName": "樟树",
        "letter": "Z",
        "cityCode": "0795",
        "pinyin": "Zhangshu"
    },
    {
        "id": "360983",
        "name": "高安市",
        "parentId": "360900",
        "shortName": "高安",
        "letter": "G",
        "cityCode": "0795",
        "pinyin": "Gao'an"
    },
    {
        "id": "361000",
        "name": "抚州市",
        "parentId": "360000",
        "shortName": "抚州",
        "letter": "F",
        "cityCode": "0794",
        "pinyin": "Fuzhou"
    },
    {
        "id": "361002",
        "name": "临川区",
        "parentId": "361000",
        "shortName": "临川",
        "letter": "L",
        "cityCode": "0794",
        "pinyin": "Linchuan"
    },
    {
        "id": "361021",
        "name": "南城县",
        "parentId": "361000",
        "shortName": "南城",
        "letter": "N",
        "cityCode": "0794",
        "pinyin": "Nancheng"
    },
    {
        "id": "361022",
        "name": "黎川县",
        "parentId": "361000",
        "shortName": "黎川",
        "letter": "L",
        "cityCode": "0794",
        "pinyin": "Lichuan"
    },
    {
        "id": "361023",
        "name": "南丰县",
        "parentId": "361000",
        "shortName": "南丰",
        "letter": "N",
        "cityCode": "0794",
        "pinyin": "Nanfeng"
    },
    {
        "id": "361024",
        "name": "崇仁县",
        "parentId": "361000",
        "shortName": "崇仁",
        "letter": "C",
        "cityCode": "0794",
        "pinyin": "Chongren"
    },
    {
        "id": "361025",
        "name": "乐安县",
        "parentId": "361000",
        "shortName": "乐安",
        "letter": "L",
        "cityCode": "0794",
        "pinyin": "Le'an"
    },
    {
        "id": "361026",
        "name": "宜黄县",
        "parentId": "361000",
        "shortName": "宜黄",
        "letter": "Y",
        "cityCode": "0794",
        "pinyin": "Yihuang"
    },
    {
        "id": "361027",
        "name": "金溪县",
        "parentId": "361000",
        "shortName": "金溪",
        "letter": "J",
        "cityCode": "0794",
        "pinyin": "Jinxi"
    },
    {
        "id": "361028",
        "name": "资溪县",
        "parentId": "361000",
        "shortName": "资溪",
        "letter": "Z",
        "cityCode": "0794",
        "pinyin": "Zixi"
    },
    {
        "id": "361029",
        "name": "东乡县",
        "parentId": "361000",
        "shortName": "东乡",
        "letter": "D",
        "cityCode": "0794",
        "pinyin": "Dongxiang"
    },
    {
        "id": "361030",
        "name": "广昌县",
        "parentId": "361000",
        "shortName": "广昌",
        "letter": "G",
        "cityCode": "0794",
        "pinyin": "Guangchang"
    },
    {
        "id": "361100",
        "name": "上饶市",
        "parentId": "360000",
        "shortName": "上饶",
        "letter": "S",
        "cityCode": "0793",
        "pinyin": "Shangrao"
    },
    {
        "id": "361102",
        "name": "信州区",
        "parentId": "361100",
        "shortName": "信州",
        "letter": "X",
        "cityCode": "0793",
        "pinyin": "Xinzhou"
    },
    {
        "id": "361121",
        "name": "上饶县",
        "parentId": "361100",
        "shortName": "上饶",
        "letter": "S",
        "cityCode": "0793",
        "pinyin": "Shangrao"
    },
    {
        "id": "361122",
        "name": "广丰县",
        "parentId": "361100",
        "shortName": "广丰",
        "letter": "G",
        "cityCode": "0793",
        "pinyin": "Guangfeng"
    },
    {
        "id": "361123",
        "name": "玉山县",
        "parentId": "361100",
        "shortName": "玉山",
        "letter": "Y",
        "cityCode": "0793",
        "pinyin": "Yushan"
    },
    {
        "id": "361124",
        "name": "铅山县",
        "parentId": "361100",
        "shortName": "铅山",
        "letter": "Y",
        "cityCode": "0793",
        "pinyin": "Yanshan"
    },
    {
        "id": "361125",
        "name": "横峰县",
        "parentId": "361100",
        "shortName": "横峰",
        "letter": "H",
        "cityCode": "0793",
        "pinyin": "Hengfeng"
    },
    {
        "id": "361126",
        "name": "弋阳县",
        "parentId": "361100",
        "shortName": "弋阳",
        "letter": "Y",
        "cityCode": "0793",
        "pinyin": "Yiyang"
    },
    {
        "id": "361127",
        "name": "余干县",
        "parentId": "361100",
        "shortName": "余干",
        "letter": "Y",
        "cityCode": "0793",
        "pinyin": "Yugan"
    },
    {
        "id": "361128",
        "name": "鄱阳县",
        "parentId": "361100",
        "shortName": "鄱阳",
        "letter": "P",
        "cityCode": "0793",
        "pinyin": "Poyang"
    },
    {
        "id": "361129",
        "name": "万年县",
        "parentId": "361100",
        "shortName": "万年",
        "letter": "W",
        "cityCode": "0793",
        "pinyin": "Wannian"
    },
    {
        "id": "361130",
        "name": "婺源县",
        "parentId": "361100",
        "shortName": "婺源",
        "letter": "W",
        "cityCode": "0793",
        "pinyin": "Wuyuan"
    },
    {
        "id": "361181",
        "name": "德兴市",
        "parentId": "361100",
        "shortName": "德兴",
        "letter": "D",
        "cityCode": "0793",
        "pinyin": "Dexing"
    },
    {
        "id": "370000",
        "name": "山东省",
        "parentId": "100000",
        "shortName": "山东",
        "letter": "S",
        "cityCode": "",
        "pinyin": "Shandong"
    },
    {
        "id": "370100",
        "name": "济南市",
        "parentId": "370000",
        "shortName": "济南",
        "letter": "J",
        "cityCode": "0531",
        "pinyin": "Jinan"
    },
    {
        "id": "370102",
        "name": "历下区",
        "parentId": "370100",
        "shortName": "历下",
        "letter": "L",
        "cityCode": "0531",
        "pinyin": "Lixia"
    },
    {
        "id": "370103",
        "name": "市中区",
        "parentId": "370100",
        "shortName": "市中区",
        "letter": "S",
        "cityCode": "0531",
        "pinyin": "Shizhongqu"
    },
    {
        "id": "370104",
        "name": "槐荫区",
        "parentId": "370100",
        "shortName": "槐荫",
        "letter": "H",
        "cityCode": "0531",
        "pinyin": "Huaiyin"
    },
    {
        "id": "370105",
        "name": "天桥区",
        "parentId": "370100",
        "shortName": "天桥",
        "letter": "T",
        "cityCode": "0531",
        "pinyin": "Tianqiao"
    },
    {
        "id": "370112",
        "name": "历城区",
        "parentId": "370100",
        "shortName": "历城",
        "letter": "L",
        "cityCode": "0531",
        "pinyin": "Licheng"
    },
    {
        "id": "370113",
        "name": "长清区",
        "parentId": "370100",
        "shortName": "长清",
        "letter": "C",
        "cityCode": "0531",
        "pinyin": "Changqing"
    },
    {
        "id": "370124",
        "name": "平阴县",
        "parentId": "370100",
        "shortName": "平阴",
        "letter": "P",
        "cityCode": "0531",
        "pinyin": "Pingyin"
    },
    {
        "id": "370125",
        "name": "济阳县",
        "parentId": "370100",
        "shortName": "济阳",
        "letter": "J",
        "cityCode": "0531",
        "pinyin": "Jiyang"
    },
    {
        "id": "370126",
        "name": "商河县",
        "parentId": "370100",
        "shortName": "商河",
        "letter": "S",
        "cityCode": "0531",
        "pinyin": "Shanghe"
    },
    {
        "id": "370181",
        "name": "章丘市",
        "parentId": "370100",
        "shortName": "章丘",
        "letter": "Z",
        "cityCode": "0531",
        "pinyin": "Zhangqiu"
    },
    {
        "id": "370200",
        "name": "青岛市",
        "parentId": "370000",
        "shortName": "青岛",
        "letter": "Q",
        "cityCode": "0532",
        "pinyin": "Qingdao"
    },
    {
        "id": "370202",
        "name": "市南区",
        "parentId": "370200",
        "shortName": "市南",
        "letter": "S",
        "cityCode": "0532",
        "pinyin": "Shinan"
    },
    {
        "id": "370203",
        "name": "市北区",
        "parentId": "370200",
        "shortName": "市北",
        "letter": "S",
        "cityCode": "0532",
        "pinyin": "Shibei"
    },
    {
        "id": "370211",
        "name": "黄岛区",
        "parentId": "370200",
        "shortName": "黄岛",
        "letter": "H",
        "cityCode": "0532",
        "pinyin": "Huangdao"
    },
    {
        "id": "370212",
        "name": "崂山区",
        "parentId": "370200",
        "shortName": "崂山",
        "letter": "L",
        "cityCode": "0532",
        "pinyin": "Laoshan"
    },
    {
        "id": "370213",
        "name": "李沧区",
        "parentId": "370200",
        "shortName": "李沧",
        "letter": "L",
        "cityCode": "0532",
        "pinyin": "Licang"
    },
    {
        "id": "370214",
        "name": "城阳区",
        "parentId": "370200",
        "shortName": "城阳",
        "letter": "C",
        "cityCode": "0532",
        "pinyin": "Chengyang"
    },
    {
        "id": "370281",
        "name": "胶州市",
        "parentId": "370200",
        "shortName": "胶州",
        "letter": "J",
        "cityCode": "0532",
        "pinyin": "Jiaozhou"
    },
    {
        "id": "370282",
        "name": "即墨市",
        "parentId": "370200",
        "shortName": "即墨",
        "letter": "J",
        "cityCode": "0532",
        "pinyin": "Jimo"
    },
    {
        "id": "370283",
        "name": "平度市",
        "parentId": "370200",
        "shortName": "平度",
        "letter": "P",
        "cityCode": "0532",
        "pinyin": "Pingdu"
    },
    {
        "id": "370285",
        "name": "莱西市",
        "parentId": "370200",
        "shortName": "莱西",
        "letter": "L",
        "cityCode": "0532",
        "pinyin": "Laixi"
    },
    {
        "id": "370286",
        "name": "西海岸新区",
        "parentId": "370200",
        "shortName": "西海岸",
        "letter": "X",
        "cityCode": "0532",
        "pinyin": "Xihai'an"
    },
    {
        "id": "370300",
        "name": "淄博市",
        "parentId": "370000",
        "shortName": "淄博",
        "letter": "Z",
        "cityCode": "0533",
        "pinyin": "Zibo"
    },
    {
        "id": "370302",
        "name": "淄川区",
        "parentId": "370300",
        "shortName": "淄川",
        "letter": "Z",
        "cityCode": "0533",
        "pinyin": "Zichuan"
    },
    {
        "id": "370303",
        "name": "张店区",
        "parentId": "370300",
        "shortName": "张店",
        "letter": "Z",
        "cityCode": "0533",
        "pinyin": "Zhangdian"
    },
    {
        "id": "370304",
        "name": "博山区",
        "parentId": "370300",
        "shortName": "博山",
        "letter": "B",
        "cityCode": "0533",
        "pinyin": "Boshan"
    },
    {
        "id": "370305",
        "name": "临淄区",
        "parentId": "370300",
        "shortName": "临淄",
        "letter": "L",
        "cityCode": "0533",
        "pinyin": "Linzi"
    },
    {
        "id": "370306",
        "name": "周村区",
        "parentId": "370300",
        "shortName": "周村",
        "letter": "Z",
        "cityCode": "0533",
        "pinyin": "Zhoucun"
    },
    {
        "id": "370321",
        "name": "桓台县",
        "parentId": "370300",
        "shortName": "桓台",
        "letter": "H",
        "cityCode": "0533",
        "pinyin": "Huantai"
    },
    {
        "id": "370322",
        "name": "高青县",
        "parentId": "370300",
        "shortName": "高青",
        "letter": "G",
        "cityCode": "0533",
        "pinyin": "Gaoqing"
    },
    {
        "id": "370323",
        "name": "沂源县",
        "parentId": "370300",
        "shortName": "沂源",
        "letter": "Y",
        "cityCode": "0533",
        "pinyin": "Yiyuan"
    },
    {
        "id": "370400",
        "name": "枣庄市",
        "parentId": "370000",
        "shortName": "枣庄",
        "letter": "Z",
        "cityCode": "0632",
        "pinyin": "Zaozhuang"
    },
    {
        "id": "370402",
        "name": "市中区",
        "parentId": "370400",
        "shortName": "市中区",
        "letter": "S",
        "cityCode": "0632",
        "pinyin": "Shizhongqu"
    },
    {
        "id": "370403",
        "name": "薛城区",
        "parentId": "370400",
        "shortName": "薛城",
        "letter": "X",
        "cityCode": "0632",
        "pinyin": "Xuecheng"
    },
    {
        "id": "370404",
        "name": "峄城区",
        "parentId": "370400",
        "shortName": "峄城",
        "letter": "Y",
        "cityCode": "0632",
        "pinyin": "Yicheng"
    },
    {
        "id": "370405",
        "name": "台儿庄区",
        "parentId": "370400",
        "shortName": "台儿庄",
        "letter": "T",
        "cityCode": "0632",
        "pinyin": "Taierzhuang"
    },
    {
        "id": "370406",
        "name": "山亭区",
        "parentId": "370400",
        "shortName": "山亭",
        "letter": "S",
        "cityCode": "0632",
        "pinyin": "Shanting"
    },
    {
        "id": "370481",
        "name": "滕州市",
        "parentId": "370400",
        "shortName": "滕州",
        "letter": "T",
        "cityCode": "0632",
        "pinyin": "Tengzhou"
    },
    {
        "id": "370500",
        "name": "东营市",
        "parentId": "370000",
        "shortName": "东营",
        "letter": "D",
        "cityCode": "0546",
        "pinyin": "Dongying"
    },
    {
        "id": "370502",
        "name": "东营区",
        "parentId": "370500",
        "shortName": "东营",
        "letter": "D",
        "cityCode": "0546",
        "pinyin": "Dongying"
    },
    {
        "id": "370503",
        "name": "河口区",
        "parentId": "370500",
        "shortName": "河口",
        "letter": "H",
        "cityCode": "0546",
        "pinyin": "Hekou"
    },
    {
        "id": "370521",
        "name": "垦利县",
        "parentId": "370500",
        "shortName": "垦利",
        "letter": "K",
        "cityCode": "0546",
        "pinyin": "Kenli"
    },
    {
        "id": "370522",
        "name": "利津县",
        "parentId": "370500",
        "shortName": "利津",
        "letter": "L",
        "cityCode": "0546",
        "pinyin": "Lijin"
    },
    {
        "id": "370523",
        "name": "广饶县",
        "parentId": "370500",
        "shortName": "广饶",
        "letter": "G",
        "cityCode": "0546",
        "pinyin": "Guangrao"
    },
    {
        "id": "370600",
        "name": "烟台市",
        "parentId": "370000",
        "shortName": "烟台",
        "letter": "Y",
        "cityCode": "0535",
        "pinyin": "Yantai"
    },
    {
        "id": "370602",
        "name": "芝罘区",
        "parentId": "370600",
        "shortName": "芝罘",
        "letter": "Z",
        "cityCode": "0535",
        "pinyin": "Zhifu"
    },
    {
        "id": "370611",
        "name": "福山区",
        "parentId": "370600",
        "shortName": "福山",
        "letter": "F",
        "cityCode": "0535",
        "pinyin": "Fushan"
    },
    {
        "id": "370612",
        "name": "牟平区",
        "parentId": "370600",
        "shortName": "牟平",
        "letter": "M",
        "cityCode": "0535",
        "pinyin": "Muping"
    },
    {
        "id": "370613",
        "name": "莱山区",
        "parentId": "370600",
        "shortName": "莱山",
        "letter": "L",
        "cityCode": "0535",
        "pinyin": "Laishan"
    },
    {
        "id": "370634",
        "name": "长岛县",
        "parentId": "370600",
        "shortName": "长岛",
        "letter": "C",
        "cityCode": "0535",
        "pinyin": "Changdao"
    },
    {
        "id": "370681",
        "name": "龙口市",
        "parentId": "370600",
        "shortName": "龙口",
        "letter": "L",
        "cityCode": "0535",
        "pinyin": "Longkou"
    },
    {
        "id": "370682",
        "name": "莱阳市",
        "parentId": "370600",
        "shortName": "莱阳",
        "letter": "L",
        "cityCode": "0535",
        "pinyin": "Laiyang"
    },
    {
        "id": "370683",
        "name": "莱州市",
        "parentId": "370600",
        "shortName": "莱州",
        "letter": "L",
        "cityCode": "0535",
        "pinyin": "Laizhou"
    },
    {
        "id": "370684",
        "name": "蓬莱市",
        "parentId": "370600",
        "shortName": "蓬莱",
        "letter": "P",
        "cityCode": "0535",
        "pinyin": "Penglai"
    },
    {
        "id": "370685",
        "name": "招远市",
        "parentId": "370600",
        "shortName": "招远",
        "letter": "Z",
        "cityCode": "0535",
        "pinyin": "Zhaoyuan"
    },
    {
        "id": "370686",
        "name": "栖霞市",
        "parentId": "370600",
        "shortName": "栖霞",
        "letter": "Q",
        "cityCode": "0535",
        "pinyin": "Qixia"
    },
    {
        "id": "370687",
        "name": "海阳市",
        "parentId": "370600",
        "shortName": "海阳",
        "letter": "H",
        "cityCode": "0535",
        "pinyin": "Haiyang"
    },
    {
        "id": "370700",
        "name": "潍坊市",
        "parentId": "370000",
        "shortName": "潍坊",
        "letter": "W",
        "cityCode": "0536",
        "pinyin": "Weifang"
    },
    {
        "id": "370702",
        "name": "潍城区",
        "parentId": "370700",
        "shortName": "潍城",
        "letter": "W",
        "cityCode": "0536",
        "pinyin": "Weicheng"
    },
    {
        "id": "370703",
        "name": "寒亭区",
        "parentId": "370700",
        "shortName": "寒亭",
        "letter": "H",
        "cityCode": "0536",
        "pinyin": "Hanting"
    },
    {
        "id": "370704",
        "name": "坊子区",
        "parentId": "370700",
        "shortName": "坊子",
        "letter": "F",
        "cityCode": "0536",
        "pinyin": "Fangzi"
    },
    {
        "id": "370705",
        "name": "奎文区",
        "parentId": "370700",
        "shortName": "奎文",
        "letter": "K",
        "cityCode": "0536",
        "pinyin": "Kuiwen"
    },
    {
        "id": "370724",
        "name": "临朐县",
        "parentId": "370700",
        "shortName": "临朐",
        "letter": "L",
        "cityCode": "0536",
        "pinyin": "Linqu"
    },
    {
        "id": "370725",
        "name": "昌乐县",
        "parentId": "370700",
        "shortName": "昌乐",
        "letter": "C",
        "cityCode": "0536",
        "pinyin": "Changle"
    },
    {
        "id": "370781",
        "name": "青州市",
        "parentId": "370700",
        "shortName": "青州",
        "letter": "Q",
        "cityCode": "0536",
        "pinyin": "Qingzhou"
    },
    {
        "id": "370782",
        "name": "诸城市",
        "parentId": "370700",
        "shortName": "诸城",
        "letter": "Z",
        "cityCode": "0536",
        "pinyin": "Zhucheng"
    },
    {
        "id": "370783",
        "name": "寿光市",
        "parentId": "370700",
        "shortName": "寿光",
        "letter": "S",
        "cityCode": "0536",
        "pinyin": "Shouguang"
    },
    {
        "id": "370784",
        "name": "安丘市",
        "parentId": "370700",
        "shortName": "安丘",
        "letter": "A",
        "cityCode": "0536",
        "pinyin": "Anqiu"
    },
    {
        "id": "370785",
        "name": "高密市",
        "parentId": "370700",
        "shortName": "高密",
        "letter": "G",
        "cityCode": "0536",
        "pinyin": "Gaomi"
    },
    {
        "id": "370786",
        "name": "昌邑市",
        "parentId": "370700",
        "shortName": "昌邑",
        "letter": "C",
        "cityCode": "0536",
        "pinyin": "Changyi"
    },
    {
        "id": "370800",
        "name": "济宁市",
        "parentId": "370000",
        "shortName": "济宁",
        "letter": "J",
        "cityCode": "0537",
        "pinyin": "Jining"
    },
    {
        "id": "370811",
        "name": "任城区",
        "parentId": "370800",
        "shortName": "任城",
        "letter": "R",
        "cityCode": "0537",
        "pinyin": "Rencheng"
    },
    {
        "id": "370812",
        "name": "兖州区",
        "parentId": "370800",
        "shortName": "兖州",
        "letter": "Y",
        "cityCode": "0537",
        "pinyin": "Yanzhou"
    },
    {
        "id": "370826",
        "name": "微山县",
        "parentId": "370800",
        "shortName": "微山",
        "letter": "W",
        "cityCode": "0537",
        "pinyin": "Weishan"
    },
    {
        "id": "370827",
        "name": "鱼台县",
        "parentId": "370800",
        "shortName": "鱼台",
        "letter": "Y",
        "cityCode": "0537",
        "pinyin": "Yutai"
    },
    {
        "id": "370828",
        "name": "金乡县",
        "parentId": "370800",
        "shortName": "金乡",
        "letter": "J",
        "cityCode": "0537",
        "pinyin": "Jinxiang"
    },
    {
        "id": "370829",
        "name": "嘉祥县",
        "parentId": "370800",
        "shortName": "嘉祥",
        "letter": "J",
        "cityCode": "0537",
        "pinyin": "Jiaxiang"
    },
    {
        "id": "370830",
        "name": "汶上县",
        "parentId": "370800",
        "shortName": "汶上",
        "letter": "W",
        "cityCode": "0537",
        "pinyin": "Wenshang"
    },
    {
        "id": "370831",
        "name": "泗水县",
        "parentId": "370800",
        "shortName": "泗水",
        "letter": "S",
        "cityCode": "0537",
        "pinyin": "Sishui"
    },
    {
        "id": "370832",
        "name": "梁山县",
        "parentId": "370800",
        "shortName": "梁山",
        "letter": "L",
        "cityCode": "0537",
        "pinyin": "Liangshan"
    },
    {
        "id": "370881",
        "name": "曲阜市",
        "parentId": "370800",
        "shortName": "曲阜",
        "letter": "Q",
        "cityCode": "0537",
        "pinyin": "Qufu"
    },
    {
        "id": "370883",
        "name": "邹城市",
        "parentId": "370800",
        "shortName": "邹城",
        "letter": "Z",
        "cityCode": "0537",
        "pinyin": "Zoucheng"
    },
    {
        "id": "370900",
        "name": "泰安市",
        "parentId": "370000",
        "shortName": "泰安",
        "letter": "T",
        "cityCode": "0538",
        "pinyin": "Tai'an"
    },
    {
        "id": "370902",
        "name": "泰山区",
        "parentId": "370900",
        "shortName": "泰山",
        "letter": "T",
        "cityCode": "0538",
        "pinyin": "Taishan"
    },
    {
        "id": "370911",
        "name": "岱岳区",
        "parentId": "370900",
        "shortName": "岱岳",
        "letter": "D",
        "cityCode": "0538",
        "pinyin": "Daiyue"
    },
    {
        "id": "370921",
        "name": "宁阳县",
        "parentId": "370900",
        "shortName": "宁阳",
        "letter": "N",
        "cityCode": "0538",
        "pinyin": "Ningyang"
    },
    {
        "id": "370923",
        "name": "东平县",
        "parentId": "370900",
        "shortName": "东平",
        "letter": "D",
        "cityCode": "0538",
        "pinyin": "Dongping"
    },
    {
        "id": "370982",
        "name": "新泰市",
        "parentId": "370900",
        "shortName": "新泰",
        "letter": "X",
        "cityCode": "0538",
        "pinyin": "Xintai"
    },
    {
        "id": "370983",
        "name": "肥城市",
        "parentId": "370900",
        "shortName": "肥城",
        "letter": "F",
        "cityCode": "0538",
        "pinyin": "Feicheng"
    },
    {
        "id": "371000",
        "name": "威海市",
        "parentId": "370000",
        "shortName": "威海",
        "letter": "W",
        "cityCode": "0631",
        "pinyin": "Weihai"
    },
    {
        "id": "371002",
        "name": "环翠区",
        "parentId": "371000",
        "shortName": "环翠",
        "letter": "H",
        "cityCode": "0631",
        "pinyin": "Huancui"
    },
    {
        "id": "371003",
        "name": "文登区",
        "parentId": "371000",
        "shortName": "文登",
        "letter": "W",
        "cityCode": "0631",
        "pinyin": "Wendeng"
    },
    {
        "id": "371082",
        "name": "荣成市",
        "parentId": "371000",
        "shortName": "荣成",
        "letter": "R",
        "cityCode": "0631",
        "pinyin": "Rongcheng"
    },
    {
        "id": "371083",
        "name": "乳山市",
        "parentId": "371000",
        "shortName": "乳山",
        "letter": "R",
        "cityCode": "0631",
        "pinyin": "Rushan"
    },
    {
        "id": "371100",
        "name": "日照市",
        "parentId": "370000",
        "shortName": "日照",
        "letter": "R",
        "cityCode": "0633",
        "pinyin": "Rizhao"
    },
    {
        "id": "371102",
        "name": "东港区",
        "parentId": "371100",
        "shortName": "东港",
        "letter": "D",
        "cityCode": "0633",
        "pinyin": "Donggang"
    },
    {
        "id": "371103",
        "name": "岚山区",
        "parentId": "371100",
        "shortName": "岚山",
        "letter": "L",
        "cityCode": "0633",
        "pinyin": "Lanshan"
    },
    {
        "id": "371121",
        "name": "五莲县",
        "parentId": "371100",
        "shortName": "五莲",
        "letter": "W",
        "cityCode": "0633",
        "pinyin": "Wulian"
    },
    {
        "id": "371122",
        "name": "莒县",
        "parentId": "371100",
        "shortName": "莒县",
        "letter": "J",
        "cityCode": "0633",
        "pinyin": "Juxian"
    },
    {
        "id": "371200",
        "name": "莱芜市",
        "parentId": "370000",
        "shortName": "莱芜",
        "letter": "L",
        "cityCode": "0634",
        "pinyin": "Laiwu"
    },
    {
        "id": "371202",
        "name": "莱城区",
        "parentId": "371200",
        "shortName": "莱城",
        "letter": "L",
        "cityCode": "0634",
        "pinyin": "Laicheng"
    },
    {
        "id": "371203",
        "name": "钢城区",
        "parentId": "371200",
        "shortName": "钢城",
        "letter": "G",
        "cityCode": "0634",
        "pinyin": "Gangcheng"
    },
    {
        "id": "371300",
        "name": "临沂市",
        "parentId": "370000",
        "shortName": "临沂",
        "letter": "L",
        "cityCode": "0539",
        "pinyin": "Linyi"
    },
    {
        "id": "371302",
        "name": "兰山区",
        "parentId": "371300",
        "shortName": "兰山",
        "letter": "L",
        "cityCode": "0539",
        "pinyin": "Lanshan"
    },
    {
        "id": "371311",
        "name": "罗庄区",
        "parentId": "371300",
        "shortName": "罗庄",
        "letter": "L",
        "cityCode": "0539",
        "pinyin": "Luozhuang"
    },
    {
        "id": "371312",
        "name": "河东区",
        "parentId": "371300",
        "shortName": "河东",
        "letter": "H",
        "cityCode": "0539",
        "pinyin": "Hedong"
    },
    {
        "id": "371321",
        "name": "沂南县",
        "parentId": "371300",
        "shortName": "沂南",
        "letter": "Y",
        "cityCode": "0539",
        "pinyin": "Yinan"
    },
    {
        "id": "371322",
        "name": "郯城县",
        "parentId": "371300",
        "shortName": "郯城",
        "letter": "T",
        "cityCode": "0539",
        "pinyin": "Tancheng"
    },
    {
        "id": "371323",
        "name": "沂水县",
        "parentId": "371300",
        "shortName": "沂水",
        "letter": "Y",
        "cityCode": "0539",
        "pinyin": "Yishui"
    },
    {
        "id": "371324",
        "name": "兰陵县",
        "parentId": "371300",
        "shortName": "兰陵",
        "letter": "L",
        "cityCode": "0539",
        "pinyin": "Lanling"
    },
    {
        "id": "371325",
        "name": "费县",
        "parentId": "371300",
        "shortName": "费县",
        "letter": "F",
        "cityCode": "0539",
        "pinyin": "Feixian"
    },
    {
        "id": "371326",
        "name": "平邑县",
        "parentId": "371300",
        "shortName": "平邑",
        "letter": "P",
        "cityCode": "0539",
        "pinyin": "Pingyi"
    },
    {
        "id": "371327",
        "name": "莒南县",
        "parentId": "371300",
        "shortName": "莒南",
        "letter": "J",
        "cityCode": "0539",
        "pinyin": "Junan"
    },
    {
        "id": "371328",
        "name": "蒙阴县",
        "parentId": "371300",
        "shortName": "蒙阴",
        "letter": "M",
        "cityCode": "0539",
        "pinyin": "Mengyin"
    },
    {
        "id": "371329",
        "name": "临沭县",
        "parentId": "371300",
        "shortName": "临沭",
        "letter": "L",
        "cityCode": "0539",
        "pinyin": "Linshu"
    },
    {
        "id": "371400",
        "name": "德州市",
        "parentId": "370000",
        "shortName": "德州",
        "letter": "D",
        "cityCode": "0534",
        "pinyin": "Dezhou"
    },
    {
        "id": "371402",
        "name": "德城区",
        "parentId": "371400",
        "shortName": "德城",
        "letter": "D",
        "cityCode": "0534",
        "pinyin": "Decheng"
    },
    {
        "id": "371403",
        "name": "陵城区",
        "parentId": "371400",
        "shortName": "陵城",
        "letter": "L",
        "cityCode": "0534",
        "pinyin": "Lingcheng"
    },
    {
        "id": "371422",
        "name": "宁津县",
        "parentId": "371400",
        "shortName": "宁津",
        "letter": "N",
        "cityCode": "0534",
        "pinyin": "Ningjin"
    },
    {
        "id": "371423",
        "name": "庆云县",
        "parentId": "371400",
        "shortName": "庆云",
        "letter": "Q",
        "cityCode": "0534",
        "pinyin": "Qingyun"
    },
    {
        "id": "371424",
        "name": "临邑县",
        "parentId": "371400",
        "shortName": "临邑",
        "letter": "L",
        "cityCode": "0534",
        "pinyin": "Linyi"
    },
    {
        "id": "371425",
        "name": "齐河县",
        "parentId": "371400",
        "shortName": "齐河",
        "letter": "Q",
        "cityCode": "0534",
        "pinyin": "Qihe"
    },
    {
        "id": "371426",
        "name": "平原县",
        "parentId": "371400",
        "shortName": "平原",
        "letter": "P",
        "cityCode": "0534",
        "pinyin": "Pingyuan"
    },
    {
        "id": "371427",
        "name": "夏津县",
        "parentId": "371400",
        "shortName": "夏津",
        "letter": "X",
        "cityCode": "0534",
        "pinyin": "Xiajin"
    },
    {
        "id": "371428",
        "name": "武城县",
        "parentId": "371400",
        "shortName": "武城",
        "letter": "W",
        "cityCode": "0534",
        "pinyin": "Wucheng"
    },
    {
        "id": "371481",
        "name": "乐陵市",
        "parentId": "371400",
        "shortName": "乐陵",
        "letter": "L",
        "cityCode": "0534",
        "pinyin": "Leling"
    },
    {
        "id": "371482",
        "name": "禹城市",
        "parentId": "371400",
        "shortName": "禹城",
        "letter": "Y",
        "cityCode": "0534",
        "pinyin": "Yucheng"
    },
    {
        "id": "371500",
        "name": "聊城市",
        "parentId": "370000",
        "shortName": "聊城",
        "letter": "L",
        "cityCode": "0635",
        "pinyin": "Liaocheng"
    },
    {
        "id": "371502",
        "name": "东昌府区",
        "parentId": "371500",
        "shortName": "东昌府",
        "letter": "D",
        "cityCode": "0635",
        "pinyin": "Dongchangfu"
    },
    {
        "id": "371521",
        "name": "阳谷县",
        "parentId": "371500",
        "shortName": "阳谷",
        "letter": "Y",
        "cityCode": "0635",
        "pinyin": "Yanggu"
    },
    {
        "id": "371522",
        "name": "莘县",
        "parentId": "371500",
        "shortName": "莘县",
        "letter": "S",
        "cityCode": "0635",
        "pinyin": "Shenxian"
    },
    {
        "id": "371523",
        "name": "茌平县",
        "parentId": "371500",
        "shortName": "茌平",
        "letter": "C",
        "cityCode": "0635",
        "pinyin": "Chiping"
    },
    {
        "id": "371524",
        "name": "东阿县",
        "parentId": "371500",
        "shortName": "东阿",
        "letter": "D",
        "cityCode": "0635",
        "pinyin": "Dong'e"
    },
    {
        "id": "371525",
        "name": "冠县",
        "parentId": "371500",
        "shortName": "冠县",
        "letter": "G",
        "cityCode": "0635",
        "pinyin": "Guanxian"
    },
    {
        "id": "371526",
        "name": "高唐县",
        "parentId": "371500",
        "shortName": "高唐",
        "letter": "G",
        "cityCode": "0635",
        "pinyin": "Gaotang"
    },
    {
        "id": "371581",
        "name": "临清市",
        "parentId": "371500",
        "shortName": "临清",
        "letter": "L",
        "cityCode": "0635",
        "pinyin": "Linqing"
    },
    {
        "id": "371600",
        "name": "滨州市",
        "parentId": "370000",
        "shortName": "滨州",
        "letter": "B",
        "cityCode": "0543",
        "pinyin": "Binzhou"
    },
    {
        "id": "371602",
        "name": "滨城区",
        "parentId": "371600",
        "shortName": "滨城",
        "letter": "B",
        "cityCode": "0543",
        "pinyin": "Bincheng"
    },
    {
        "id": "371603",
        "name": "沾化区",
        "parentId": "371600",
        "shortName": "沾化",
        "letter": "Z",
        "cityCode": "0543",
        "pinyin": "Zhanhua"
    },
    {
        "id": "371621",
        "name": "惠民县",
        "parentId": "371600",
        "shortName": "惠民",
        "letter": "H",
        "cityCode": "0543",
        "pinyin": "Huimin"
    },
    {
        "id": "371622",
        "name": "阳信县",
        "parentId": "371600",
        "shortName": "阳信",
        "letter": "Y",
        "cityCode": "0543",
        "pinyin": "Yangxin"
    },
    {
        "id": "371623",
        "name": "无棣县",
        "parentId": "371600",
        "shortName": "无棣",
        "letter": "W",
        "cityCode": "0543",
        "pinyin": "Wudi"
    },
    {
        "id": "371625",
        "name": "博兴县",
        "parentId": "371600",
        "shortName": "博兴",
        "letter": "B",
        "cityCode": "0543",
        "pinyin": "Boxing"
    },
    {
        "id": "371626",
        "name": "邹平县",
        "parentId": "371600",
        "shortName": "邹平",
        "letter": "Z",
        "cityCode": "0543",
        "pinyin": "Zouping"
    },
    {
        "id": "371627",
        "name": "北海新区",
        "parentId": "371600",
        "shortName": "北海新区",
        "letter": "B",
        "cityCode": "0543",
        "pinyin": "Beihaixinqu"
    },
    {
        "id": "371700",
        "name": "菏泽市",
        "parentId": "370000",
        "shortName": "菏泽",
        "letter": "H",
        "cityCode": "0530",
        "pinyin": "Heze"
    },
    {
        "id": "371702",
        "name": "牡丹区",
        "parentId": "371700",
        "shortName": "牡丹",
        "letter": "M",
        "cityCode": "0530",
        "pinyin": "Mudan"
    },
    {
        "id": "371721",
        "name": "曹县",
        "parentId": "371700",
        "shortName": "曹县",
        "letter": "C",
        "cityCode": "0530",
        "pinyin": "Caoxian"
    },
    {
        "id": "371722",
        "name": "单县",
        "parentId": "371700",
        "shortName": "单县",
        "letter": "S",
        "cityCode": "0530",
        "pinyin": "Shanxian"
    },
    {
        "id": "371723",
        "name": "成武县",
        "parentId": "371700",
        "shortName": "成武",
        "letter": "C",
        "cityCode": "0530",
        "pinyin": "Chengwu"
    },
    {
        "id": "371724",
        "name": "巨野县",
        "parentId": "371700",
        "shortName": "巨野",
        "letter": "J",
        "cityCode": "0530",
        "pinyin": "Juye"
    },
    {
        "id": "371725",
        "name": "郓城县",
        "parentId": "371700",
        "shortName": "郓城",
        "letter": "Y",
        "cityCode": "0530",
        "pinyin": "Yuncheng"
    },
    {
        "id": "371726",
        "name": "鄄城县",
        "parentId": "371700",
        "shortName": "鄄城",
        "letter": "J",
        "cityCode": "0530",
        "pinyin": "Juancheng"
    },
    {
        "id": "371727",
        "name": "定陶县",
        "parentId": "371700",
        "shortName": "定陶",
        "letter": "D",
        "cityCode": "0530",
        "pinyin": "Dingtao"
    },
    {
        "id": "371728",
        "name": "东明县",
        "parentId": "371700",
        "shortName": "东明",
        "letter": "D",
        "cityCode": "0530",
        "pinyin": "Dongming"
    },
    {
        "id": "410000",
        "name": "河南省",
        "parentId": "100000",
        "shortName": "河南",
        "letter": "H",
        "cityCode": "",
        "pinyin": "Henan"
    },
    {
        "id": "410100",
        "name": "郑州市",
        "parentId": "410000",
        "shortName": "郑州",
        "letter": "Z",
        "cityCode": "0371",
        "pinyin": "Zhengzhou"
    },
    {
        "id": "410102",
        "name": "中原区",
        "parentId": "410100",
        "shortName": "中原",
        "letter": "Z",
        "cityCode": "0371",
        "pinyin": "Zhongyuan"
    },
    {
        "id": "410103",
        "name": "二七区",
        "parentId": "410100",
        "shortName": "二七",
        "letter": "E",
        "cityCode": "0371",
        "pinyin": "Erqi"
    },
    {
        "id": "410104",
        "name": "管城回族区",
        "parentId": "410100",
        "shortName": "管城",
        "letter": "G",
        "cityCode": "0371",
        "pinyin": "Guancheng"
    },
    {
        "id": "410105",
        "name": "金水区",
        "parentId": "410100",
        "shortName": "金水",
        "letter": "J",
        "cityCode": "0371",
        "pinyin": "Jinshui"
    },
    {
        "id": "410106",
        "name": "上街区",
        "parentId": "410100",
        "shortName": "上街",
        "letter": "S",
        "cityCode": "0371",
        "pinyin": "Shangjie"
    },
    {
        "id": "410108",
        "name": "惠济区",
        "parentId": "410100",
        "shortName": "惠济",
        "letter": "H",
        "cityCode": "0371",
        "pinyin": "Huiji"
    },
    {
        "id": "410122",
        "name": "中牟县",
        "parentId": "410100",
        "shortName": "中牟",
        "letter": "Z",
        "cityCode": "0371",
        "pinyin": "Zhongmu"
    },
    {
        "id": "410181",
        "name": "巩义市",
        "parentId": "410100",
        "shortName": "巩义",
        "letter": "G",
        "cityCode": "0371",
        "pinyin": "Gongyi"
    },
    {
        "id": "410182",
        "name": "荥阳市",
        "parentId": "410100",
        "shortName": "荥阳",
        "letter": "X",
        "cityCode": "0371",
        "pinyin": "Xingyang"
    },
    {
        "id": "410183",
        "name": "新密市",
        "parentId": "410100",
        "shortName": "新密",
        "letter": "X",
        "cityCode": "0371",
        "pinyin": "Xinmi"
    },
    {
        "id": "410184",
        "name": "新郑市",
        "parentId": "410100",
        "shortName": "新郑",
        "letter": "X",
        "cityCode": "0371",
        "pinyin": "Xinzheng"
    },
    {
        "id": "410185",
        "name": "登封市",
        "parentId": "410100",
        "shortName": "登封",
        "letter": "D",
        "cityCode": "0371",
        "pinyin": "Dengfeng"
    },
    {
        "id": "410200",
        "name": "开封市",
        "parentId": "410000",
        "shortName": "开封",
        "letter": "K",
        "cityCode": "0378",
        "pinyin": "Kaifeng"
    },
    {
        "id": "410202",
        "name": "龙亭区",
        "parentId": "410200",
        "shortName": "龙亭",
        "letter": "L",
        "cityCode": "0378",
        "pinyin": "Longting"
    },
    {
        "id": "410203",
        "name": "顺河回族区",
        "parentId": "410200",
        "shortName": "顺河",
        "letter": "S",
        "cityCode": "0378",
        "pinyin": "Shunhe"
    },
    {
        "id": "410204",
        "name": "鼓楼区",
        "parentId": "410200",
        "shortName": "鼓楼",
        "letter": "G",
        "cityCode": "0378",
        "pinyin": "Gulou"
    },
    {
        "id": "410205",
        "name": "禹王台区",
        "parentId": "410200",
        "shortName": "禹王台",
        "letter": "Y",
        "cityCode": "0378",
        "pinyin": "Yuwangtai"
    },
    {
        "id": "410212",
        "name": "祥符区",
        "parentId": "410200",
        "shortName": "祥符",
        "letter": "X",
        "cityCode": "0378",
        "pinyin": "Xiangfu"
    },
    {
        "id": "410221",
        "name": "杞县",
        "parentId": "410200",
        "shortName": "杞县",
        "letter": "Q",
        "cityCode": "0378",
        "pinyin": "Qixian"
    },
    {
        "id": "410222",
        "name": "通许县",
        "parentId": "410200",
        "shortName": "通许",
        "letter": "T",
        "cityCode": "0378",
        "pinyin": "Tongxu"
    },
    {
        "id": "410223",
        "name": "尉氏县",
        "parentId": "410200",
        "shortName": "尉氏",
        "letter": "W",
        "cityCode": "0378",
        "pinyin": "Weishi"
    },
    {
        "id": "410225",
        "name": "兰考县",
        "parentId": "410200",
        "shortName": "兰考",
        "letter": "L",
        "cityCode": "0378",
        "pinyin": "Lankao"
    },
    {
        "id": "410300",
        "name": "洛阳市",
        "parentId": "410000",
        "shortName": "洛阳",
        "letter": "L",
        "cityCode": "0379",
        "pinyin": "Luoyang"
    },
    {
        "id": "410302",
        "name": "老城区",
        "parentId": "410300",
        "shortName": "老城",
        "letter": "L",
        "cityCode": "0379",
        "pinyin": "Laocheng"
    },
    {
        "id": "410303",
        "name": "西工区",
        "parentId": "410300",
        "shortName": "西工",
        "letter": "X",
        "cityCode": "0379",
        "pinyin": "Xigong"
    },
    {
        "id": "410304",
        "name": "瀍河回族区",
        "parentId": "410300",
        "shortName": "瀍河",
        "letter": "C",
        "cityCode": "0379",
        "pinyin": "Chanhe"
    },
    {
        "id": "410305",
        "name": "涧西区",
        "parentId": "410300",
        "shortName": "涧西",
        "letter": "J",
        "cityCode": "0379",
        "pinyin": "Jianxi"
    },
    {
        "id": "410306",
        "name": "吉利区",
        "parentId": "410300",
        "shortName": "吉利",
        "letter": "J",
        "cityCode": "0379",
        "pinyin": "Jili"
    },
    {
        "id": "410311",
        "name": "洛龙区",
        "parentId": "410300",
        "shortName": "洛龙",
        "letter": "L",
        "cityCode": "0379",
        "pinyin": "Luolong"
    },
    {
        "id": "410322",
        "name": "孟津县",
        "parentId": "410300",
        "shortName": "孟津",
        "letter": "M",
        "cityCode": "0379",
        "pinyin": "Mengjin"
    },
    {
        "id": "410323",
        "name": "新安县",
        "parentId": "410300",
        "shortName": "新安",
        "letter": "X",
        "cityCode": "0379",
        "pinyin": "Xin'an"
    },
    {
        "id": "410324",
        "name": "栾川县",
        "parentId": "410300",
        "shortName": "栾川",
        "letter": "L",
        "cityCode": "0379",
        "pinyin": "Luanchuan"
    },
    {
        "id": "410325",
        "name": "嵩县",
        "parentId": "410300",
        "shortName": "嵩县",
        "letter": "S",
        "cityCode": "0379",
        "pinyin": "Songxian"
    },
    {
        "id": "410326",
        "name": "汝阳县",
        "parentId": "410300",
        "shortName": "汝阳",
        "letter": "R",
        "cityCode": "0379",
        "pinyin": "Ruyang"
    },
    {
        "id": "410327",
        "name": "宜阳县",
        "parentId": "410300",
        "shortName": "宜阳",
        "letter": "Y",
        "cityCode": "0379",
        "pinyin": "Yiyang"
    },
    {
        "id": "410328",
        "name": "洛宁县",
        "parentId": "410300",
        "shortName": "洛宁",
        "letter": "L",
        "cityCode": "0379",
        "pinyin": "Luoning"
    },
    {
        "id": "410329",
        "name": "伊川县",
        "parentId": "410300",
        "shortName": "伊川",
        "letter": "Y",
        "cityCode": "0379",
        "pinyin": "Yichuan"
    },
    {
        "id": "410381",
        "name": "偃师市",
        "parentId": "410300",
        "shortName": "偃师",
        "letter": "Y",
        "cityCode": "0379",
        "pinyin": "Yanshi"
    },
    {
        "id": "410400",
        "name": "平顶山市",
        "parentId": "410000",
        "shortName": "平顶山",
        "letter": "P",
        "cityCode": "0375",
        "pinyin": "Pingdingshan"
    },
    {
        "id": "410402",
        "name": "新华区",
        "parentId": "410400",
        "shortName": "新华",
        "letter": "X",
        "cityCode": "0375",
        "pinyin": "Xinhua"
    },
    {
        "id": "410403",
        "name": "卫东区",
        "parentId": "410400",
        "shortName": "卫东",
        "letter": "W",
        "cityCode": "0375",
        "pinyin": "Weidong"
    },
    {
        "id": "410404",
        "name": "石龙区",
        "parentId": "410400",
        "shortName": "石龙",
        "letter": "S",
        "cityCode": "0375",
        "pinyin": "Shilong"
    },
    {
        "id": "410411",
        "name": "湛河区",
        "parentId": "410400",
        "shortName": "湛河",
        "letter": "Z",
        "cityCode": "0375",
        "pinyin": "Zhanhe"
    },
    {
        "id": "410421",
        "name": "宝丰县",
        "parentId": "410400",
        "shortName": "宝丰",
        "letter": "B",
        "cityCode": "0375",
        "pinyin": "Baofeng"
    },
    {
        "id": "410422",
        "name": "叶县",
        "parentId": "410400",
        "shortName": "叶县",
        "letter": "Y",
        "cityCode": "0375",
        "pinyin": "Yexian"
    },
    {
        "id": "410423",
        "name": "鲁山县",
        "parentId": "410400",
        "shortName": "鲁山",
        "letter": "L",
        "cityCode": "0375",
        "pinyin": "Lushan"
    },
    {
        "id": "410425",
        "name": "郏县",
        "parentId": "410400",
        "shortName": "郏县",
        "letter": "J",
        "cityCode": "0375",
        "pinyin": "Jiaxian"
    },
    {
        "id": "410481",
        "name": "舞钢市",
        "parentId": "410400",
        "shortName": "舞钢",
        "letter": "W",
        "cityCode": "0375",
        "pinyin": "Wugang"
    },
    {
        "id": "410482",
        "name": "汝州市",
        "parentId": "410400",
        "shortName": "汝州",
        "letter": "R",
        "cityCode": "0375",
        "pinyin": "Ruzhou"
    },
    {
        "id": "410500",
        "name": "安阳市",
        "parentId": "410000",
        "shortName": "安阳",
        "letter": "A",
        "cityCode": "0372",
        "pinyin": "Anyang"
    },
    {
        "id": "410502",
        "name": "文峰区",
        "parentId": "410500",
        "shortName": "文峰",
        "letter": "W",
        "cityCode": "0372",
        "pinyin": "Wenfeng"
    },
    {
        "id": "410503",
        "name": "北关区",
        "parentId": "410500",
        "shortName": "北关",
        "letter": "B",
        "cityCode": "0372",
        "pinyin": "Beiguan"
    },
    {
        "id": "410505",
        "name": "殷都区",
        "parentId": "410500",
        "shortName": "殷都",
        "letter": "Y",
        "cityCode": "0372",
        "pinyin": "Yindu"
    },
    {
        "id": "410506",
        "name": "龙安区",
        "parentId": "410500",
        "shortName": "龙安",
        "letter": "L",
        "cityCode": "0372",
        "pinyin": "Long'an"
    },
    {
        "id": "410522",
        "name": "安阳县",
        "parentId": "410500",
        "shortName": "安阳",
        "letter": "A",
        "cityCode": "0372",
        "pinyin": "Anyang"
    },
    {
        "id": "410523",
        "name": "汤阴县",
        "parentId": "410500",
        "shortName": "汤阴",
        "letter": "T",
        "cityCode": "0372",
        "pinyin": "Tangyin"
    },
    {
        "id": "410526",
        "name": "滑县",
        "parentId": "410500",
        "shortName": "滑县",
        "letter": "H",
        "cityCode": "0372",
        "pinyin": "Huaxian"
    },
    {
        "id": "410527",
        "name": "内黄县",
        "parentId": "410500",
        "shortName": "内黄",
        "letter": "N",
        "cityCode": "0372",
        "pinyin": "Neihuang"
    },
    {
        "id": "410581",
        "name": "林州市",
        "parentId": "410500",
        "shortName": "林州",
        "letter": "L",
        "cityCode": "0372",
        "pinyin": "Linzhou"
    },
    {
        "id": "410600",
        "name": "鹤壁市",
        "parentId": "410000",
        "shortName": "鹤壁",
        "letter": "H",
        "cityCode": "0392",
        "pinyin": "Hebi"
    },
    {
        "id": "410602",
        "name": "鹤山区",
        "parentId": "410600",
        "shortName": "鹤山",
        "letter": "H",
        "cityCode": "0392",
        "pinyin": "Heshan"
    },
    {
        "id": "410603",
        "name": "山城区",
        "parentId": "410600",
        "shortName": "山城",
        "letter": "S",
        "cityCode": "0392",
        "pinyin": "Shancheng"
    },
    {
        "id": "410611",
        "name": "淇滨区",
        "parentId": "410600",
        "shortName": "淇滨",
        "letter": "Q",
        "cityCode": "0392",
        "pinyin": "Qibin"
    },
    {
        "id": "410621",
        "name": "浚县",
        "parentId": "410600",
        "shortName": "浚县",
        "letter": "X",
        "cityCode": "0392",
        "pinyin": "Xunxian"
    },
    {
        "id": "410622",
        "name": "淇县",
        "parentId": "410600",
        "shortName": "淇县",
        "letter": "Q",
        "cityCode": "0392",
        "pinyin": "Qixian"
    },
    {
        "id": "410700",
        "name": "新乡市",
        "parentId": "410000",
        "shortName": "新乡",
        "letter": "X",
        "cityCode": "0373",
        "pinyin": "Xinxiang"
    },
    {
        "id": "410702",
        "name": "红旗区",
        "parentId": "410700",
        "shortName": "红旗",
        "letter": "H",
        "cityCode": "0373",
        "pinyin": "Hongqi"
    },
    {
        "id": "410703",
        "name": "卫滨区",
        "parentId": "410700",
        "shortName": "卫滨",
        "letter": "W",
        "cityCode": "0373",
        "pinyin": "Weibin"
    },
    {
        "id": "410704",
        "name": "凤泉区",
        "parentId": "410700",
        "shortName": "凤泉",
        "letter": "F",
        "cityCode": "0373",
        "pinyin": "Fengquan"
    },
    {
        "id": "410711",
        "name": "牧野区",
        "parentId": "410700",
        "shortName": "牧野",
        "letter": "M",
        "cityCode": "0373",
        "pinyin": "Muye"
    },
    {
        "id": "410721",
        "name": "新乡县",
        "parentId": "410700",
        "shortName": "新乡",
        "letter": "X",
        "cityCode": "0373",
        "pinyin": "Xinxiang"
    },
    {
        "id": "410724",
        "name": "获嘉县",
        "parentId": "410700",
        "shortName": "获嘉",
        "letter": "H",
        "cityCode": "0373",
        "pinyin": "Huojia"
    },
    {
        "id": "410725",
        "name": "原阳县",
        "parentId": "410700",
        "shortName": "原阳",
        "letter": "Y",
        "cityCode": "0373",
        "pinyin": "Yuanyang"
    },
    {
        "id": "410726",
        "name": "延津县",
        "parentId": "410700",
        "shortName": "延津",
        "letter": "Y",
        "cityCode": "0373",
        "pinyin": "Yanjin"
    },
    {
        "id": "410727",
        "name": "封丘县",
        "parentId": "410700",
        "shortName": "封丘",
        "letter": "F",
        "cityCode": "0373",
        "pinyin": "Fengqiu"
    },
    {
        "id": "410728",
        "name": "长垣县",
        "parentId": "410700",
        "shortName": "长垣",
        "letter": "C",
        "cityCode": "0373",
        "pinyin": "Changyuan"
    },
    {
        "id": "410781",
        "name": "卫辉市",
        "parentId": "410700",
        "shortName": "卫辉",
        "letter": "W",
        "cityCode": "0373",
        "pinyin": "Weihui"
    },
    {
        "id": "410782",
        "name": "辉县市",
        "parentId": "410700",
        "shortName": "辉县",
        "letter": "H",
        "cityCode": "0373",
        "pinyin": "Huixian"
    },
    {
        "id": "410800",
        "name": "焦作市",
        "parentId": "410000",
        "shortName": "焦作",
        "letter": "J",
        "cityCode": "0391",
        "pinyin": "Jiaozuo"
    },
    {
        "id": "410802",
        "name": "解放区",
        "parentId": "410800",
        "shortName": "解放",
        "letter": "J",
        "cityCode": "0391",
        "pinyin": "Jiefang"
    },
    {
        "id": "410803",
        "name": "中站区",
        "parentId": "410800",
        "shortName": "中站",
        "letter": "Z",
        "cityCode": "0391",
        "pinyin": "Zhongzhan"
    },
    {
        "id": "410804",
        "name": "马村区",
        "parentId": "410800",
        "shortName": "马村",
        "letter": "M",
        "cityCode": "0391",
        "pinyin": "Macun"
    },
    {
        "id": "410811",
        "name": "山阳区",
        "parentId": "410800",
        "shortName": "山阳",
        "letter": "S",
        "cityCode": "0391",
        "pinyin": "Shanyang"
    },
    {
        "id": "410821",
        "name": "修武县",
        "parentId": "410800",
        "shortName": "修武",
        "letter": "X",
        "cityCode": "0391",
        "pinyin": "Xiuwu"
    },
    {
        "id": "410822",
        "name": "博爱县",
        "parentId": "410800",
        "shortName": "博爱",
        "letter": "B",
        "cityCode": "0391",
        "pinyin": "Boai"
    },
    {
        "id": "410823",
        "name": "武陟县",
        "parentId": "410800",
        "shortName": "武陟",
        "letter": "W",
        "cityCode": "0391",
        "pinyin": "Wuzhi"
    },
    {
        "id": "410825",
        "name": "温县",
        "parentId": "410800",
        "shortName": "温县",
        "letter": "W",
        "cityCode": "0391",
        "pinyin": "Wenxian"
    },
    {
        "id": "410882",
        "name": "沁阳市",
        "parentId": "410800",
        "shortName": "沁阳",
        "letter": "Q",
        "cityCode": "0391",
        "pinyin": "Qinyang"
    },
    {
        "id": "410883",
        "name": "孟州市",
        "parentId": "410800",
        "shortName": "孟州",
        "letter": "M",
        "cityCode": "0391",
        "pinyin": "Mengzhou"
    },
    {
        "id": "410900",
        "name": "濮阳市",
        "parentId": "410000",
        "shortName": "濮阳",
        "letter": "P",
        "cityCode": "0393",
        "pinyin": "Puyang"
    },
    {
        "id": "410902",
        "name": "华龙区",
        "parentId": "410900",
        "shortName": "华龙",
        "letter": "H",
        "cityCode": "0393",
        "pinyin": "Hualong"
    },
    {
        "id": "410922",
        "name": "清丰县",
        "parentId": "410900",
        "shortName": "清丰",
        "letter": "Q",
        "cityCode": "0393",
        "pinyin": "Qingfeng"
    },
    {
        "id": "410923",
        "name": "南乐县",
        "parentId": "410900",
        "shortName": "南乐",
        "letter": "N",
        "cityCode": "0393",
        "pinyin": "Nanle"
    },
    {
        "id": "410926",
        "name": "范县",
        "parentId": "410900",
        "shortName": "范县",
        "letter": "F",
        "cityCode": "0393",
        "pinyin": "Fanxian"
    },
    {
        "id": "410927",
        "name": "台前县",
        "parentId": "410900",
        "shortName": "台前",
        "letter": "T",
        "cityCode": "0393",
        "pinyin": "Taiqian"
    },
    {
        "id": "410928",
        "name": "濮阳县",
        "parentId": "410900",
        "shortName": "濮阳",
        "letter": "P",
        "cityCode": "0393",
        "pinyin": "Puyang"
    },
    {
        "id": "411000",
        "name": "许昌市",
        "parentId": "410000",
        "shortName": "许昌",
        "letter": "X",
        "cityCode": "0374",
        "pinyin": "Xuchang"
    },
    {
        "id": "411002",
        "name": "魏都区",
        "parentId": "411000",
        "shortName": "魏都",
        "letter": "W",
        "cityCode": "0374",
        "pinyin": "Weidu"
    },
    {
        "id": "411023",
        "name": "许昌县",
        "parentId": "411000",
        "shortName": "许昌",
        "letter": "X",
        "cityCode": "0374",
        "pinyin": "Xuchang"
    },
    {
        "id": "411024",
        "name": "鄢陵县",
        "parentId": "411000",
        "shortName": "鄢陵",
        "letter": "Y",
        "cityCode": "0374",
        "pinyin": "Yanling"
    },
    {
        "id": "411025",
        "name": "襄城县",
        "parentId": "411000",
        "shortName": "襄城",
        "letter": "X",
        "cityCode": "0374",
        "pinyin": "Xiangcheng"
    },
    {
        "id": "411081",
        "name": "禹州市",
        "parentId": "411000",
        "shortName": "禹州",
        "letter": "Y",
        "cityCode": "0374",
        "pinyin": "Yuzhou"
    },
    {
        "id": "411082",
        "name": "长葛市",
        "parentId": "411000",
        "shortName": "长葛",
        "letter": "C",
        "cityCode": "0374",
        "pinyin": "Changge"
    },
    {
        "id": "411100",
        "name": "漯河市",
        "parentId": "410000",
        "shortName": "漯河",
        "letter": "L",
        "cityCode": "0395",
        "pinyin": "Luohe"
    },
    {
        "id": "411102",
        "name": "源汇区",
        "parentId": "411100",
        "shortName": "源汇",
        "letter": "Y",
        "cityCode": "0395",
        "pinyin": "Yuanhui"
    },
    {
        "id": "411103",
        "name": "郾城区",
        "parentId": "411100",
        "shortName": "郾城",
        "letter": "Y",
        "cityCode": "0395",
        "pinyin": "Yancheng"
    },
    {
        "id": "411104",
        "name": "召陵区",
        "parentId": "411100",
        "shortName": "召陵",
        "letter": "Z",
        "cityCode": "0395",
        "pinyin": "Zhaoling"
    },
    {
        "id": "411121",
        "name": "舞阳县",
        "parentId": "411100",
        "shortName": "舞阳",
        "letter": "W",
        "cityCode": "0395",
        "pinyin": "Wuyang"
    },
    {
        "id": "411122",
        "name": "临颍县",
        "parentId": "411100",
        "shortName": "临颍",
        "letter": "L",
        "cityCode": "0395",
        "pinyin": "Linying"
    },
    {
        "id": "411200",
        "name": "三门峡市",
        "parentId": "410000",
        "shortName": "三门峡",
        "letter": "S",
        "cityCode": "0398",
        "pinyin": "Sanmenxia"
    },
    {
        "id": "411202",
        "name": "湖滨区",
        "parentId": "411200",
        "shortName": "湖滨",
        "letter": "H",
        "cityCode": "0398",
        "pinyin": "Hubin"
    },
    {
        "id": "411221",
        "name": "渑池县",
        "parentId": "411200",
        "shortName": "渑池",
        "letter": "M",
        "cityCode": "0398",
        "pinyin": "Mianchi"
    },
    {
        "id": "411222",
        "name": "陕县",
        "parentId": "411200",
        "shortName": "陕县",
        "letter": "S",
        "cityCode": "0398",
        "pinyin": "Shanxian"
    },
    {
        "id": "411224",
        "name": "卢氏县",
        "parentId": "411200",
        "shortName": "卢氏",
        "letter": "L",
        "cityCode": "0398",
        "pinyin": "Lushi"
    },
    {
        "id": "411281",
        "name": "义马市",
        "parentId": "411200",
        "shortName": "义马",
        "letter": "Y",
        "cityCode": "0398",
        "pinyin": "Yima"
    },
    {
        "id": "411282",
        "name": "灵宝市",
        "parentId": "411200",
        "shortName": "灵宝",
        "letter": "L",
        "cityCode": "0398",
        "pinyin": "Lingbao"
    },
    {
        "id": "411300",
        "name": "南阳市",
        "parentId": "410000",
        "shortName": "南阳",
        "letter": "N",
        "cityCode": "0377",
        "pinyin": "Nanyang"
    },
    {
        "id": "411302",
        "name": "宛城区",
        "parentId": "411300",
        "shortName": "宛城",
        "letter": "W",
        "cityCode": "0377",
        "pinyin": "Wancheng"
    },
    {
        "id": "411303",
        "name": "卧龙区",
        "parentId": "411300",
        "shortName": "卧龙",
        "letter": "W",
        "cityCode": "0377",
        "pinyin": "Wolong"
    },
    {
        "id": "411321",
        "name": "南召县",
        "parentId": "411300",
        "shortName": "南召",
        "letter": "N",
        "cityCode": "0377",
        "pinyin": "Nanzhao"
    },
    {
        "id": "411322",
        "name": "方城县",
        "parentId": "411300",
        "shortName": "方城",
        "letter": "F",
        "cityCode": "0377",
        "pinyin": "Fangcheng"
    },
    {
        "id": "411323",
        "name": "西峡县",
        "parentId": "411300",
        "shortName": "西峡",
        "letter": "X",
        "cityCode": "0377",
        "pinyin": "Xixia"
    },
    {
        "id": "411324",
        "name": "镇平县",
        "parentId": "411300",
        "shortName": "镇平",
        "letter": "Z",
        "cityCode": "0377",
        "pinyin": "Zhenping"
    },
    {
        "id": "411325",
        "name": "内乡县",
        "parentId": "411300",
        "shortName": "内乡",
        "letter": "N",
        "cityCode": "0377",
        "pinyin": "Neixiang"
    },
    {
        "id": "411326",
        "name": "淅川县",
        "parentId": "411300",
        "shortName": "淅川",
        "letter": "X",
        "cityCode": "0377",
        "pinyin": "Xichuan"
    },
    {
        "id": "411327",
        "name": "社旗县",
        "parentId": "411300",
        "shortName": "社旗",
        "letter": "S",
        "cityCode": "0377",
        "pinyin": "Sheqi"
    },
    {
        "id": "411328",
        "name": "唐河县",
        "parentId": "411300",
        "shortName": "唐河",
        "letter": "T",
        "cityCode": "0377",
        "pinyin": "Tanghe"
    },
    {
        "id": "411329",
        "name": "新野县",
        "parentId": "411300",
        "shortName": "新野",
        "letter": "X",
        "cityCode": "0377",
        "pinyin": "Xinye"
    },
    {
        "id": "411330",
        "name": "桐柏县",
        "parentId": "411300",
        "shortName": "桐柏",
        "letter": "T",
        "cityCode": "0377",
        "pinyin": "Tongbai"
    },
    {
        "id": "411381",
        "name": "邓州市",
        "parentId": "411300",
        "shortName": "邓州",
        "letter": "D",
        "cityCode": "0377",
        "pinyin": "Dengzhou"
    },
    {
        "id": "411400",
        "name": "商丘市",
        "parentId": "410000",
        "shortName": "商丘",
        "letter": "S",
        "cityCode": "0370",
        "pinyin": "Shangqiu"
    },
    {
        "id": "411402",
        "name": "梁园区",
        "parentId": "411400",
        "shortName": "梁园",
        "letter": "L",
        "cityCode": "0370",
        "pinyin": "Liangyuan"
    },
    {
        "id": "411403",
        "name": "睢阳区",
        "parentId": "411400",
        "shortName": "睢阳",
        "letter": "S",
        "cityCode": "0370",
        "pinyin": "Suiyang"
    },
    {
        "id": "411421",
        "name": "民权县",
        "parentId": "411400",
        "shortName": "民权",
        "letter": "M",
        "cityCode": "0370",
        "pinyin": "Minquan"
    },
    {
        "id": "411422",
        "name": "睢县",
        "parentId": "411400",
        "shortName": "睢县",
        "letter": "S",
        "cityCode": "0370",
        "pinyin": "Suixian"
    },
    {
        "id": "411423",
        "name": "宁陵县",
        "parentId": "411400",
        "shortName": "宁陵",
        "letter": "N",
        "cityCode": "0370",
        "pinyin": "Ningling"
    },
    {
        "id": "411424",
        "name": "柘城县",
        "parentId": "411400",
        "shortName": "柘城",
        "letter": "Z",
        "cityCode": "0370",
        "pinyin": "Zhecheng"
    },
    {
        "id": "411425",
        "name": "虞城县",
        "parentId": "411400",
        "shortName": "虞城",
        "letter": "Y",
        "cityCode": "0370",
        "pinyin": "Yucheng"
    },
    {
        "id": "411426",
        "name": "夏邑县",
        "parentId": "411400",
        "shortName": "夏邑",
        "letter": "X",
        "cityCode": "0370",
        "pinyin": "Xiayi"
    },
    {
        "id": "411481",
        "name": "永城市",
        "parentId": "411400",
        "shortName": "永城",
        "letter": "Y",
        "cityCode": "0370",
        "pinyin": "Yongcheng"
    },
    {
        "id": "411500",
        "name": "信阳市",
        "parentId": "410000",
        "shortName": "信阳",
        "letter": "X",
        "cityCode": "0376",
        "pinyin": "Xinyang"
    },
    {
        "id": "411502",
        "name": "浉河区",
        "parentId": "411500",
        "shortName": "浉河",
        "letter": "S",
        "cityCode": "0376",
        "pinyin": "Shihe"
    },
    {
        "id": "411503",
        "name": "平桥区",
        "parentId": "411500",
        "shortName": "平桥",
        "letter": "P",
        "cityCode": "0376",
        "pinyin": "Pingqiao"
    },
    {
        "id": "411521",
        "name": "罗山县",
        "parentId": "411500",
        "shortName": "罗山",
        "letter": "L",
        "cityCode": "0376",
        "pinyin": "Luoshan"
    },
    {
        "id": "411522",
        "name": "光山县",
        "parentId": "411500",
        "shortName": "光山",
        "letter": "G",
        "cityCode": "0376",
        "pinyin": "Guangshan"
    },
    {
        "id": "411523",
        "name": "新县",
        "parentId": "411500",
        "shortName": "新县",
        "letter": "X",
        "cityCode": "0376",
        "pinyin": "Xinxian"
    },
    {
        "id": "411524",
        "name": "商城县",
        "parentId": "411500",
        "shortName": "商城",
        "letter": "S",
        "cityCode": "0376",
        "pinyin": "Shangcheng"
    },
    {
        "id": "411525",
        "name": "固始县",
        "parentId": "411500",
        "shortName": "固始",
        "letter": "G",
        "cityCode": "0376",
        "pinyin": "Gushi"
    },
    {
        "id": "411526",
        "name": "潢川县",
        "parentId": "411500",
        "shortName": "潢川",
        "letter": "H",
        "cityCode": "0376",
        "pinyin": "Huangchuan"
    },
    {
        "id": "411527",
        "name": "淮滨县",
        "parentId": "411500",
        "shortName": "淮滨",
        "letter": "H",
        "cityCode": "0376",
        "pinyin": "Huaibin"
    },
    {
        "id": "411528",
        "name": "息县",
        "parentId": "411500",
        "shortName": "息县",
        "letter": "X",
        "cityCode": "0376",
        "pinyin": "Xixian"
    },
    {
        "id": "411600",
        "name": "周口市",
        "parentId": "410000",
        "shortName": "周口",
        "letter": "Z",
        "cityCode": "0394",
        "pinyin": "Zhoukou"
    },
    {
        "id": "411602",
        "name": "川汇区",
        "parentId": "411600",
        "shortName": "川汇",
        "letter": "C",
        "cityCode": "0394",
        "pinyin": "Chuanhui"
    },
    {
        "id": "411621",
        "name": "扶沟县",
        "parentId": "411600",
        "shortName": "扶沟",
        "letter": "F",
        "cityCode": "0394",
        "pinyin": "Fugou"
    },
    {
        "id": "411622",
        "name": "西华县",
        "parentId": "411600",
        "shortName": "西华",
        "letter": "X",
        "cityCode": "0394",
        "pinyin": "Xihua"
    },
    {
        "id": "411623",
        "name": "商水县",
        "parentId": "411600",
        "shortName": "商水",
        "letter": "S",
        "cityCode": "0394",
        "pinyin": "Shangshui"
    },
    {
        "id": "411624",
        "name": "沈丘县",
        "parentId": "411600",
        "shortName": "沈丘",
        "letter": "S",
        "cityCode": "0394",
        "pinyin": "Shenqiu"
    },
    {
        "id": "411625",
        "name": "郸城县",
        "parentId": "411600",
        "shortName": "郸城",
        "letter": "D",
        "cityCode": "0394",
        "pinyin": "Dancheng"
    },
    {
        "id": "411626",
        "name": "淮阳县",
        "parentId": "411600",
        "shortName": "淮阳",
        "letter": "H",
        "cityCode": "0394",
        "pinyin": "Huaiyang"
    },
    {
        "id": "411627",
        "name": "太康县",
        "parentId": "411600",
        "shortName": "太康",
        "letter": "T",
        "cityCode": "0394",
        "pinyin": "Taikang"
    },
    {
        "id": "411628",
        "name": "鹿邑县",
        "parentId": "411600",
        "shortName": "鹿邑",
        "letter": "L",
        "cityCode": "0394",
        "pinyin": "Luyi"
    },
    {
        "id": "411681",
        "name": "项城市",
        "parentId": "411600",
        "shortName": "项城",
        "letter": "X",
        "cityCode": "0394",
        "pinyin": "Xiangcheng"
    },
    {
        "id": "411700",
        "name": "驻马店市",
        "parentId": "410000",
        "shortName": "驻马店",
        "letter": "Z",
        "cityCode": "0396",
        "pinyin": "Zhumadian"
    },
    {
        "id": "411702",
        "name": "驿城区",
        "parentId": "411700",
        "shortName": "驿城",
        "letter": "Y",
        "cityCode": "0396",
        "pinyin": "Yicheng"
    },
    {
        "id": "411721",
        "name": "西平县",
        "parentId": "411700",
        "shortName": "西平",
        "letter": "X",
        "cityCode": "0396",
        "pinyin": "Xiping"
    },
    {
        "id": "411722",
        "name": "上蔡县",
        "parentId": "411700",
        "shortName": "上蔡",
        "letter": "S",
        "cityCode": "0396",
        "pinyin": "Shangcai"
    },
    {
        "id": "411723",
        "name": "平舆县",
        "parentId": "411700",
        "shortName": "平舆",
        "letter": "P",
        "cityCode": "0396",
        "pinyin": "Pingyu"
    },
    {
        "id": "411724",
        "name": "正阳县",
        "parentId": "411700",
        "shortName": "正阳",
        "letter": "Z",
        "cityCode": "0396",
        "pinyin": "Zhengyang"
    },
    {
        "id": "411725",
        "name": "确山县",
        "parentId": "411700",
        "shortName": "确山",
        "letter": "Q",
        "cityCode": "0396",
        "pinyin": "Queshan"
    },
    {
        "id": "411726",
        "name": "泌阳县",
        "parentId": "411700",
        "shortName": "泌阳",
        "letter": "B",
        "cityCode": "0396",
        "pinyin": "Biyang"
    },
    {
        "id": "411727",
        "name": "汝南县",
        "parentId": "411700",
        "shortName": "汝南",
        "letter": "R",
        "cityCode": "0396",
        "pinyin": "Runan"
    },
    {
        "id": "411728",
        "name": "遂平县",
        "parentId": "411700",
        "shortName": "遂平",
        "letter": "S",
        "cityCode": "0396",
        "pinyin": "Suiping"
    },
    {
        "id": "411729",
        "name": "新蔡县",
        "parentId": "411700",
        "shortName": "新蔡",
        "letter": "X",
        "cityCode": "0396",
        "pinyin": "Xincai"
    },
    {
        "id": "419000",
        "name": "直辖县级",
        "parentId": "410000",
        "shortName": "直辖县",
        "letter": "",
        "cityCode": "",
        "pinyin": ""
    },
    {
        "id": "419001",
        "name": "济源市",
        "parentId": "419000",
        "shortName": "济源",
        "letter": "J",
        "cityCode": "0391",
        "pinyin": "Jiyuan"
    },
    {
        "id": "420000",
        "name": "湖北省",
        "parentId": "100000",
        "shortName": "湖北",
        "letter": "H",
        "cityCode": "",
        "pinyin": "Hubei"
    },
    {
        "id": "420100",
        "name": "武汉市",
        "parentId": "420000",
        "shortName": "武汉",
        "letter": "W",
        "cityCode": "",
        "pinyin": "Wuhan"
    },
    {
        "id": "420102",
        "name": "江岸区",
        "parentId": "420100",
        "shortName": "江岸",
        "letter": "J",
        "cityCode": "027",
        "pinyin": "Jiang'an"
    },
    {
        "id": "420103",
        "name": "江汉区",
        "parentId": "420100",
        "shortName": "江汉",
        "letter": "J",
        "cityCode": "027",
        "pinyin": "Jianghan"
    },
    {
        "id": "420104",
        "name": "硚口区",
        "parentId": "420100",
        "shortName": "硚口",
        "letter": "Q",
        "cityCode": "027",
        "pinyin": "Qiaokou"
    },
    {
        "id": "420105",
        "name": "汉阳区",
        "parentId": "420100",
        "shortName": "汉阳",
        "letter": "H",
        "cityCode": "027",
        "pinyin": "Hanyang"
    },
    {
        "id": "420106",
        "name": "武昌区",
        "parentId": "420100",
        "shortName": "武昌",
        "letter": "W",
        "cityCode": "027",
        "pinyin": "Wuchang"
    },
    {
        "id": "420107",
        "name": "青山区",
        "parentId": "420100",
        "shortName": "青山",
        "letter": "Q",
        "cityCode": "027",
        "pinyin": "Qingshan"
    },
    {
        "id": "420111",
        "name": "洪山区",
        "parentId": "420100",
        "shortName": "洪山",
        "letter": "H",
        "cityCode": "027",
        "pinyin": "Hongshan"
    },
    {
        "id": "420112",
        "name": "东西湖区",
        "parentId": "420100",
        "shortName": "东西湖",
        "letter": "D",
        "cityCode": "027",
        "pinyin": "Dongxihu"
    },
    {
        "id": "420113",
        "name": "汉南区",
        "parentId": "420100",
        "shortName": "汉南",
        "letter": "H",
        "cityCode": "027",
        "pinyin": "Hannan"
    },
    {
        "id": "420114",
        "name": "蔡甸区",
        "parentId": "420100",
        "shortName": "蔡甸",
        "letter": "C",
        "cityCode": "027",
        "pinyin": "Caidian"
    },
    {
        "id": "420115",
        "name": "江夏区",
        "parentId": "420100",
        "shortName": "江夏",
        "letter": "J",
        "cityCode": "027",
        "pinyin": "Jiangxia"
    },
    {
        "id": "420116",
        "name": "黄陂区",
        "parentId": "420100",
        "shortName": "黄陂",
        "letter": "H",
        "cityCode": "027",
        "pinyin": "Huangpi"
    },
    {
        "id": "420117",
        "name": "新洲区",
        "parentId": "420100",
        "shortName": "新洲",
        "letter": "X",
        "cityCode": "027",
        "pinyin": "Xinzhou"
    },
    {
        "id": "420200",
        "name": "黄石市",
        "parentId": "420000",
        "shortName": "黄石",
        "letter": "H",
        "cityCode": "0714",
        "pinyin": "Huangshi"
    },
    {
        "id": "420202",
        "name": "黄石港区",
        "parentId": "420200",
        "shortName": "黄石港",
        "letter": "H",
        "cityCode": "0714",
        "pinyin": "Huangshigang"
    },
    {
        "id": "420203",
        "name": "西塞山区",
        "parentId": "420200",
        "shortName": "西塞山",
        "letter": "X",
        "cityCode": "0714",
        "pinyin": "Xisaishan"
    },
    {
        "id": "420204",
        "name": "下陆区",
        "parentId": "420200",
        "shortName": "下陆",
        "letter": "X",
        "cityCode": "0714",
        "pinyin": "Xialu"
    },
    {
        "id": "420205",
        "name": "铁山区",
        "parentId": "420200",
        "shortName": "铁山",
        "letter": "T",
        "cityCode": "0714",
        "pinyin": "Tieshan"
    },
    {
        "id": "420222",
        "name": "阳新县",
        "parentId": "420200",
        "shortName": "阳新",
        "letter": "Y",
        "cityCode": "0714",
        "pinyin": "Yangxin"
    },
    {
        "id": "420281",
        "name": "大冶市",
        "parentId": "420200",
        "shortName": "大冶",
        "letter": "D",
        "cityCode": "0714",
        "pinyin": "Daye"
    },
    {
        "id": "420300",
        "name": "十堰市",
        "parentId": "420000",
        "shortName": "十堰",
        "letter": "S",
        "cityCode": "0719",
        "pinyin": "Shiyan"
    },
    {
        "id": "420302",
        "name": "茅箭区",
        "parentId": "420300",
        "shortName": "茅箭",
        "letter": "M",
        "cityCode": "0719",
        "pinyin": "Maojian"
    },
    {
        "id": "420303",
        "name": "张湾区",
        "parentId": "420300",
        "shortName": "张湾",
        "letter": "Z",
        "cityCode": "0719",
        "pinyin": "Zhangwan"
    },
    {
        "id": "420304",
        "name": "郧阳区",
        "parentId": "420300",
        "shortName": "郧阳",
        "letter": "Y",
        "cityCode": "0719",
        "pinyin": "Yunyang"
    },
    {
        "id": "420322",
        "name": "郧西县",
        "parentId": "420300",
        "shortName": "郧西",
        "letter": "Y",
        "cityCode": "0719",
        "pinyin": "Yunxi"
    },
    {
        "id": "420323",
        "name": "竹山县",
        "parentId": "420300",
        "shortName": "竹山",
        "letter": "Z",
        "cityCode": "0719",
        "pinyin": "Zhushan"
    },
    {
        "id": "420324",
        "name": "竹溪县",
        "parentId": "420300",
        "shortName": "竹溪",
        "letter": "Z",
        "cityCode": "0719",
        "pinyin": "Zhuxi"
    },
    {
        "id": "420325",
        "name": "房县",
        "parentId": "420300",
        "shortName": "房县",
        "letter": "F",
        "cityCode": "0719",
        "pinyin": "Fangxian"
    },
    {
        "id": "420381",
        "name": "丹江口市",
        "parentId": "420300",
        "shortName": "丹江口",
        "letter": "D",
        "cityCode": "0719",
        "pinyin": "Danjiangkou"
    },
    {
        "id": "420500",
        "name": "宜昌市",
        "parentId": "420000",
        "shortName": "宜昌",
        "letter": "Y",
        "cityCode": "0717",
        "pinyin": "Yichang"
    },
    {
        "id": "420502",
        "name": "西陵区",
        "parentId": "420500",
        "shortName": "西陵",
        "letter": "X",
        "cityCode": "0717",
        "pinyin": "Xiling"
    },
    {
        "id": "420503",
        "name": "伍家岗区",
        "parentId": "420500",
        "shortName": "伍家岗",
        "letter": "W",
        "cityCode": "0717",
        "pinyin": "Wujiagang"
    },
    {
        "id": "420504",
        "name": "点军区",
        "parentId": "420500",
        "shortName": "点军",
        "letter": "D",
        "cityCode": "0717",
        "pinyin": "Dianjun"
    },
    {
        "id": "420505",
        "name": "猇亭区",
        "parentId": "420500",
        "shortName": "猇亭",
        "letter": "X",
        "cityCode": "0717",
        "pinyin": "Xiaoting"
    },
    {
        "id": "420506",
        "name": "夷陵区",
        "parentId": "420500",
        "shortName": "夷陵",
        "letter": "Y",
        "cityCode": "0717",
        "pinyin": "Yiling"
    },
    {
        "id": "420525",
        "name": "远安县",
        "parentId": "420500",
        "shortName": "远安",
        "letter": "Y",
        "cityCode": "0717",
        "pinyin": "Yuan'an"
    },
    {
        "id": "420526",
        "name": "兴山县",
        "parentId": "420500",
        "shortName": "兴山",
        "letter": "X",
        "cityCode": "0717",
        "pinyin": "Xingshan"
    },
    {
        "id": "420527",
        "name": "秭归县",
        "parentId": "420500",
        "shortName": "秭归",
        "letter": "Z",
        "cityCode": "0717",
        "pinyin": "Zigui"
    },
    {
        "id": "420528",
        "name": "长阳土家族自治县",
        "parentId": "420500",
        "shortName": "长阳",
        "letter": "C",
        "cityCode": "0717",
        "pinyin": "Changyang"
    },
    {
        "id": "420529",
        "name": "五峰土家族自治县",
        "parentId": "420500",
        "shortName": "五峰",
        "letter": "W",
        "cityCode": "0717",
        "pinyin": "Wufeng"
    },
    {
        "id": "420581",
        "name": "宜都市",
        "parentId": "420500",
        "shortName": "宜都",
        "letter": "Y",
        "cityCode": "0717",
        "pinyin": "Yidu"
    },
    {
        "id": "420582",
        "name": "当阳市",
        "parentId": "420500",
        "shortName": "当阳",
        "letter": "D",
        "cityCode": "0717",
        "pinyin": "Dangyang"
    },
    {
        "id": "420583",
        "name": "枝江市",
        "parentId": "420500",
        "shortName": "枝江",
        "letter": "Z",
        "cityCode": "0717",
        "pinyin": "Zhijiang"
    },
    {
        "id": "420600",
        "name": "襄阳市",
        "parentId": "420000",
        "shortName": "襄阳",
        "letter": "X",
        "cityCode": "0710",
        "pinyin": "Xiangyang"
    },
    {
        "id": "420602",
        "name": "襄城区",
        "parentId": "420600",
        "shortName": "襄城",
        "letter": "X",
        "cityCode": "0710",
        "pinyin": "Xiangcheng"
    },
    {
        "id": "420606",
        "name": "樊城区",
        "parentId": "420600",
        "shortName": "樊城",
        "letter": "F",
        "cityCode": "0710",
        "pinyin": "Fancheng"
    },
    {
        "id": "420607",
        "name": "襄州区",
        "parentId": "420600",
        "shortName": "襄州",
        "letter": "X",
        "cityCode": "0710",
        "pinyin": "Xiangzhou"
    },
    {
        "id": "420624",
        "name": "南漳县",
        "parentId": "420600",
        "shortName": "南漳",
        "letter": "N",
        "cityCode": "0710",
        "pinyin": "Nanzhang"
    },
    {
        "id": "420625",
        "name": "谷城县",
        "parentId": "420600",
        "shortName": "谷城",
        "letter": "G",
        "cityCode": "0710",
        "pinyin": "Gucheng"
    },
    {
        "id": "420626",
        "name": "保康县",
        "parentId": "420600",
        "shortName": "保康",
        "letter": "B",
        "cityCode": "0710",
        "pinyin": "Baokang"
    },
    {
        "id": "420682",
        "name": "老河口市",
        "parentId": "420600",
        "shortName": "老河口",
        "letter": "L",
        "cityCode": "0710",
        "pinyin": "Laohekou"
    },
    {
        "id": "420683",
        "name": "枣阳市",
        "parentId": "420600",
        "shortName": "枣阳",
        "letter": "Z",
        "cityCode": "0710",
        "pinyin": "Zaoyang"
    },
    {
        "id": "420684",
        "name": "宜城市",
        "parentId": "420600",
        "shortName": "宜城",
        "letter": "Y",
        "cityCode": "0710",
        "pinyin": "Yicheng"
    },
    {
        "id": "420700",
        "name": "鄂州市",
        "parentId": "420000",
        "shortName": "鄂州",
        "letter": "E",
        "cityCode": "0711",
        "pinyin": "Ezhou"
    },
    {
        "id": "420702",
        "name": "梁子湖区",
        "parentId": "420700",
        "shortName": "梁子湖",
        "letter": "L",
        "cityCode": "0711",
        "pinyin": "Liangzihu"
    },
    {
        "id": "420703",
        "name": "华容区",
        "parentId": "420700",
        "shortName": "华容",
        "letter": "H",
        "cityCode": "0711",
        "pinyin": "Huarong"
    },
    {
        "id": "420704",
        "name": "鄂城区",
        "parentId": "420700",
        "shortName": "鄂城",
        "letter": "E",
        "cityCode": "0711",
        "pinyin": "Echeng"
    },
    {
        "id": "420800",
        "name": "荆门市",
        "parentId": "420000",
        "shortName": "荆门",
        "letter": "J",
        "cityCode": "0724",
        "pinyin": "Jingmen"
    },
    {
        "id": "420802",
        "name": "东宝区",
        "parentId": "420800",
        "shortName": "东宝",
        "letter": "D",
        "cityCode": "0724",
        "pinyin": "Dongbao"
    },
    {
        "id": "420804",
        "name": "掇刀区",
        "parentId": "420800",
        "shortName": "掇刀",
        "letter": "D",
        "cityCode": "0724",
        "pinyin": "Duodao"
    },
    {
        "id": "420821",
        "name": "京山县",
        "parentId": "420800",
        "shortName": "京山",
        "letter": "J",
        "cityCode": "0724",
        "pinyin": "Jingshan"
    },
    {
        "id": "420822",
        "name": "沙洋县",
        "parentId": "420800",
        "shortName": "沙洋",
        "letter": "S",
        "cityCode": "0724",
        "pinyin": "Shayang"
    },
    {
        "id": "420881",
        "name": "钟祥市",
        "parentId": "420800",
        "shortName": "钟祥",
        "letter": "Z",
        "cityCode": "0724",
        "pinyin": "Zhongxiang"
    },
    {
        "id": "420900",
        "name": "孝感市",
        "parentId": "420000",
        "shortName": "孝感",
        "letter": "X",
        "cityCode": "0712",
        "pinyin": "Xiaogan"
    },
    {
        "id": "420902",
        "name": "孝南区",
        "parentId": "420900",
        "shortName": "孝南",
        "letter": "X",
        "cityCode": "0712",
        "pinyin": "Xiaonan"
    },
    {
        "id": "420921",
        "name": "孝昌县",
        "parentId": "420900",
        "shortName": "孝昌",
        "letter": "X",
        "cityCode": "0712",
        "pinyin": "Xiaochang"
    },
    {
        "id": "420922",
        "name": "大悟县",
        "parentId": "420900",
        "shortName": "大悟",
        "letter": "D",
        "cityCode": "0712",
        "pinyin": "Dawu"
    },
    {
        "id": "420923",
        "name": "云梦县",
        "parentId": "420900",
        "shortName": "云梦",
        "letter": "Y",
        "cityCode": "0712",
        "pinyin": "Yunmeng"
    },
    {
        "id": "420981",
        "name": "应城市",
        "parentId": "420900",
        "shortName": "应城",
        "letter": "Y",
        "cityCode": "0712",
        "pinyin": "Yingcheng"
    },
    {
        "id": "420982",
        "name": "安陆市",
        "parentId": "420900",
        "shortName": "安陆",
        "letter": "A",
        "cityCode": "0712",
        "pinyin": "Anlu"
    },
    {
        "id": "420984",
        "name": "汉川市",
        "parentId": "420900",
        "shortName": "汉川",
        "letter": "H",
        "cityCode": "0712",
        "pinyin": "Hanchuan"
    },
    {
        "id": "421000",
        "name": "荆州市",
        "parentId": "420000",
        "shortName": "荆州",
        "letter": "J",
        "cityCode": "0716",
        "pinyin": "Jingzhou"
    },
    {
        "id": "421002",
        "name": "沙市区",
        "parentId": "421000",
        "shortName": "沙市",
        "letter": "S",
        "cityCode": "0716",
        "pinyin": "Shashi"
    },
    {
        "id": "421003",
        "name": "荆州区",
        "parentId": "421000",
        "shortName": "荆州",
        "letter": "J",
        "cityCode": "0716",
        "pinyin": "Jingzhou"
    },
    {
        "id": "421022",
        "name": "公安县",
        "parentId": "421000",
        "shortName": "公安",
        "letter": "G",
        "cityCode": "0716",
        "pinyin": "Gong'an"
    },
    {
        "id": "421023",
        "name": "监利县",
        "parentId": "421000",
        "shortName": "监利",
        "letter": "J",
        "cityCode": "0716",
        "pinyin": "Jianli"
    },
    {
        "id": "421024",
        "name": "江陵县",
        "parentId": "421000",
        "shortName": "江陵",
        "letter": "J",
        "cityCode": "0716",
        "pinyin": "Jiangling"
    },
    {
        "id": "421081",
        "name": "石首市",
        "parentId": "421000",
        "shortName": "石首",
        "letter": "S",
        "cityCode": "0716",
        "pinyin": "Shishou"
    },
    {
        "id": "421083",
        "name": "洪湖市",
        "parentId": "421000",
        "shortName": "洪湖",
        "letter": "H",
        "cityCode": "0716",
        "pinyin": "Honghu"
    },
    {
        "id": "421087",
        "name": "松滋市",
        "parentId": "421000",
        "shortName": "松滋",
        "letter": "S",
        "cityCode": "0716",
        "pinyin": "Songzi"
    },
    {
        "id": "421100",
        "name": "黄冈市",
        "parentId": "420000",
        "shortName": "黄冈",
        "letter": "H",
        "cityCode": "0713",
        "pinyin": "Huanggang"
    },
    {
        "id": "421102",
        "name": "黄州区",
        "parentId": "421100",
        "shortName": "黄州",
        "letter": "H",
        "cityCode": "0713",
        "pinyin": "Huangzhou"
    },
    {
        "id": "421121",
        "name": "团风县",
        "parentId": "421100",
        "shortName": "团风",
        "letter": "T",
        "cityCode": "0713",
        "pinyin": "Tuanfeng"
    },
    {
        "id": "421122",
        "name": "红安县",
        "parentId": "421100",
        "shortName": "红安",
        "letter": "H",
        "cityCode": "0713",
        "pinyin": "Hong'an"
    },
    {
        "id": "421123",
        "name": "罗田县",
        "parentId": "421100",
        "shortName": "罗田",
        "letter": "L",
        "cityCode": "0713",
        "pinyin": "Luotian"
    },
    {
        "id": "421124",
        "name": "英山县",
        "parentId": "421100",
        "shortName": "英山",
        "letter": "Y",
        "cityCode": "0713",
        "pinyin": "Yingshan"
    },
    {
        "id": "421125",
        "name": "浠水县",
        "parentId": "421100",
        "shortName": "浠水",
        "letter": "X",
        "cityCode": "0713",
        "pinyin": "Xishui"
    },
    {
        "id": "421126",
        "name": "蕲春县",
        "parentId": "421100",
        "shortName": "蕲春",
        "letter": "Q",
        "cityCode": "0713",
        "pinyin": "Qichun"
    },
    {
        "id": "421127",
        "name": "黄梅县",
        "parentId": "421100",
        "shortName": "黄梅",
        "letter": "H",
        "cityCode": "0713",
        "pinyin": "Huangmei"
    },
    {
        "id": "421181",
        "name": "麻城市",
        "parentId": "421100",
        "shortName": "麻城",
        "letter": "M",
        "cityCode": "0713",
        "pinyin": "Macheng"
    },
    {
        "id": "421182",
        "name": "武穴市",
        "parentId": "421100",
        "shortName": "武穴",
        "letter": "W",
        "cityCode": "0713",
        "pinyin": "Wuxue"
    },
    {
        "id": "421200",
        "name": "咸宁市",
        "parentId": "420000",
        "shortName": "咸宁",
        "letter": "X",
        "cityCode": "0715",
        "pinyin": "Xianning"
    },
    {
        "id": "421202",
        "name": "咸安区",
        "parentId": "421200",
        "shortName": "咸安",
        "letter": "X",
        "cityCode": "0715",
        "pinyin": "Xian'an"
    },
    {
        "id": "421221",
        "name": "嘉鱼县",
        "parentId": "421200",
        "shortName": "嘉鱼",
        "letter": "J",
        "cityCode": "0715",
        "pinyin": "Jiayu"
    },
    {
        "id": "421222",
        "name": "通城县",
        "parentId": "421200",
        "shortName": "通城",
        "letter": "T",
        "cityCode": "0715",
        "pinyin": "Tongcheng"
    },
    {
        "id": "421223",
        "name": "崇阳县",
        "parentId": "421200",
        "shortName": "崇阳",
        "letter": "C",
        "cityCode": "0715",
        "pinyin": "Chongyang"
    },
    {
        "id": "421224",
        "name": "通山县",
        "parentId": "421200",
        "shortName": "通山",
        "letter": "T",
        "cityCode": "0715",
        "pinyin": "Tongshan"
    },
    {
        "id": "421281",
        "name": "赤壁市",
        "parentId": "421200",
        "shortName": "赤壁",
        "letter": "C",
        "cityCode": "0715",
        "pinyin": "Chibi"
    },
    {
        "id": "421300",
        "name": "随州市",
        "parentId": "420000",
        "shortName": "随州",
        "letter": "S",
        "cityCode": "0722",
        "pinyin": "Suizhou"
    },
    {
        "id": "421303",
        "name": "曾都区",
        "parentId": "421300",
        "shortName": "曾都",
        "letter": "Z",
        "cityCode": "0722",
        "pinyin": "Zengdu"
    },
    {
        "id": "421321",
        "name": "随县",
        "parentId": "421300",
        "shortName": "随县",
        "letter": "S",
        "cityCode": "0722",
        "pinyin": "Suixian"
    },
    {
        "id": "421381",
        "name": "广水市",
        "parentId": "421300",
        "shortName": "广水",
        "letter": "G",
        "cityCode": "0722",
        "pinyin": "Guangshui"
    },
    {
        "id": "422800",
        "name": "恩施土家族苗族自治州",
        "parentId": "420000",
        "shortName": "恩施",
        "letter": "E",
        "cityCode": "0718",
        "pinyin": "Enshi"
    },
    {
        "id": "422801",
        "name": "恩施市",
        "parentId": "422800",
        "shortName": "恩施",
        "letter": "E",
        "cityCode": "0718",
        "pinyin": "Enshi"
    },
    {
        "id": "422802",
        "name": "利川市",
        "parentId": "422800",
        "shortName": "利川",
        "letter": "L",
        "cityCode": "0718",
        "pinyin": "Lichuan"
    },
    {
        "id": "422822",
        "name": "建始县",
        "parentId": "422800",
        "shortName": "建始",
        "letter": "J",
        "cityCode": "0718",
        "pinyin": "Jianshi"
    },
    {
        "id": "422823",
        "name": "巴东县",
        "parentId": "422800",
        "shortName": "巴东",
        "letter": "B",
        "cityCode": "0718",
        "pinyin": "Badong"
    },
    {
        "id": "422825",
        "name": "宣恩县",
        "parentId": "422800",
        "shortName": "宣恩",
        "letter": "X",
        "cityCode": "0718",
        "pinyin": "Xuanen"
    },
    {
        "id": "422826",
        "name": "咸丰县",
        "parentId": "422800",
        "shortName": "咸丰",
        "letter": "X",
        "cityCode": "0718",
        "pinyin": "Xianfeng"
    },
    {
        "id": "422827",
        "name": "来凤县",
        "parentId": "422800",
        "shortName": "来凤",
        "letter": "L",
        "cityCode": "0718",
        "pinyin": "Laifeng"
    },
    {
        "id": "422828",
        "name": "鹤峰县",
        "parentId": "422800",
        "shortName": "鹤峰",
        "letter": "H",
        "cityCode": "0718",
        "pinyin": "Hefeng"
    },
    {
        "id": "429000",
        "name": "直辖县级",
        "parentId": "420000",
        "shortName": "直辖县",
        "letter": "",
        "cityCode": "",
        "pinyin": ""
    },
    {
        "id": "429004",
        "name": "仙桃市",
        "parentId": "429000",
        "shortName": "仙桃",
        "letter": "X",
        "cityCode": "0728",
        "pinyin": "Xiantao"
    },
    {
        "id": "429005",
        "name": "潜江市",
        "parentId": "429000",
        "shortName": "潜江",
        "letter": "Q",
        "cityCode": "0728",
        "pinyin": "Qianjiang"
    },
    {
        "id": "429006",
        "name": "天门市",
        "parentId": "429000",
        "shortName": "天门",
        "letter": "T",
        "cityCode": "0728",
        "pinyin": "Tianmen"
    },
    {
        "id": "429021",
        "name": "神农架林区",
        "parentId": "429000",
        "shortName": "神农架",
        "letter": "S",
        "cityCode": "0719",
        "pinyin": "Shennongjia"
    },
    {
        "id": "430000",
        "name": "湖南省",
        "parentId": "100000",
        "shortName": "湖南",
        "letter": "H",
        "cityCode": "",
        "pinyin": "Hunan"
    },
    {
        "id": "430100",
        "name": "长沙市",
        "parentId": "430000",
        "shortName": "长沙",
        "letter": "C",
        "cityCode": "0731",
        "pinyin": "Changsha"
    },
    {
        "id": "430102",
        "name": "芙蓉区",
        "parentId": "430100",
        "shortName": "芙蓉",
        "letter": "F",
        "cityCode": "0731",
        "pinyin": "Furong"
    },
    {
        "id": "430103",
        "name": "天心区",
        "parentId": "430100",
        "shortName": "天心",
        "letter": "T",
        "cityCode": "0731",
        "pinyin": "Tianxin"
    },
    {
        "id": "430104",
        "name": "岳麓区",
        "parentId": "430100",
        "shortName": "岳麓",
        "letter": "Y",
        "cityCode": "0731",
        "pinyin": "Yuelu"
    },
    {
        "id": "430105",
        "name": "开福区",
        "parentId": "430100",
        "shortName": "开福",
        "letter": "K",
        "cityCode": "0731",
        "pinyin": "Kaifu"
    },
    {
        "id": "430111",
        "name": "雨花区",
        "parentId": "430100",
        "shortName": "雨花",
        "letter": "Y",
        "cityCode": "0731",
        "pinyin": "Yuhua"
    },
    {
        "id": "430112",
        "name": "望城区",
        "parentId": "430100",
        "shortName": "望城",
        "letter": "W",
        "cityCode": "0731",
        "pinyin": "Wangcheng"
    },
    {
        "id": "430121",
        "name": "长沙县",
        "parentId": "430100",
        "shortName": "长沙",
        "letter": "C",
        "cityCode": "0731",
        "pinyin": "Changsha"
    },
    {
        "id": "430124",
        "name": "宁乡县",
        "parentId": "430100",
        "shortName": "宁乡",
        "letter": "N",
        "cityCode": "0731",
        "pinyin": "Ningxiang"
    },
    {
        "id": "430181",
        "name": "浏阳市",
        "parentId": "430100",
        "shortName": "浏阳",
        "letter": "L",
        "cityCode": "0731",
        "pinyin": "Liuyang"
    },
    {
        "id": "430200",
        "name": "株洲市",
        "parentId": "430000",
        "shortName": "株洲",
        "letter": "Z",
        "cityCode": "0731",
        "pinyin": "Zhuzhou"
    },
    {
        "id": "430202",
        "name": "荷塘区",
        "parentId": "430200",
        "shortName": "荷塘",
        "letter": "H",
        "cityCode": "0731",
        "pinyin": "Hetang"
    },
    {
        "id": "430203",
        "name": "芦淞区",
        "parentId": "430200",
        "shortName": "芦淞",
        "letter": "L",
        "cityCode": "0731",
        "pinyin": "Lusong"
    },
    {
        "id": "430204",
        "name": "石峰区",
        "parentId": "430200",
        "shortName": "石峰",
        "letter": "S",
        "cityCode": "0731",
        "pinyin": "Shifeng"
    },
    {
        "id": "430211",
        "name": "天元区",
        "parentId": "430200",
        "shortName": "天元",
        "letter": "T",
        "cityCode": "0731",
        "pinyin": "Tianyuan"
    },
    {
        "id": "430221",
        "name": "株洲县",
        "parentId": "430200",
        "shortName": "株洲",
        "letter": "Z",
        "cityCode": "0731",
        "pinyin": "Zhuzhou"
    },
    {
        "id": "430223",
        "name": "攸县",
        "parentId": "430200",
        "shortName": "攸县",
        "letter": "Y",
        "cityCode": "0731",
        "pinyin": "Youxian"
    },
    {
        "id": "430224",
        "name": "茶陵县",
        "parentId": "430200",
        "shortName": "茶陵",
        "letter": "C",
        "cityCode": "0731",
        "pinyin": "Chaling"
    },
    {
        "id": "430225",
        "name": "炎陵县",
        "parentId": "430200",
        "shortName": "炎陵",
        "letter": "Y",
        "cityCode": "0731",
        "pinyin": "Yanling"
    },
    {
        "id": "430281",
        "name": "醴陵市",
        "parentId": "430200",
        "shortName": "醴陵",
        "letter": "L",
        "cityCode": "0731",
        "pinyin": "Liling"
    },
    {
        "id": "430300",
        "name": "湘潭市",
        "parentId": "430000",
        "shortName": "湘潭",
        "letter": "X",
        "cityCode": "0731",
        "pinyin": "Xiangtan"
    },
    {
        "id": "430302",
        "name": "雨湖区",
        "parentId": "430300",
        "shortName": "雨湖",
        "letter": "Y",
        "cityCode": "0731",
        "pinyin": "Yuhu"
    },
    {
        "id": "430304",
        "name": "岳塘区",
        "parentId": "430300",
        "shortName": "岳塘",
        "letter": "Y",
        "cityCode": "0731",
        "pinyin": "Yuetang"
    },
    {
        "id": "430321",
        "name": "湘潭县",
        "parentId": "430300",
        "shortName": "湘潭",
        "letter": "X",
        "cityCode": "0731",
        "pinyin": "Xiangtan"
    },
    {
        "id": "430381",
        "name": "湘乡市",
        "parentId": "430300",
        "shortName": "湘乡",
        "letter": "X",
        "cityCode": "0731",
        "pinyin": "Xiangxiang"
    },
    {
        "id": "430382",
        "name": "韶山市",
        "parentId": "430300",
        "shortName": "韶山",
        "letter": "S",
        "cityCode": "0731",
        "pinyin": "Shaoshan"
    },
    {
        "id": "430400",
        "name": "衡阳市",
        "parentId": "430000",
        "shortName": "衡阳",
        "letter": "H",
        "cityCode": "0734",
        "pinyin": "Hengyang"
    },
    {
        "id": "430405",
        "name": "珠晖区",
        "parentId": "430400",
        "shortName": "珠晖",
        "letter": "Z",
        "cityCode": "0734",
        "pinyin": "Zhuhui"
    },
    {
        "id": "430406",
        "name": "雁峰区",
        "parentId": "430400",
        "shortName": "雁峰",
        "letter": "Y",
        "cityCode": "0734",
        "pinyin": "Yanfeng"
    },
    {
        "id": "430407",
        "name": "石鼓区",
        "parentId": "430400",
        "shortName": "石鼓",
        "letter": "S",
        "cityCode": "0734",
        "pinyin": "Shigu"
    },
    {
        "id": "430408",
        "name": "蒸湘区",
        "parentId": "430400",
        "shortName": "蒸湘",
        "letter": "Z",
        "cityCode": "0734",
        "pinyin": "Zhengxiang"
    },
    {
        "id": "430412",
        "name": "南岳区",
        "parentId": "430400",
        "shortName": "南岳",
        "letter": "N",
        "cityCode": "0734",
        "pinyin": "Nanyue"
    },
    {
        "id": "430421",
        "name": "衡阳县",
        "parentId": "430400",
        "shortName": "衡阳",
        "letter": "H",
        "cityCode": "0734",
        "pinyin": "Hengyang"
    },
    {
        "id": "430422",
        "name": "衡南县",
        "parentId": "430400",
        "shortName": "衡南",
        "letter": "H",
        "cityCode": "0734",
        "pinyin": "Hengnan"
    },
    {
        "id": "430423",
        "name": "衡山县",
        "parentId": "430400",
        "shortName": "衡山",
        "letter": "H",
        "cityCode": "0734",
        "pinyin": "Hengshan"
    },
    {
        "id": "430424",
        "name": "衡东县",
        "parentId": "430400",
        "shortName": "衡东",
        "letter": "H",
        "cityCode": "0734",
        "pinyin": "Hengdong"
    },
    {
        "id": "430426",
        "name": "祁东县",
        "parentId": "430400",
        "shortName": "祁东",
        "letter": "Q",
        "cityCode": "0734",
        "pinyin": "Qidong"
    },
    {
        "id": "430481",
        "name": "耒阳市",
        "parentId": "430400",
        "shortName": "耒阳",
        "letter": "L",
        "cityCode": "0734",
        "pinyin": "Leiyang"
    },
    {
        "id": "430482",
        "name": "常宁市",
        "parentId": "430400",
        "shortName": "常宁",
        "letter": "C",
        "cityCode": "0734",
        "pinyin": "Changning"
    },
    {
        "id": "430500",
        "name": "邵阳市",
        "parentId": "430000",
        "shortName": "邵阳",
        "letter": "S",
        "cityCode": "0739",
        "pinyin": "Shaoyang"
    },
    {
        "id": "430502",
        "name": "双清区",
        "parentId": "430500",
        "shortName": "双清",
        "letter": "S",
        "cityCode": "0739",
        "pinyin": "Shuangqing"
    },
    {
        "id": "430503",
        "name": "大祥区",
        "parentId": "430500",
        "shortName": "大祥",
        "letter": "D",
        "cityCode": "0739",
        "pinyin": "Daxiang"
    },
    {
        "id": "430511",
        "name": "北塔区",
        "parentId": "430500",
        "shortName": "北塔",
        "letter": "B",
        "cityCode": "0739",
        "pinyin": "Beita"
    },
    {
        "id": "430521",
        "name": "邵东县",
        "parentId": "430500",
        "shortName": "邵东",
        "letter": "S",
        "cityCode": "0739",
        "pinyin": "Shaodong"
    },
    {
        "id": "430522",
        "name": "新邵县",
        "parentId": "430500",
        "shortName": "新邵",
        "letter": "X",
        "cityCode": "0739",
        "pinyin": "Xinshao"
    },
    {
        "id": "430523",
        "name": "邵阳县",
        "parentId": "430500",
        "shortName": "邵阳",
        "letter": "S",
        "cityCode": "0739",
        "pinyin": "Shaoyang"
    },
    {
        "id": "430524",
        "name": "隆回县",
        "parentId": "430500",
        "shortName": "隆回",
        "letter": "L",
        "cityCode": "0739",
        "pinyin": "Longhui"
    },
    {
        "id": "430525",
        "name": "洞口县",
        "parentId": "430500",
        "shortName": "洞口",
        "letter": "D",
        "cityCode": "0739",
        "pinyin": "Dongkou"
    },
    {
        "id": "430527",
        "name": "绥宁县",
        "parentId": "430500",
        "shortName": "绥宁",
        "letter": "S",
        "cityCode": "0739",
        "pinyin": "Suining"
    },
    {
        "id": "430528",
        "name": "新宁县",
        "parentId": "430500",
        "shortName": "新宁",
        "letter": "X",
        "cityCode": "0739",
        "pinyin": "Xinning"
    },
    {
        "id": "430529",
        "name": "城步苗族自治县",
        "parentId": "430500",
        "shortName": "城步",
        "letter": "C",
        "cityCode": "0739",
        "pinyin": "Chengbu"
    },
    {
        "id": "430581",
        "name": "武冈市",
        "parentId": "430500",
        "shortName": "武冈",
        "letter": "W",
        "cityCode": "0739",
        "pinyin": "Wugang"
    },
    {
        "id": "430600",
        "name": "岳阳市",
        "parentId": "430000",
        "shortName": "岳阳",
        "letter": "Y",
        "cityCode": "0730",
        "pinyin": "Yueyang"
    },
    {
        "id": "430602",
        "name": "岳阳楼区",
        "parentId": "430600",
        "shortName": "岳阳楼",
        "letter": "Y",
        "cityCode": "0730",
        "pinyin": "Yueyanglou"
    },
    {
        "id": "430603",
        "name": "云溪区",
        "parentId": "430600",
        "shortName": "云溪",
        "letter": "Y",
        "cityCode": "0730",
        "pinyin": "Yunxi"
    },
    {
        "id": "430611",
        "name": "君山区",
        "parentId": "430600",
        "shortName": "君山",
        "letter": "J",
        "cityCode": "0730",
        "pinyin": "Junshan"
    },
    {
        "id": "430621",
        "name": "岳阳县",
        "parentId": "430600",
        "shortName": "岳阳",
        "letter": "Y",
        "cityCode": "0730",
        "pinyin": "Yueyang"
    },
    {
        "id": "430623",
        "name": "华容县",
        "parentId": "430600",
        "shortName": "华容",
        "letter": "H",
        "cityCode": "0730",
        "pinyin": "Huarong"
    },
    {
        "id": "430624",
        "name": "湘阴县",
        "parentId": "430600",
        "shortName": "湘阴",
        "letter": "X",
        "cityCode": "0730",
        "pinyin": "Xiangyin"
    },
    {
        "id": "430626",
        "name": "平江县",
        "parentId": "430600",
        "shortName": "平江",
        "letter": "P",
        "cityCode": "0730",
        "pinyin": "Pingjiang"
    },
    {
        "id": "430681",
        "name": "汨罗市",
        "parentId": "430600",
        "shortName": "汨罗",
        "letter": "M",
        "cityCode": "0730",
        "pinyin": "Miluo"
    },
    {
        "id": "430682",
        "name": "临湘市",
        "parentId": "430600",
        "shortName": "临湘",
        "letter": "L",
        "cityCode": "0730",
        "pinyin": "Linxiang"
    },
    {
        "id": "430700",
        "name": "常德市",
        "parentId": "430000",
        "shortName": "常德",
        "letter": "C",
        "cityCode": "0736",
        "pinyin": "Changde"
    },
    {
        "id": "430702",
        "name": "武陵区",
        "parentId": "430700",
        "shortName": "武陵",
        "letter": "W",
        "cityCode": "0736",
        "pinyin": "Wuling"
    },
    {
        "id": "430703",
        "name": "鼎城区",
        "parentId": "430700",
        "shortName": "鼎城",
        "letter": "D",
        "cityCode": "0736",
        "pinyin": "Dingcheng"
    },
    {
        "id": "430721",
        "name": "安乡县",
        "parentId": "430700",
        "shortName": "安乡",
        "letter": "A",
        "cityCode": "0736",
        "pinyin": "Anxiang"
    },
    {
        "id": "430722",
        "name": "汉寿县",
        "parentId": "430700",
        "shortName": "汉寿",
        "letter": "H",
        "cityCode": "0736",
        "pinyin": "Hanshou"
    },
    {
        "id": "430723",
        "name": "澧县",
        "parentId": "430700",
        "shortName": "澧县",
        "letter": "L",
        "cityCode": "0736",
        "pinyin": "Lixian"
    },
    {
        "id": "430724",
        "name": "临澧县",
        "parentId": "430700",
        "shortName": "临澧",
        "letter": "L",
        "cityCode": "0736",
        "pinyin": "Linli"
    },
    {
        "id": "430725",
        "name": "桃源县",
        "parentId": "430700",
        "shortName": "桃源",
        "letter": "T",
        "cityCode": "0736",
        "pinyin": "Taoyuan"
    },
    {
        "id": "430726",
        "name": "石门县",
        "parentId": "430700",
        "shortName": "石门",
        "letter": "S",
        "cityCode": "0736",
        "pinyin": "Shimen"
    },
    {
        "id": "430781",
        "name": "津市市",
        "parentId": "430700",
        "shortName": "津市",
        "letter": "J",
        "cityCode": "0736",
        "pinyin": "Jinshi"
    },
    {
        "id": "430800",
        "name": "张家界市",
        "parentId": "430000",
        "shortName": "张家界",
        "letter": "Z",
        "cityCode": "0744",
        "pinyin": "Zhangjiajie"
    },
    {
        "id": "430802",
        "name": "永定区",
        "parentId": "430800",
        "shortName": "永定",
        "letter": "Y",
        "cityCode": "0744",
        "pinyin": "Yongding"
    },
    {
        "id": "430811",
        "name": "武陵源区",
        "parentId": "430800",
        "shortName": "武陵源",
        "letter": "W",
        "cityCode": "0744",
        "pinyin": "Wulingyuan"
    },
    {
        "id": "430821",
        "name": "慈利县",
        "parentId": "430800",
        "shortName": "慈利",
        "letter": "C",
        "cityCode": "0744",
        "pinyin": "Cili"
    },
    {
        "id": "430822",
        "name": "桑植县",
        "parentId": "430800",
        "shortName": "桑植",
        "letter": "S",
        "cityCode": "0744",
        "pinyin": "Sangzhi"
    },
    {
        "id": "430900",
        "name": "益阳市",
        "parentId": "430000",
        "shortName": "益阳",
        "letter": "Y",
        "cityCode": "0737",
        "pinyin": "Yiyang"
    },
    {
        "id": "430902",
        "name": "资阳区",
        "parentId": "430900",
        "shortName": "资阳",
        "letter": "Z",
        "cityCode": "0737",
        "pinyin": "Ziyang"
    },
    {
        "id": "430903",
        "name": "赫山区",
        "parentId": "430900",
        "shortName": "赫山",
        "letter": "H",
        "cityCode": "0737",
        "pinyin": "Heshan"
    },
    {
        "id": "430921",
        "name": "南县",
        "parentId": "430900",
        "shortName": "南县",
        "letter": "N",
        "cityCode": "0737",
        "pinyin": "Nanxian"
    },
    {
        "id": "430922",
        "name": "桃江县",
        "parentId": "430900",
        "shortName": "桃江",
        "letter": "T",
        "cityCode": "0737",
        "pinyin": "Taojiang"
    },
    {
        "id": "430923",
        "name": "安化县",
        "parentId": "430900",
        "shortName": "安化",
        "letter": "A",
        "cityCode": "0737",
        "pinyin": "Anhua"
    },
    {
        "id": "430981",
        "name": "沅江市",
        "parentId": "430900",
        "shortName": "沅江",
        "letter": "Y",
        "cityCode": "0737",
        "pinyin": "Yuanjiang"
    },
    {
        "id": "431000",
        "name": "郴州市",
        "parentId": "430000",
        "shortName": "郴州",
        "letter": "C",
        "cityCode": "0735",
        "pinyin": "Chenzhou"
    },
    {
        "id": "431002",
        "name": "北湖区",
        "parentId": "431000",
        "shortName": "北湖",
        "letter": "B",
        "cityCode": "0735",
        "pinyin": "Beihu"
    },
    {
        "id": "431003",
        "name": "苏仙区",
        "parentId": "431000",
        "shortName": "苏仙",
        "letter": "S",
        "cityCode": "0735",
        "pinyin": "Suxian"
    },
    {
        "id": "431021",
        "name": "桂阳县",
        "parentId": "431000",
        "shortName": "桂阳",
        "letter": "G",
        "cityCode": "0735",
        "pinyin": "Guiyang"
    },
    {
        "id": "431022",
        "name": "宜章县",
        "parentId": "431000",
        "shortName": "宜章",
        "letter": "Y",
        "cityCode": "0735",
        "pinyin": "Yizhang"
    },
    {
        "id": "431023",
        "name": "永兴县",
        "parentId": "431000",
        "shortName": "永兴",
        "letter": "Y",
        "cityCode": "0735",
        "pinyin": "Yongxing"
    },
    {
        "id": "431024",
        "name": "嘉禾县",
        "parentId": "431000",
        "shortName": "嘉禾",
        "letter": "J",
        "cityCode": "0735",
        "pinyin": "Jiahe"
    },
    {
        "id": "431025",
        "name": "临武县",
        "parentId": "431000",
        "shortName": "临武",
        "letter": "L",
        "cityCode": "0735",
        "pinyin": "Linwu"
    },
    {
        "id": "431026",
        "name": "汝城县",
        "parentId": "431000",
        "shortName": "汝城",
        "letter": "R",
        "cityCode": "0735",
        "pinyin": "Rucheng"
    },
    {
        "id": "431027",
        "name": "桂东县",
        "parentId": "431000",
        "shortName": "桂东",
        "letter": "G",
        "cityCode": "0735",
        "pinyin": "Guidong"
    },
    {
        "id": "431028",
        "name": "安仁县",
        "parentId": "431000",
        "shortName": "安仁",
        "letter": "A",
        "cityCode": "0735",
        "pinyin": "Anren"
    },
    {
        "id": "431081",
        "name": "资兴市",
        "parentId": "431000",
        "shortName": "资兴",
        "letter": "Z",
        "cityCode": "0735",
        "pinyin": "Zixing"
    },
    {
        "id": "431100",
        "name": "永州市",
        "parentId": "430000",
        "shortName": "永州",
        "letter": "Y",
        "cityCode": "0746",
        "pinyin": "Yongzhou"
    },
    {
        "id": "431102",
        "name": "零陵区",
        "parentId": "431100",
        "shortName": "零陵",
        "letter": "L",
        "cityCode": "0746",
        "pinyin": "Lingling"
    },
    {
        "id": "431103",
        "name": "冷水滩区",
        "parentId": "431100",
        "shortName": "冷水滩",
        "letter": "L",
        "cityCode": "0746",
        "pinyin": "Lengshuitan"
    },
    {
        "id": "431121",
        "name": "祁阳县",
        "parentId": "431100",
        "shortName": "祁阳",
        "letter": "Q",
        "cityCode": "0746",
        "pinyin": "Qiyang"
    },
    {
        "id": "431122",
        "name": "东安县",
        "parentId": "431100",
        "shortName": "东安",
        "letter": "D",
        "cityCode": "0746",
        "pinyin": "Dong'an"
    },
    {
        "id": "431123",
        "name": "双牌县",
        "parentId": "431100",
        "shortName": "双牌",
        "letter": "S",
        "cityCode": "0746",
        "pinyin": "Shuangpai"
    },
    {
        "id": "431124",
        "name": "道县",
        "parentId": "431100",
        "shortName": "道县",
        "letter": "D",
        "cityCode": "0746",
        "pinyin": "Daoxian"
    },
    {
        "id": "431125",
        "name": "江永县",
        "parentId": "431100",
        "shortName": "江永",
        "letter": "J",
        "cityCode": "0746",
        "pinyin": "Jiangyong"
    },
    {
        "id": "431126",
        "name": "宁远县",
        "parentId": "431100",
        "shortName": "宁远",
        "letter": "N",
        "cityCode": "0746",
        "pinyin": "Ningyuan"
    },
    {
        "id": "431127",
        "name": "蓝山县",
        "parentId": "431100",
        "shortName": "蓝山",
        "letter": "L",
        "cityCode": "0746",
        "pinyin": "Lanshan"
    },
    {
        "id": "431128",
        "name": "新田县",
        "parentId": "431100",
        "shortName": "新田",
        "letter": "X",
        "cityCode": "0746",
        "pinyin": "Xintian"
    },
    {
        "id": "431129",
        "name": "江华瑶族自治县",
        "parentId": "431100",
        "shortName": "江华",
        "letter": "J",
        "cityCode": "0746",
        "pinyin": "Jianghua"
    },
    {
        "id": "431200",
        "name": "怀化市",
        "parentId": "430000",
        "shortName": "怀化",
        "letter": "H",
        "cityCode": "0745",
        "pinyin": "Huaihua"
    },
    {
        "id": "431202",
        "name": "鹤城区",
        "parentId": "431200",
        "shortName": "鹤城",
        "letter": "H",
        "cityCode": "0745",
        "pinyin": "Hecheng"
    },
    {
        "id": "431221",
        "name": "中方县",
        "parentId": "431200",
        "shortName": "中方",
        "letter": "Z",
        "cityCode": "0745",
        "pinyin": "Zhongfang"
    },
    {
        "id": "431222",
        "name": "沅陵县",
        "parentId": "431200",
        "shortName": "沅陵",
        "letter": "Y",
        "cityCode": "0745",
        "pinyin": "Yuanling"
    },
    {
        "id": "431223",
        "name": "辰溪县",
        "parentId": "431200",
        "shortName": "辰溪",
        "letter": "C",
        "cityCode": "0745",
        "pinyin": "Chenxi"
    },
    {
        "id": "431224",
        "name": "溆浦县",
        "parentId": "431200",
        "shortName": "溆浦",
        "letter": "X",
        "cityCode": "0745",
        "pinyin": "Xupu"
    },
    {
        "id": "431225",
        "name": "会同县",
        "parentId": "431200",
        "shortName": "会同",
        "letter": "H",
        "cityCode": "0745",
        "pinyin": "Huitong"
    },
    {
        "id": "431226",
        "name": "麻阳苗族自治县",
        "parentId": "431200",
        "shortName": "麻阳",
        "letter": "M",
        "cityCode": "0745",
        "pinyin": "Mayang"
    },
    {
        "id": "431227",
        "name": "新晃侗族自治县",
        "parentId": "431200",
        "shortName": "新晃",
        "letter": "X",
        "cityCode": "0745",
        "pinyin": "Xinhuang"
    },
    {
        "id": "431228",
        "name": "芷江侗族自治县",
        "parentId": "431200",
        "shortName": "芷江",
        "letter": "Z",
        "cityCode": "0745",
        "pinyin": "Zhijiang"
    },
    {
        "id": "431229",
        "name": "靖州苗族侗族自治县",
        "parentId": "431200",
        "shortName": "靖州",
        "letter": "J",
        "cityCode": "0745",
        "pinyin": "Jingzhou"
    },
    {
        "id": "431230",
        "name": "通道侗族自治县",
        "parentId": "431200",
        "shortName": "通道",
        "letter": "T",
        "cityCode": "0745",
        "pinyin": "Tongdao"
    },
    {
        "id": "431281",
        "name": "洪江市",
        "parentId": "431200",
        "shortName": "洪江",
        "letter": "H",
        "cityCode": "0745",
        "pinyin": "Hongjiang"
    },
    {
        "id": "431300",
        "name": "娄底市",
        "parentId": "430000",
        "shortName": "娄底",
        "letter": "L",
        "cityCode": "0738",
        "pinyin": "Loudi"
    },
    {
        "id": "431302",
        "name": "娄星区",
        "parentId": "431300",
        "shortName": "娄星",
        "letter": "L",
        "cityCode": "0738",
        "pinyin": "Louxing"
    },
    {
        "id": "431321",
        "name": "双峰县",
        "parentId": "431300",
        "shortName": "双峰",
        "letter": "S",
        "cityCode": "0738",
        "pinyin": "Shuangfeng"
    },
    {
        "id": "431322",
        "name": "新化县",
        "parentId": "431300",
        "shortName": "新化",
        "letter": "X",
        "cityCode": "0738",
        "pinyin": "Xinhua"
    },
    {
        "id": "431381",
        "name": "冷水江市",
        "parentId": "431300",
        "shortName": "冷水江",
        "letter": "L",
        "cityCode": "0738",
        "pinyin": "Lengshuijiang"
    },
    {
        "id": "431382",
        "name": "涟源市",
        "parentId": "431300",
        "shortName": "涟源",
        "letter": "L",
        "cityCode": "0738",
        "pinyin": "Lianyuan"
    },
    {
        "id": "433100",
        "name": "湘西土家族苗族自治州",
        "parentId": "430000",
        "shortName": "湘西",
        "letter": "X",
        "cityCode": "0743",
        "pinyin": "Xiangxi"
    },
    {
        "id": "433101",
        "name": "吉首市",
        "parentId": "433100",
        "shortName": "吉首",
        "letter": "J",
        "cityCode": "0743",
        "pinyin": "Jishou"
    },
    {
        "id": "433122",
        "name": "泸溪县",
        "parentId": "433100",
        "shortName": "泸溪",
        "letter": "L",
        "cityCode": "0743",
        "pinyin": "Luxi"
    },
    {
        "id": "433123",
        "name": "凤凰县",
        "parentId": "433100",
        "shortName": "凤凰",
        "letter": "F",
        "cityCode": "0743",
        "pinyin": "Fenghuang"
    },
    {
        "id": "433124",
        "name": "花垣县",
        "parentId": "433100",
        "shortName": "花垣",
        "letter": "H",
        "cityCode": "0743",
        "pinyin": "Huayuan"
    },
    {
        "id": "433125",
        "name": "保靖县",
        "parentId": "433100",
        "shortName": "保靖",
        "letter": "B",
        "cityCode": "0743",
        "pinyin": "Baojing"
    },
    {
        "id": "433126",
        "name": "古丈县",
        "parentId": "433100",
        "shortName": "古丈",
        "letter": "G",
        "cityCode": "0743",
        "pinyin": "Guzhang"
    },
    {
        "id": "433127",
        "name": "永顺县",
        "parentId": "433100",
        "shortName": "永顺",
        "letter": "Y",
        "cityCode": "0743",
        "pinyin": "Yongshun"
    },
    {
        "id": "433130",
        "name": "龙山县",
        "parentId": "433100",
        "shortName": "龙山",
        "letter": "L",
        "cityCode": "0743",
        "pinyin": "Longshan"
    },
    {
        "id": "440000",
        "name": "广东省",
        "parentId": "100000",
        "shortName": "广东",
        "letter": "G",
        "cityCode": "",
        "pinyin": "Guangdong"
    },
    {
        "id": "440100",
        "name": "广州市",
        "parentId": "440000",
        "shortName": "广州",
        "letter": "G",
        "cityCode": "020",
        "pinyin": "Guangzhou"
    },
    {
        "id": "440103",
        "name": "荔湾区",
        "parentId": "440100",
        "shortName": "荔湾",
        "letter": "L",
        "cityCode": "020",
        "pinyin": "Liwan"
    },
    {
        "id": "440104",
        "name": "越秀区",
        "parentId": "440100",
        "shortName": "越秀",
        "letter": "Y",
        "cityCode": "020",
        "pinyin": "Yuexiu"
    },
    {
        "id": "440105",
        "name": "海珠区",
        "parentId": "440100",
        "shortName": "海珠",
        "letter": "H",
        "cityCode": "020",
        "pinyin": "Haizhu"
    },
    {
        "id": "440106",
        "name": "天河区",
        "parentId": "440100",
        "shortName": "天河",
        "letter": "T",
        "cityCode": "020",
        "pinyin": "Tianhe"
    },
    {
        "id": "440111",
        "name": "白云区",
        "parentId": "440100",
        "shortName": "白云",
        "letter": "B",
        "cityCode": "020",
        "pinyin": "Baiyun"
    },
    {
        "id": "440112",
        "name": "黄埔区",
        "parentId": "440100",
        "shortName": "黄埔",
        "letter": "H",
        "cityCode": "020",
        "pinyin": "Huangpu"
    },
    {
        "id": "440113",
        "name": "番禺区",
        "parentId": "440100",
        "shortName": "番禺",
        "letter": "P",
        "cityCode": "020",
        "pinyin": "Panyu"
    },
    {
        "id": "440114",
        "name": "花都区",
        "parentId": "440100",
        "shortName": "花都",
        "letter": "H",
        "cityCode": "020",
        "pinyin": "Huadu"
    },
    {
        "id": "440115",
        "name": "南沙区",
        "parentId": "440100",
        "shortName": "南沙",
        "letter": "N",
        "cityCode": "020",
        "pinyin": "Nansha"
    },
    {
        "id": "440117",
        "name": "从化区",
        "parentId": "440100",
        "shortName": "从化",
        "letter": "C",
        "cityCode": "020",
        "pinyin": "Conghua"
    },
    {
        "id": "440118",
        "name": "增城区",
        "parentId": "440100",
        "shortName": "增城",
        "letter": "Z",
        "cityCode": "020",
        "pinyin": "Zengcheng"
    },
    {
        "id": "440200",
        "name": "韶关市",
        "parentId": "440000",
        "shortName": "韶关",
        "letter": "S",
        "cityCode": "0751",
        "pinyin": "Shaoguan"
    },
    {
        "id": "440203",
        "name": "武江区",
        "parentId": "440200",
        "shortName": "武江",
        "letter": "W",
        "cityCode": "0751",
        "pinyin": "Wujiang"
    },
    {
        "id": "440204",
        "name": "浈江区",
        "parentId": "440200",
        "shortName": "浈江",
        "letter": "Z",
        "cityCode": "0751",
        "pinyin": "Zhenjiang"
    },
    {
        "id": "440205",
        "name": "曲江区",
        "parentId": "440200",
        "shortName": "曲江",
        "letter": "Q",
        "cityCode": "0751",
        "pinyin": "Qujiang"
    },
    {
        "id": "440222",
        "name": "始兴县",
        "parentId": "440200",
        "shortName": "始兴",
        "letter": "S",
        "cityCode": "0751",
        "pinyin": "Shixing"
    },
    {
        "id": "440224",
        "name": "仁化县",
        "parentId": "440200",
        "shortName": "仁化",
        "letter": "R",
        "cityCode": "0751",
        "pinyin": "Renhua"
    },
    {
        "id": "440229",
        "name": "翁源县",
        "parentId": "440200",
        "shortName": "翁源",
        "letter": "W",
        "cityCode": "0751",
        "pinyin": "Wengyuan"
    },
    {
        "id": "440232",
        "name": "乳源瑶族自治县",
        "parentId": "440200",
        "shortName": "乳源",
        "letter": "R",
        "cityCode": "0751",
        "pinyin": "Ruyuan"
    },
    {
        "id": "440233",
        "name": "新丰县",
        "parentId": "440200",
        "shortName": "新丰",
        "letter": "X",
        "cityCode": "0751",
        "pinyin": "Xinfeng"
    },
    {
        "id": "440281",
        "name": "乐昌市",
        "parentId": "440200",
        "shortName": "乐昌",
        "letter": "L",
        "cityCode": "0751",
        "pinyin": "Lechang"
    },
    {
        "id": "440282",
        "name": "南雄市",
        "parentId": "440200",
        "shortName": "南雄",
        "letter": "N",
        "cityCode": "0751",
        "pinyin": "Nanxiong"
    },
    {
        "id": "440300",
        "name": "深圳市",
        "parentId": "440000",
        "shortName": "深圳",
        "letter": "S",
        "cityCode": "0755",
        "pinyin": "Shenzhen"
    },
    {
        "id": "440303",
        "name": "罗湖区",
        "parentId": "440300",
        "shortName": "罗湖",
        "letter": "L",
        "cityCode": "0755",
        "pinyin": "Luohu"
    },
    {
        "id": "440304",
        "name": "福田区",
        "parentId": "440300",
        "shortName": "福田",
        "letter": "F",
        "cityCode": "0755",
        "pinyin": "Futian"
    },
    {
        "id": "440305",
        "name": "南山区",
        "parentId": "440300",
        "shortName": "南山",
        "letter": "N",
        "cityCode": "0755",
        "pinyin": "Nanshan"
    },
    {
        "id": "440306",
        "name": "宝安区",
        "parentId": "440300",
        "shortName": "宝安",
        "letter": "B",
        "cityCode": "0755",
        "pinyin": "Bao'an"
    },
    {
        "id": "440307",
        "name": "龙岗区",
        "parentId": "440300",
        "shortName": "龙岗",
        "letter": "L",
        "cityCode": "0755",
        "pinyin": "Longgang"
    },
    {
        "id": "440308",
        "name": "盐田区",
        "parentId": "440300",
        "shortName": "盐田",
        "letter": "Y",
        "cityCode": "0755",
        "pinyin": "Yantian"
    },
    {
        "id": "440309",
        "name": "光明新区",
        "parentId": "440300",
        "shortName": "光明新区",
        "letter": "G",
        "cityCode": "0755",
        "pinyin": "Guangmingxinqu"
    },
    {
        "id": "440310",
        "name": "坪山新区",
        "parentId": "440300",
        "shortName": "坪山新区",
        "letter": "P",
        "cityCode": "0755",
        "pinyin": "Pingshanxinqu"
    },
    {
        "id": "440311",
        "name": "大鹏新区",
        "parentId": "440300",
        "shortName": "大鹏新区",
        "letter": "D",
        "cityCode": "0755",
        "pinyin": "Dapengxinqu"
    },
    {
        "id": "440312",
        "name": "龙华新区",
        "parentId": "440300",
        "shortName": "龙华新区",
        "letter": "L",
        "cityCode": "0755",
        "pinyin": "Longhuaxinqu"
    },
    {
        "id": "440400",
        "name": "珠海市",
        "parentId": "440000",
        "shortName": "珠海",
        "letter": "Z",
        "cityCode": "0756",
        "pinyin": "Zhuhai"
    },
    {
        "id": "440402",
        "name": "香洲区",
        "parentId": "440400",
        "shortName": "香洲",
        "letter": "X",
        "cityCode": "0756",
        "pinyin": "Xiangzhou"
    },
    {
        "id": "440403",
        "name": "斗门区",
        "parentId": "440400",
        "shortName": "斗门",
        "letter": "D",
        "cityCode": "0756",
        "pinyin": "Doumen"
    },
    {
        "id": "440404",
        "name": "金湾区",
        "parentId": "440400",
        "shortName": "金湾",
        "letter": "J",
        "cityCode": "0756",
        "pinyin": "Jinwan"
    },
    {
        "id": "440500",
        "name": "汕头市",
        "parentId": "440000",
        "shortName": "汕头",
        "letter": "S",
        "cityCode": "0754",
        "pinyin": "Shantou"
    },
    {
        "id": "440507",
        "name": "龙湖区",
        "parentId": "440500",
        "shortName": "龙湖",
        "letter": "L",
        "cityCode": "0754",
        "pinyin": "Longhu"
    },
    {
        "id": "440511",
        "name": "金平区",
        "parentId": "440500",
        "shortName": "金平",
        "letter": "J",
        "cityCode": "0754",
        "pinyin": "Jinping"
    },
    {
        "id": "440512",
        "name": "濠江区",
        "parentId": "440500",
        "shortName": "濠江",
        "letter": "H",
        "cityCode": "0754",
        "pinyin": "Haojiang"
    },
    {
        "id": "440513",
        "name": "潮阳区",
        "parentId": "440500",
        "shortName": "潮阳",
        "letter": "C",
        "cityCode": "0754",
        "pinyin": "Chaoyang"
    },
    {
        "id": "440514",
        "name": "潮南区",
        "parentId": "440500",
        "shortName": "潮南",
        "letter": "C",
        "cityCode": "0754",
        "pinyin": "Chaonan"
    },
    {
        "id": "440515",
        "name": "澄海区",
        "parentId": "440500",
        "shortName": "澄海",
        "letter": "C",
        "cityCode": "0754",
        "pinyin": "Chenghai"
    },
    {
        "id": "440523",
        "name": "南澳县",
        "parentId": "440500",
        "shortName": "南澳",
        "letter": "N",
        "cityCode": "0754",
        "pinyin": "Nanao"
    },
    {
        "id": "440600",
        "name": "佛山市",
        "parentId": "440000",
        "shortName": "佛山",
        "letter": "F",
        "cityCode": "0757",
        "pinyin": "Foshan"
    },
    {
        "id": "440604",
        "name": "禅城区",
        "parentId": "440600",
        "shortName": "禅城",
        "letter": "C",
        "cityCode": "0757",
        "pinyin": "Chancheng"
    },
    {
        "id": "440605",
        "name": "南海区",
        "parentId": "440600",
        "shortName": "南海",
        "letter": "N",
        "cityCode": "0757",
        "pinyin": "Nanhai"
    },
    {
        "id": "440606",
        "name": "顺德区",
        "parentId": "440600",
        "shortName": "顺德",
        "letter": "S",
        "cityCode": "0757",
        "pinyin": "Shunde"
    },
    {
        "id": "440607",
        "name": "三水区",
        "parentId": "440600",
        "shortName": "三水",
        "letter": "S",
        "cityCode": "0757",
        "pinyin": "Sanshui"
    },
    {
        "id": "440608",
        "name": "高明区",
        "parentId": "440600",
        "shortName": "高明",
        "letter": "G",
        "cityCode": "0757",
        "pinyin": "Gaoming"
    },
    {
        "id": "440700",
        "name": "江门市",
        "parentId": "440000",
        "shortName": "江门",
        "letter": "J",
        "cityCode": "0750",
        "pinyin": "Jiangmen"
    },
    {
        "id": "440703",
        "name": "蓬江区",
        "parentId": "440700",
        "shortName": "蓬江",
        "letter": "P",
        "cityCode": "0750",
        "pinyin": "Pengjiang"
    },
    {
        "id": "440704",
        "name": "江海区",
        "parentId": "440700",
        "shortName": "江海",
        "letter": "J",
        "cityCode": "0750",
        "pinyin": "Jianghai"
    },
    {
        "id": "440705",
        "name": "新会区",
        "parentId": "440700",
        "shortName": "新会",
        "letter": "X",
        "cityCode": "0750",
        "pinyin": "Xinhui"
    },
    {
        "id": "440781",
        "name": "台山市",
        "parentId": "440700",
        "shortName": "台山",
        "letter": "T",
        "cityCode": "0750",
        "pinyin": "Taishan"
    },
    {
        "id": "440783",
        "name": "开平市",
        "parentId": "440700",
        "shortName": "开平",
        "letter": "K",
        "cityCode": "0750",
        "pinyin": "Kaiping"
    },
    {
        "id": "440784",
        "name": "鹤山市",
        "parentId": "440700",
        "shortName": "鹤山",
        "letter": "H",
        "cityCode": "0750",
        "pinyin": "Heshan"
    },
    {
        "id": "440785",
        "name": "恩平市",
        "parentId": "440700",
        "shortName": "恩平",
        "letter": "E",
        "cityCode": "0750",
        "pinyin": "Enping"
    },
    {
        "id": "440800",
        "name": "湛江市",
        "parentId": "440000",
        "shortName": "湛江",
        "letter": "Z",
        "cityCode": "0759",
        "pinyin": "Zhanjiang"
    },
    {
        "id": "440802",
        "name": "赤坎区",
        "parentId": "440800",
        "shortName": "赤坎",
        "letter": "C",
        "cityCode": "0759",
        "pinyin": "Chikan"
    },
    {
        "id": "440803",
        "name": "霞山区",
        "parentId": "440800",
        "shortName": "霞山",
        "letter": "X",
        "cityCode": "0759",
        "pinyin": "Xiashan"
    },
    {
        "id": "440804",
        "name": "坡头区",
        "parentId": "440800",
        "shortName": "坡头",
        "letter": "P",
        "cityCode": "0759",
        "pinyin": "Potou"
    },
    {
        "id": "440811",
        "name": "麻章区",
        "parentId": "440800",
        "shortName": "麻章",
        "letter": "M",
        "cityCode": "0759",
        "pinyin": "Mazhang"
    },
    {
        "id": "440823",
        "name": "遂溪县",
        "parentId": "440800",
        "shortName": "遂溪",
        "letter": "S",
        "cityCode": "0759",
        "pinyin": "Suixi"
    },
    {
        "id": "440825",
        "name": "徐闻县",
        "parentId": "440800",
        "shortName": "徐闻",
        "letter": "X",
        "cityCode": "0759",
        "pinyin": "Xuwen"
    },
    {
        "id": "440881",
        "name": "廉江市",
        "parentId": "440800",
        "shortName": "廉江",
        "letter": "L",
        "cityCode": "0759",
        "pinyin": "Lianjiang"
    },
    {
        "id": "440882",
        "name": "雷州市",
        "parentId": "440800",
        "shortName": "雷州",
        "letter": "L",
        "cityCode": "0759",
        "pinyin": "Leizhou"
    },
    {
        "id": "440883",
        "name": "吴川市",
        "parentId": "440800",
        "shortName": "吴川",
        "letter": "W",
        "cityCode": "0759",
        "pinyin": "Wuchuan"
    },
    {
        "id": "440900",
        "name": "茂名市",
        "parentId": "440000",
        "shortName": "茂名",
        "letter": "M",
        "cityCode": "0668",
        "pinyin": "Maoming"
    },
    {
        "id": "440902",
        "name": "茂南区",
        "parentId": "440900",
        "shortName": "茂南",
        "letter": "M",
        "cityCode": "0668",
        "pinyin": "Maonan"
    },
    {
        "id": "440904",
        "name": "电白区",
        "parentId": "440900",
        "shortName": "电白",
        "letter": "D",
        "cityCode": "0668",
        "pinyin": "Dianbai"
    },
    {
        "id": "440981",
        "name": "高州市",
        "parentId": "440900",
        "shortName": "高州",
        "letter": "G",
        "cityCode": "0668",
        "pinyin": "Gaozhou"
    },
    {
        "id": "440982",
        "name": "化州市",
        "parentId": "440900",
        "shortName": "化州",
        "letter": "H",
        "cityCode": "0668",
        "pinyin": "Huazhou"
    },
    {
        "id": "440983",
        "name": "信宜市",
        "parentId": "440900",
        "shortName": "信宜",
        "letter": "X",
        "cityCode": "0668",
        "pinyin": "Xinyi"
    },
    {
        "id": "441200",
        "name": "肇庆市",
        "parentId": "440000",
        "shortName": "肇庆",
        "letter": "Z",
        "cityCode": "0758",
        "pinyin": "Zhaoqing"
    },
    {
        "id": "441202",
        "name": "端州区",
        "parentId": "441200",
        "shortName": "端州",
        "letter": "D",
        "cityCode": "0758",
        "pinyin": "Duanzhou"
    },
    {
        "id": "441203",
        "name": "鼎湖区",
        "parentId": "441200",
        "shortName": "鼎湖",
        "letter": "D",
        "cityCode": "0758",
        "pinyin": "Dinghu"
    },
    {
        "id": "441223",
        "name": "广宁县",
        "parentId": "441200",
        "shortName": "广宁",
        "letter": "G",
        "cityCode": "0758",
        "pinyin": "Guangning"
    },
    {
        "id": "441224",
        "name": "怀集县",
        "parentId": "441200",
        "shortName": "怀集",
        "letter": "H",
        "cityCode": "0758",
        "pinyin": "Huaiji"
    },
    {
        "id": "441225",
        "name": "封开县",
        "parentId": "441200",
        "shortName": "封开",
        "letter": "F",
        "cityCode": "0758",
        "pinyin": "Fengkai"
    },
    {
        "id": "441226",
        "name": "德庆县",
        "parentId": "441200",
        "shortName": "德庆",
        "letter": "D",
        "cityCode": "0758",
        "pinyin": "Deqing"
    },
    {
        "id": "441283",
        "name": "高要市",
        "parentId": "441200",
        "shortName": "高要",
        "letter": "G",
        "cityCode": "0758",
        "pinyin": "Gaoyao"
    },
    {
        "id": "441284",
        "name": "四会市",
        "parentId": "441200",
        "shortName": "四会",
        "letter": "S",
        "cityCode": "0758",
        "pinyin": "Sihui"
    },
    {
        "id": "441300",
        "name": "惠州市",
        "parentId": "440000",
        "shortName": "惠州",
        "letter": "H",
        "cityCode": "0752",
        "pinyin": "Huizhou"
    },
    {
        "id": "441302",
        "name": "惠城区",
        "parentId": "441300",
        "shortName": "惠城",
        "letter": "H",
        "cityCode": "0752",
        "pinyin": "Huicheng"
    },
    {
        "id": "441303",
        "name": "惠阳区",
        "parentId": "441300",
        "shortName": "惠阳",
        "letter": "H",
        "cityCode": "0752",
        "pinyin": "Huiyang"
    },
    {
        "id": "441322",
        "name": "博罗县",
        "parentId": "441300",
        "shortName": "博罗",
        "letter": "B",
        "cityCode": "0752",
        "pinyin": "Boluo"
    },
    {
        "id": "441323",
        "name": "惠东县",
        "parentId": "441300",
        "shortName": "惠东",
        "letter": "H",
        "cityCode": "0752",
        "pinyin": "Huidong"
    },
    {
        "id": "441324",
        "name": "龙门县",
        "parentId": "441300",
        "shortName": "龙门",
        "letter": "L",
        "cityCode": "0752",
        "pinyin": "Longmen"
    },
    {
        "id": "441400",
        "name": "梅州市",
        "parentId": "440000",
        "shortName": "梅州",
        "letter": "M",
        "cityCode": "0753",
        "pinyin": "Meizhou"
    },
    {
        "id": "441402",
        "name": "梅江区",
        "parentId": "441400",
        "shortName": "梅江",
        "letter": "M",
        "cityCode": "0753",
        "pinyin": "Meijiang"
    },
    {
        "id": "441403",
        "name": "梅县区",
        "parentId": "441400",
        "shortName": "梅县",
        "letter": "M",
        "cityCode": "0753",
        "pinyin": "Meixian"
    },
    {
        "id": "441422",
        "name": "大埔县",
        "parentId": "441400",
        "shortName": "大埔",
        "letter": "D",
        "cityCode": "0753",
        "pinyin": "Dabu"
    },
    {
        "id": "441423",
        "name": "丰顺县",
        "parentId": "441400",
        "shortName": "丰顺",
        "letter": "F",
        "cityCode": "0753",
        "pinyin": "Fengshun"
    },
    {
        "id": "441424",
        "name": "五华县",
        "parentId": "441400",
        "shortName": "五华",
        "letter": "W",
        "cityCode": "0753",
        "pinyin": "Wuhua"
    },
    {
        "id": "441426",
        "name": "平远县",
        "parentId": "441400",
        "shortName": "平远",
        "letter": "P",
        "cityCode": "0753",
        "pinyin": "Pingyuan"
    },
    {
        "id": "441427",
        "name": "蕉岭县",
        "parentId": "441400",
        "shortName": "蕉岭",
        "letter": "J",
        "cityCode": "0753",
        "pinyin": "Jiaoling"
    },
    {
        "id": "441481",
        "name": "兴宁市",
        "parentId": "441400",
        "shortName": "兴宁",
        "letter": "X",
        "cityCode": "0753",
        "pinyin": "Xingning"
    },
    {
        "id": "441500",
        "name": "汕尾市",
        "parentId": "440000",
        "shortName": "汕尾",
        "letter": "S",
        "cityCode": "0660",
        "pinyin": "Shanwei"
    },
    {
        "id": "441502",
        "name": "城区",
        "parentId": "441500",
        "shortName": "城区",
        "letter": "C",
        "cityCode": "0660",
        "pinyin": "Chengqu"
    },
    {
        "id": "441521",
        "name": "海丰县",
        "parentId": "441500",
        "shortName": "海丰",
        "letter": "H",
        "cityCode": "0660",
        "pinyin": "Haifeng"
    },
    {
        "id": "441523",
        "name": "陆河县",
        "parentId": "441500",
        "shortName": "陆河",
        "letter": "L",
        "cityCode": "0660",
        "pinyin": "Luhe"
    },
    {
        "id": "441581",
        "name": "陆丰市",
        "parentId": "441500",
        "shortName": "陆丰",
        "letter": "L",
        "cityCode": "0660",
        "pinyin": "Lufeng"
    },
    {
        "id": "441600",
        "name": "河源市",
        "parentId": "440000",
        "shortName": "河源",
        "letter": "H",
        "cityCode": "0762",
        "pinyin": "Heyuan"
    },
    {
        "id": "441602",
        "name": "源城区",
        "parentId": "441600",
        "shortName": "源城",
        "letter": "Y",
        "cityCode": "0762",
        "pinyin": "Yuancheng"
    },
    {
        "id": "441621",
        "name": "紫金县",
        "parentId": "441600",
        "shortName": "紫金",
        "letter": "Z",
        "cityCode": "0762",
        "pinyin": "Zijin"
    },
    {
        "id": "441622",
        "name": "龙川县",
        "parentId": "441600",
        "shortName": "龙川",
        "letter": "L",
        "cityCode": "0762",
        "pinyin": "Longchuan"
    },
    {
        "id": "441623",
        "name": "连平县",
        "parentId": "441600",
        "shortName": "连平",
        "letter": "L",
        "cityCode": "0762",
        "pinyin": "Lianping"
    },
    {
        "id": "441624",
        "name": "和平县",
        "parentId": "441600",
        "shortName": "和平",
        "letter": "H",
        "cityCode": "0762",
        "pinyin": "Heping"
    },
    {
        "id": "441625",
        "name": "东源县",
        "parentId": "441600",
        "shortName": "东源",
        "letter": "D",
        "cityCode": "0762",
        "pinyin": "Dongyuan"
    },
    {
        "id": "441700",
        "name": "阳江市",
        "parentId": "440000",
        "shortName": "阳江",
        "letter": "Y",
        "cityCode": "0662",
        "pinyin": "Yangjiang"
    },
    {
        "id": "441702",
        "name": "江城区",
        "parentId": "441700",
        "shortName": "江城",
        "letter": "J",
        "cityCode": "0662",
        "pinyin": "Jiangcheng"
    },
    {
        "id": "441704",
        "name": "阳东区",
        "parentId": "441700",
        "shortName": "阳东",
        "letter": "Y",
        "cityCode": "0662",
        "pinyin": "Yangdong"
    },
    {
        "id": "441721",
        "name": "阳西县",
        "parentId": "441700",
        "shortName": "阳西",
        "letter": "Y",
        "cityCode": "0662",
        "pinyin": "Yangxi"
    },
    {
        "id": "441781",
        "name": "阳春市",
        "parentId": "441700",
        "shortName": "阳春",
        "letter": "Y",
        "cityCode": "0662",
        "pinyin": "Yangchun"
    },
    {
        "id": "441800",
        "name": "清远市",
        "parentId": "440000",
        "shortName": "清远",
        "letter": "Q",
        "cityCode": "0763",
        "pinyin": "Qingyuan"
    },
    {
        "id": "441802",
        "name": "清城区",
        "parentId": "441800",
        "shortName": "清城",
        "letter": "Q",
        "cityCode": "0763",
        "pinyin": "Qingcheng"
    },
    {
        "id": "441803",
        "name": "清新区",
        "parentId": "441800",
        "shortName": "清新",
        "letter": "Q",
        "cityCode": "0763",
        "pinyin": "Qingxin"
    },
    {
        "id": "441821",
        "name": "佛冈县",
        "parentId": "441800",
        "shortName": "佛冈",
        "letter": "F",
        "cityCode": "0763",
        "pinyin": "Fogang"
    },
    {
        "id": "441823",
        "name": "阳山县",
        "parentId": "441800",
        "shortName": "阳山",
        "letter": "Y",
        "cityCode": "0763",
        "pinyin": "Yangshan"
    },
    {
        "id": "441825",
        "name": "连山壮族瑶族自治县",
        "parentId": "441800",
        "shortName": "连山",
        "letter": "L",
        "cityCode": "0763",
        "pinyin": "Lianshan"
    },
    {
        "id": "441826",
        "name": "连南瑶族自治县",
        "parentId": "441800",
        "shortName": "连南",
        "letter": "L",
        "cityCode": "0763",
        "pinyin": "Liannan"
    },
    {
        "id": "441881",
        "name": "英德市",
        "parentId": "441800",
        "shortName": "英德",
        "letter": "Y",
        "cityCode": "0763",
        "pinyin": "Yingde"
    },
    {
        "id": "441882",
        "name": "连州市",
        "parentId": "441800",
        "shortName": "连州",
        "letter": "L",
        "cityCode": "0763",
        "pinyin": "Lianzhou"
    },
    {
        "id": "441900",
        "name": "东莞市",
        "parentId": "440000",
        "shortName": "东莞",
        "letter": "D",
        "cityCode": "0769",
        "pinyin": "Dongguan"
    },
    {
        "id": "441901",
        "name": "莞城区",
        "parentId": "441900",
        "shortName": "莞城",
        "letter": "G",
        "cityCode": "0769",
        "pinyin": "Guancheng"
    },
    {
        "id": "441902",
        "name": "南城区",
        "parentId": "441900",
        "shortName": "南城",
        "letter": "N",
        "cityCode": "0769",
        "pinyin": "Nancheng"
    },
    {
        "id": "441904",
        "name": "万江区",
        "parentId": "441900",
        "shortName": "万江",
        "letter": "W",
        "cityCode": "0769",
        "pinyin": "Wanjiang"
    },
    {
        "id": "441905",
        "name": "石碣镇",
        "parentId": "441900",
        "shortName": "石碣",
        "letter": "S",
        "cityCode": "0769",
        "pinyin": "Shijie"
    },
    {
        "id": "441906",
        "name": "石龙镇",
        "parentId": "441900",
        "shortName": "石龙",
        "letter": "S",
        "cityCode": "0769",
        "pinyin": "Shilong"
    },
    {
        "id": "441907",
        "name": "茶山镇",
        "parentId": "441900",
        "shortName": "茶山",
        "letter": "C",
        "cityCode": "0769",
        "pinyin": "Chashan"
    },
    {
        "id": "441908",
        "name": "石排镇",
        "parentId": "441900",
        "shortName": "石排",
        "letter": "S",
        "cityCode": "0769",
        "pinyin": "Shipai"
    },
    {
        "id": "441909",
        "name": "企石镇",
        "parentId": "441900",
        "shortName": "企石",
        "letter": "Q",
        "cityCode": "0769",
        "pinyin": "Qishi"
    },
    {
        "id": "441910",
        "name": "横沥镇",
        "parentId": "441900",
        "shortName": "横沥",
        "letter": "H",
        "cityCode": "0769",
        "pinyin": "Hengli"
    },
    {
        "id": "441911",
        "name": "桥头镇",
        "parentId": "441900",
        "shortName": "桥头",
        "letter": "Q",
        "cityCode": "0769",
        "pinyin": "Qiaotou"
    },
    {
        "id": "441912",
        "name": "谢岗镇",
        "parentId": "441900",
        "shortName": "谢岗",
        "letter": "X",
        "cityCode": "0769",
        "pinyin": "Xiegang"
    },
    {
        "id": "441913",
        "name": "东坑镇",
        "parentId": "441900",
        "shortName": "东坑",
        "letter": "D",
        "cityCode": "0769",
        "pinyin": "Dongkeng"
    },
    {
        "id": "441914",
        "name": "常平镇",
        "parentId": "441900",
        "shortName": "常平",
        "letter": "C",
        "cityCode": "0769",
        "pinyin": "Changping"
    },
    {
        "id": "441915",
        "name": "寮步镇",
        "parentId": "441900",
        "shortName": "寮步",
        "letter": "L",
        "cityCode": "0769",
        "pinyin": "Liaobu"
    },
    {
        "id": "441916",
        "name": "大朗镇",
        "parentId": "441900",
        "shortName": "大朗",
        "letter": "D",
        "cityCode": "0769",
        "pinyin": "Dalang"
    },
    {
        "id": "441917",
        "name": "麻涌镇",
        "parentId": "441900",
        "shortName": "麻涌",
        "letter": "M",
        "cityCode": "0769",
        "pinyin": "Machong"
    },
    {
        "id": "441918",
        "name": "中堂镇",
        "parentId": "441900",
        "shortName": "中堂",
        "letter": "Z",
        "cityCode": "0769",
        "pinyin": "Zhongtang"
    },
    {
        "id": "441919",
        "name": "高埗镇",
        "parentId": "441900",
        "shortName": "高埗",
        "letter": "G",
        "cityCode": "0769",
        "pinyin": "Gaobu"
    },
    {
        "id": "441920",
        "name": "樟木头镇",
        "parentId": "441900",
        "shortName": "樟木头",
        "letter": "Z",
        "cityCode": "0769",
        "pinyin": "Zhangmutou"
    },
    {
        "id": "441921",
        "name": "大岭山镇",
        "parentId": "441900",
        "shortName": "大岭山",
        "letter": "D",
        "cityCode": "0769",
        "pinyin": "Dalingshan"
    },
    {
        "id": "441922",
        "name": "望牛墩镇",
        "parentId": "441900",
        "shortName": "望牛墩",
        "letter": "W",
        "cityCode": "0769",
        "pinyin": "Wangniudun"
    },
    {
        "id": "441923",
        "name": "黄江镇",
        "parentId": "441900",
        "shortName": "黄江",
        "letter": "H",
        "cityCode": "0769",
        "pinyin": "Huangjiang"
    },
    {
        "id": "441924",
        "name": "洪梅镇",
        "parentId": "441900",
        "shortName": "洪梅",
        "letter": "H",
        "cityCode": "0769",
        "pinyin": "Hongmei"
    },
    {
        "id": "441925",
        "name": "清溪镇",
        "parentId": "441900",
        "shortName": "清溪",
        "letter": "Q",
        "cityCode": "0769",
        "pinyin": "Qingxi"
    },
    {
        "id": "441926",
        "name": "沙田镇",
        "parentId": "441900",
        "shortName": "沙田",
        "letter": "S",
        "cityCode": "0769",
        "pinyin": "Shatian"
    },
    {
        "id": "441927",
        "name": "道滘镇",
        "parentId": "441900",
        "shortName": "道滘",
        "letter": "D",
        "cityCode": "0769",
        "pinyin": "Daojiao"
    },
    {
        "id": "441928",
        "name": "塘厦镇",
        "parentId": "441900",
        "shortName": "塘厦",
        "letter": "T",
        "cityCode": "0769",
        "pinyin": "Tangxia"
    },
    {
        "id": "441929",
        "name": "虎门镇",
        "parentId": "441900",
        "shortName": "虎门",
        "letter": "H",
        "cityCode": "0769",
        "pinyin": "Humen"
    },
    {
        "id": "441930",
        "name": "厚街镇",
        "parentId": "441900",
        "shortName": "厚街",
        "letter": "H",
        "cityCode": "0769",
        "pinyin": "Houjie"
    },
    {
        "id": "441931",
        "name": "凤岗镇",
        "parentId": "441900",
        "shortName": "凤岗",
        "letter": "F",
        "cityCode": "0769",
        "pinyin": "Fenggang"
    },
    {
        "id": "441932",
        "name": "长安镇",
        "parentId": "441900",
        "shortName": "长安",
        "letter": "C",
        "cityCode": "0769",
        "pinyin": "Chang'an"
    },
    {
        "id": "442000",
        "name": "中山市",
        "parentId": "440000",
        "shortName": "中山",
        "letter": "Z",
        "cityCode": "0760",
        "pinyin": "Zhongshan"
    },
    {
        "id": "442001",
        "name": "石岐区",
        "parentId": "442000",
        "shortName": "石岐",
        "letter": "S",
        "cityCode": "0760",
        "pinyin": "Shiqi"
    },
    {
        "id": "442004",
        "name": "南区",
        "parentId": "442000",
        "shortName": "南区",
        "letter": "N",
        "cityCode": "0760",
        "pinyin": "Nanqu"
    },
    {
        "id": "442005",
        "name": "五桂山区",
        "parentId": "442000",
        "shortName": "五桂山",
        "letter": "W",
        "cityCode": "0760",
        "pinyin": "Wuguishan"
    },
    {
        "id": "442006",
        "name": "火炬开发区",
        "parentId": "442000",
        "shortName": "火炬",
        "letter": "H",
        "cityCode": "0760",
        "pinyin": "Huoju"
    },
    {
        "id": "442007",
        "name": "黄圃镇",
        "parentId": "442000",
        "shortName": "黄圃",
        "letter": "H",
        "cityCode": "0760",
        "pinyin": "Huangpu"
    },
    {
        "id": "442008",
        "name": "南头镇",
        "parentId": "442000",
        "shortName": "南头",
        "letter": "N",
        "cityCode": "0760",
        "pinyin": "Nantou"
    },
    {
        "id": "442009",
        "name": "东凤镇",
        "parentId": "442000",
        "shortName": "东凤",
        "letter": "D",
        "cityCode": "0760",
        "pinyin": "Dongfeng"
    },
    {
        "id": "442010",
        "name": "阜沙镇",
        "parentId": "442000",
        "shortName": "阜沙",
        "letter": "F",
        "cityCode": "0760",
        "pinyin": "Fusha"
    },
    {
        "id": "442011",
        "name": "小榄镇",
        "parentId": "442000",
        "shortName": "小榄",
        "letter": "X",
        "cityCode": "0760",
        "pinyin": "Xiaolan"
    },
    {
        "id": "442012",
        "name": "东升镇",
        "parentId": "442000",
        "shortName": "东升",
        "letter": "D",
        "cityCode": "0760",
        "pinyin": "Dongsheng"
    },
    {
        "id": "442013",
        "name": "古镇镇",
        "parentId": "442000",
        "shortName": "古镇",
        "letter": "G",
        "cityCode": "0760",
        "pinyin": "Guzhen"
    },
    {
        "id": "442014",
        "name": "横栏镇",
        "parentId": "442000",
        "shortName": "横栏",
        "letter": "H",
        "cityCode": "0760",
        "pinyin": "Henglan"
    },
    {
        "id": "442015",
        "name": "三角镇",
        "parentId": "442000",
        "shortName": "三角",
        "letter": "S",
        "cityCode": "0760",
        "pinyin": "Sanjiao"
    },
    {
        "id": "442016",
        "name": "民众镇",
        "parentId": "442000",
        "shortName": "民众",
        "letter": "M",
        "cityCode": "0760",
        "pinyin": "Minzhong"
    },
    {
        "id": "442017",
        "name": "南朗镇",
        "parentId": "442000",
        "shortName": "南朗",
        "letter": "N",
        "cityCode": "0760",
        "pinyin": "Nanlang"
    },
    {
        "id": "442018",
        "name": "港口镇",
        "parentId": "442000",
        "shortName": "港口",
        "letter": "G",
        "cityCode": "0760",
        "pinyin": "Gangkou"
    },
    {
        "id": "442019",
        "name": "大涌镇",
        "parentId": "442000",
        "shortName": "大涌",
        "letter": "D",
        "cityCode": "0760",
        "pinyin": "Dayong"
    },
    {
        "id": "442020",
        "name": "沙溪镇",
        "parentId": "442000",
        "shortName": "沙溪",
        "letter": "S",
        "cityCode": "0760",
        "pinyin": "Shaxi"
    },
    {
        "id": "442021",
        "name": "三乡镇",
        "parentId": "442000",
        "shortName": "三乡",
        "letter": "S",
        "cityCode": "0760",
        "pinyin": "Sanxiang"
    },
    {
        "id": "442022",
        "name": "板芙镇",
        "parentId": "442000",
        "shortName": "板芙",
        "letter": "B",
        "cityCode": "0760",
        "pinyin": "Banfu"
    },
    {
        "id": "442023",
        "name": "神湾镇",
        "parentId": "442000",
        "shortName": "神湾",
        "letter": "S",
        "cityCode": "0760",
        "pinyin": "Shenwan"
    },
    {
        "id": "442024",
        "name": "坦洲镇",
        "parentId": "442000",
        "shortName": "坦洲",
        "letter": "T",
        "cityCode": "0760",
        "pinyin": "Tanzhou"
    },
    {
        "id": "445100",
        "name": "潮州市",
        "parentId": "440000",
        "shortName": "潮州",
        "letter": "C",
        "cityCode": "0768",
        "pinyin": "Chaozhou"
    },
    {
        "id": "445102",
        "name": "湘桥区",
        "parentId": "445100",
        "shortName": "湘桥",
        "letter": "X",
        "cityCode": "0768",
        "pinyin": "Xiangqiao"
    },
    {
        "id": "445103",
        "name": "潮安区",
        "parentId": "445100",
        "shortName": "潮安",
        "letter": "C",
        "cityCode": "0768",
        "pinyin": "Chao'an"
    },
    {
        "id": "445122",
        "name": "饶平县",
        "parentId": "445100",
        "shortName": "饶平",
        "letter": "R",
        "cityCode": "0768",
        "pinyin": "Raoping"
    },
    {
        "id": "445200",
        "name": "揭阳市",
        "parentId": "440000",
        "shortName": "揭阳",
        "letter": "J",
        "cityCode": "0633",
        "pinyin": "Jieyang"
    },
    {
        "id": "445202",
        "name": "榕城区",
        "parentId": "445200",
        "shortName": "榕城",
        "letter": "R",
        "cityCode": "0633",
        "pinyin": "Rongcheng"
    },
    {
        "id": "445203",
        "name": "揭东区",
        "parentId": "445200",
        "shortName": "揭东",
        "letter": "J",
        "cityCode": "0633",
        "pinyin": "Jiedong"
    },
    {
        "id": "445222",
        "name": "揭西县",
        "parentId": "445200",
        "shortName": "揭西",
        "letter": "J",
        "cityCode": "0633",
        "pinyin": "Jiexi"
    },
    {
        "id": "445224",
        "name": "惠来县",
        "parentId": "445200",
        "shortName": "惠来",
        "letter": "H",
        "cityCode": "0633",
        "pinyin": "Huilai"
    },
    {
        "id": "445281",
        "name": "普宁市",
        "parentId": "445200",
        "shortName": "普宁",
        "letter": "P",
        "cityCode": "0633",
        "pinyin": "Puning"
    },
    {
        "id": "445300",
        "name": "云浮市",
        "parentId": "440000",
        "shortName": "云浮",
        "letter": "Y",
        "cityCode": "0766",
        "pinyin": "Yunfu"
    },
    {
        "id": "445302",
        "name": "云城区",
        "parentId": "445300",
        "shortName": "云城",
        "letter": "Y",
        "cityCode": "0766",
        "pinyin": "Yuncheng"
    },
    {
        "id": "445303",
        "name": "云安区",
        "parentId": "445300",
        "shortName": "云安",
        "letter": "Y",
        "cityCode": "0766",
        "pinyin": "Yun'an"
    },
    {
        "id": "445321",
        "name": "新兴县",
        "parentId": "445300",
        "shortName": "新兴",
        "letter": "X",
        "cityCode": "0766",
        "pinyin": "Xinxing"
    },
    {
        "id": "445322",
        "name": "郁南县",
        "parentId": "445300",
        "shortName": "郁南",
        "letter": "Y",
        "cityCode": "0766",
        "pinyin": "Yunan"
    },
    {
        "id": "445381",
        "name": "罗定市",
        "parentId": "445300",
        "shortName": "罗定",
        "letter": "L",
        "cityCode": "0766",
        "pinyin": "Luoding"
    },
    {
        "id": "450000",
        "name": "广西壮族自治区",
        "parentId": "100000",
        "shortName": "广西",
        "letter": "G",
        "cityCode": "",
        "pinyin": "Guangxi"
    },
    {
        "id": "450100",
        "name": "南宁市",
        "parentId": "450000",
        "shortName": "南宁",
        "letter": "N",
        "cityCode": "0771",
        "pinyin": "Nanning"
    },
    {
        "id": "450102",
        "name": "兴宁区",
        "parentId": "450100",
        "shortName": "兴宁",
        "letter": "X",
        "cityCode": "0771",
        "pinyin": "Xingning"
    },
    {
        "id": "450103",
        "name": "青秀区",
        "parentId": "450100",
        "shortName": "青秀",
        "letter": "Q",
        "cityCode": "0771",
        "pinyin": "Qingxiu"
    },
    {
        "id": "450105",
        "name": "江南区",
        "parentId": "450100",
        "shortName": "江南",
        "letter": "J",
        "cityCode": "0771",
        "pinyin": "Jiangnan"
    },
    {
        "id": "450107",
        "name": "西乡塘区",
        "parentId": "450100",
        "shortName": "西乡塘",
        "letter": "X",
        "cityCode": "0771",
        "pinyin": "Xixiangtang"
    },
    {
        "id": "450108",
        "name": "良庆区",
        "parentId": "450100",
        "shortName": "良庆",
        "letter": "L",
        "cityCode": "0771",
        "pinyin": "Liangqing"
    },
    {
        "id": "450109",
        "name": "邕宁区",
        "parentId": "450100",
        "shortName": "邕宁",
        "letter": "Y",
        "cityCode": "0771",
        "pinyin": "Yongning"
    },
    {
        "id": "450122",
        "name": "武鸣县",
        "parentId": "450100",
        "shortName": "武鸣",
        "letter": "W",
        "cityCode": "0771",
        "pinyin": "Wuming"
    },
    {
        "id": "450123",
        "name": "隆安县",
        "parentId": "450100",
        "shortName": "隆安",
        "letter": "L",
        "cityCode": "0771",
        "pinyin": "Long'an"
    },
    {
        "id": "450124",
        "name": "马山县",
        "parentId": "450100",
        "shortName": "马山",
        "letter": "M",
        "cityCode": "0771",
        "pinyin": "Mashan"
    },
    {
        "id": "450125",
        "name": "上林县",
        "parentId": "450100",
        "shortName": "上林",
        "letter": "S",
        "cityCode": "0771",
        "pinyin": "Shanglin"
    },
    {
        "id": "450126",
        "name": "宾阳县",
        "parentId": "450100",
        "shortName": "宾阳",
        "letter": "B",
        "cityCode": "0771",
        "pinyin": "Binyang"
    },
    {
        "id": "450127",
        "name": "横县",
        "parentId": "450100",
        "shortName": "横县",
        "letter": "H",
        "cityCode": "0771",
        "pinyin": "Hengxian"
    },
    {
        "id": "450128",
        "name": "埌东新区",
        "parentId": "450100",
        "shortName": "埌东",
        "letter": "L",
        "cityCode": "0771",
        "pinyin": "Langdong"
    },
    {
        "id": "450200",
        "name": "柳州市",
        "parentId": "450000",
        "shortName": "柳州",
        "letter": "L",
        "cityCode": "0772",
        "pinyin": "Liuzhou"
    },
    {
        "id": "450202",
        "name": "城中区",
        "parentId": "450200",
        "shortName": "城中",
        "letter": "C",
        "cityCode": "0772",
        "pinyin": "Chengzhong"
    },
    {
        "id": "450203",
        "name": "鱼峰区",
        "parentId": "450200",
        "shortName": "鱼峰",
        "letter": "Y",
        "cityCode": "0772",
        "pinyin": "Yufeng"
    },
    {
        "id": "450204",
        "name": "柳南区",
        "parentId": "450200",
        "shortName": "柳南",
        "letter": "L",
        "cityCode": "0772",
        "pinyin": "Liunan"
    },
    {
        "id": "450205",
        "name": "柳北区",
        "parentId": "450200",
        "shortName": "柳北",
        "letter": "L",
        "cityCode": "0772",
        "pinyin": "Liubei"
    },
    {
        "id": "450221",
        "name": "柳江县",
        "parentId": "450200",
        "shortName": "柳江",
        "letter": "L",
        "cityCode": "0772",
        "pinyin": "Liujiang"
    },
    {
        "id": "450222",
        "name": "柳城县",
        "parentId": "450200",
        "shortName": "柳城",
        "letter": "L",
        "cityCode": "0772",
        "pinyin": "Liucheng"
    },
    {
        "id": "450223",
        "name": "鹿寨县",
        "parentId": "450200",
        "shortName": "鹿寨",
        "letter": "L",
        "cityCode": "0772",
        "pinyin": "Luzhai"
    },
    {
        "id": "450224",
        "name": "融安县",
        "parentId": "450200",
        "shortName": "融安",
        "letter": "R",
        "cityCode": "0772",
        "pinyin": "Rong'an"
    },
    {
        "id": "450225",
        "name": "融水苗族自治县",
        "parentId": "450200",
        "shortName": "融水",
        "letter": "R",
        "cityCode": "0772",
        "pinyin": "Rongshui"
    },
    {
        "id": "450226",
        "name": "三江侗族自治县",
        "parentId": "450200",
        "shortName": "三江",
        "letter": "S",
        "cityCode": "0772",
        "pinyin": "Sanjiang"
    },
    {
        "id": "450227",
        "name": "柳东新区",
        "parentId": "450200",
        "shortName": "柳东",
        "letter": "L",
        "cityCode": "0772",
        "pinyin": "Liudong"
    },
    {
        "id": "450300",
        "name": "桂林市",
        "parentId": "450000",
        "shortName": "桂林",
        "letter": "G",
        "cityCode": "0773",
        "pinyin": "Guilin"
    },
    {
        "id": "450302",
        "name": "秀峰区",
        "parentId": "450300",
        "shortName": "秀峰",
        "letter": "X",
        "cityCode": "0773",
        "pinyin": "Xiufeng"
    },
    {
        "id": "450303",
        "name": "叠彩区",
        "parentId": "450300",
        "shortName": "叠彩",
        "letter": "D",
        "cityCode": "0773",
        "pinyin": "Diecai"
    },
    {
        "id": "450304",
        "name": "象山区",
        "parentId": "450300",
        "shortName": "象山",
        "letter": "X",
        "cityCode": "0773",
        "pinyin": "Xiangshan"
    },
    {
        "id": "450305",
        "name": "七星区",
        "parentId": "450300",
        "shortName": "七星",
        "letter": "Q",
        "cityCode": "0773",
        "pinyin": "Qixing"
    },
    {
        "id": "450311",
        "name": "雁山区",
        "parentId": "450300",
        "shortName": "雁山",
        "letter": "Y",
        "cityCode": "0773",
        "pinyin": "Yanshan"
    },
    {
        "id": "450312",
        "name": "临桂区",
        "parentId": "450300",
        "shortName": "临桂",
        "letter": "L",
        "cityCode": "0773",
        "pinyin": "Lingui"
    },
    {
        "id": "450321",
        "name": "阳朔县",
        "parentId": "450300",
        "shortName": "阳朔",
        "letter": "Y",
        "cityCode": "0773",
        "pinyin": "Yangshuo"
    },
    {
        "id": "450323",
        "name": "灵川县",
        "parentId": "450300",
        "shortName": "灵川",
        "letter": "L",
        "cityCode": "0773",
        "pinyin": "Lingchuan"
    },
    {
        "id": "450324",
        "name": "全州县",
        "parentId": "450300",
        "shortName": "全州",
        "letter": "Q",
        "cityCode": "0773",
        "pinyin": "Quanzhou"
    },
    {
        "id": "450325",
        "name": "兴安县",
        "parentId": "450300",
        "shortName": "兴安",
        "letter": "X",
        "cityCode": "0773",
        "pinyin": "Xing'an"
    },
    {
        "id": "450326",
        "name": "永福县",
        "parentId": "450300",
        "shortName": "永福",
        "letter": "Y",
        "cityCode": "0773",
        "pinyin": "Yongfu"
    },
    {
        "id": "450327",
        "name": "灌阳县",
        "parentId": "450300",
        "shortName": "灌阳",
        "letter": "G",
        "cityCode": "0773",
        "pinyin": "Guanyang"
    },
    {
        "id": "450328",
        "name": "龙胜各族自治县",
        "parentId": "450300",
        "shortName": "龙胜",
        "letter": "L",
        "cityCode": "0773",
        "pinyin": "Longsheng"
    },
    {
        "id": "450329",
        "name": "资源县",
        "parentId": "450300",
        "shortName": "资源",
        "letter": "Z",
        "cityCode": "0773",
        "pinyin": "Ziyuan"
    },
    {
        "id": "450330",
        "name": "平乐县",
        "parentId": "450300",
        "shortName": "平乐",
        "letter": "P",
        "cityCode": "0773",
        "pinyin": "Pingle"
    },
    {
        "id": "450331",
        "name": "荔浦县",
        "parentId": "450300",
        "shortName": "荔浦",
        "letter": "L",
        "cityCode": "0773",
        "pinyin": "Lipu"
    },
    {
        "id": "450332",
        "name": "恭城瑶族自治县",
        "parentId": "450300",
        "shortName": "恭城",
        "letter": "G",
        "cityCode": "0773",
        "pinyin": "Gongcheng"
    },
    {
        "id": "450400",
        "name": "梧州市",
        "parentId": "450000",
        "shortName": "梧州",
        "letter": "W",
        "cityCode": "0774",
        "pinyin": "Wuzhou"
    },
    {
        "id": "450403",
        "name": "万秀区",
        "parentId": "450400",
        "shortName": "万秀",
        "letter": "W",
        "cityCode": "0774",
        "pinyin": "Wanxiu"
    },
    {
        "id": "450405",
        "name": "长洲区",
        "parentId": "450400",
        "shortName": "长洲",
        "letter": "C",
        "cityCode": "0774",
        "pinyin": "Changzhou"
    },
    {
        "id": "450406",
        "name": "龙圩区",
        "parentId": "450400",
        "shortName": "龙圩",
        "letter": "L",
        "cityCode": "0774",
        "pinyin": "Longxu"
    },
    {
        "id": "450421",
        "name": "苍梧县",
        "parentId": "450400",
        "shortName": "苍梧",
        "letter": "C",
        "cityCode": "0774",
        "pinyin": "Cangwu"
    },
    {
        "id": "450422",
        "name": "藤县",
        "parentId": "450400",
        "shortName": "藤县",
        "letter": "T",
        "cityCode": "0774",
        "pinyin": "Tengxian"
    },
    {
        "id": "450423",
        "name": "蒙山县",
        "parentId": "450400",
        "shortName": "蒙山",
        "letter": "M",
        "cityCode": "0774",
        "pinyin": "Mengshan"
    },
    {
        "id": "450481",
        "name": "岑溪市",
        "parentId": "450400",
        "shortName": "岑溪",
        "letter": "C",
        "cityCode": "0774",
        "pinyin": "Cenxi"
    },
    {
        "id": "450500",
        "name": "北海市",
        "parentId": "450000",
        "shortName": "北海",
        "letter": "B",
        "cityCode": "0779",
        "pinyin": "Beihai"
    },
    {
        "id": "450502",
        "name": "海城区",
        "parentId": "450500",
        "shortName": "海城",
        "letter": "H",
        "cityCode": "0779",
        "pinyin": "Haicheng"
    },
    {
        "id": "450503",
        "name": "银海区",
        "parentId": "450500",
        "shortName": "银海",
        "letter": "Y",
        "cityCode": "0779",
        "pinyin": "Yinhai"
    },
    {
        "id": "450512",
        "name": "铁山港区",
        "parentId": "450500",
        "shortName": "铁山港",
        "letter": "T",
        "cityCode": "0779",
        "pinyin": "Tieshangang"
    },
    {
        "id": "450521",
        "name": "合浦县",
        "parentId": "450500",
        "shortName": "合浦",
        "letter": "H",
        "cityCode": "0779",
        "pinyin": "Hepu"
    },
    {
        "id": "450600",
        "name": "防城港市",
        "parentId": "450000",
        "shortName": "防城港",
        "letter": "F",
        "cityCode": "0770",
        "pinyin": "Fangchenggang"
    },
    {
        "id": "450602",
        "name": "港口区",
        "parentId": "450600",
        "shortName": "港口",
        "letter": "G",
        "cityCode": "0770",
        "pinyin": "Gangkou"
    },
    {
        "id": "450603",
        "name": "防城区",
        "parentId": "450600",
        "shortName": "防城",
        "letter": "F",
        "cityCode": "0770",
        "pinyin": "Fangcheng"
    },
    {
        "id": "450621",
        "name": "上思县",
        "parentId": "450600",
        "shortName": "上思",
        "letter": "S",
        "cityCode": "0770",
        "pinyin": "Shangsi"
    },
    {
        "id": "450681",
        "name": "东兴市",
        "parentId": "450600",
        "shortName": "东兴",
        "letter": "D",
        "cityCode": "0770",
        "pinyin": "Dongxing"
    },
    {
        "id": "450700",
        "name": "钦州市",
        "parentId": "450000",
        "shortName": "钦州",
        "letter": "Q",
        "cityCode": "0777",
        "pinyin": "Qinzhou"
    },
    {
        "id": "450702",
        "name": "钦南区",
        "parentId": "450700",
        "shortName": "钦南",
        "letter": "Q",
        "cityCode": "0777",
        "pinyin": "Qinnan"
    },
    {
        "id": "450703",
        "name": "钦北区",
        "parentId": "450700",
        "shortName": "钦北",
        "letter": "Q",
        "cityCode": "0777",
        "pinyin": "Qinbei"
    },
    {
        "id": "450721",
        "name": "灵山县",
        "parentId": "450700",
        "shortName": "灵山",
        "letter": "L",
        "cityCode": "0777",
        "pinyin": "Lingshan"
    },
    {
        "id": "450722",
        "name": "浦北县",
        "parentId": "450700",
        "shortName": "浦北",
        "letter": "P",
        "cityCode": "0777",
        "pinyin": "Pubei"
    },
    {
        "id": "450800",
        "name": "贵港市",
        "parentId": "450000",
        "shortName": "贵港",
        "letter": "G",
        "cityCode": "0775",
        "pinyin": "Guigang"
    },
    {
        "id": "450802",
        "name": "港北区",
        "parentId": "450800",
        "shortName": "港北",
        "letter": "G",
        "cityCode": "0775",
        "pinyin": "Gangbei"
    },
    {
        "id": "450803",
        "name": "港南区",
        "parentId": "450800",
        "shortName": "港南",
        "letter": "G",
        "cityCode": "0775",
        "pinyin": "Gangnan"
    },
    {
        "id": "450804",
        "name": "覃塘区",
        "parentId": "450800",
        "shortName": "覃塘",
        "letter": "Q",
        "cityCode": "0775",
        "pinyin": "Qintang"
    },
    {
        "id": "450821",
        "name": "平南县",
        "parentId": "450800",
        "shortName": "平南",
        "letter": "P",
        "cityCode": "0775",
        "pinyin": "Pingnan"
    },
    {
        "id": "450881",
        "name": "桂平市",
        "parentId": "450800",
        "shortName": "桂平",
        "letter": "G",
        "cityCode": "0775",
        "pinyin": "Guiping"
    },
    {
        "id": "450900",
        "name": "玉林市",
        "parentId": "450000",
        "shortName": "玉林",
        "letter": "Y",
        "cityCode": "0775",
        "pinyin": "Yulin"
    },
    {
        "id": "450902",
        "name": "玉州区",
        "parentId": "450900",
        "shortName": "玉州",
        "letter": "Y",
        "cityCode": "0775",
        "pinyin": "Yuzhou"
    },
    {
        "id": "450903",
        "name": "福绵区",
        "parentId": "450900",
        "shortName": "福绵",
        "letter": "F",
        "cityCode": "0775",
        "pinyin": "Fumian"
    },
    {
        "id": "450904",
        "name": "玉东新区",
        "parentId": "450900",
        "shortName": "玉东",
        "letter": "Y",
        "cityCode": "0775",
        "pinyin": "Yudong"
    },
    {
        "id": "450921",
        "name": "容县",
        "parentId": "450900",
        "shortName": "容县",
        "letter": "R",
        "cityCode": "0775",
        "pinyin": "Rongxian"
    },
    {
        "id": "450922",
        "name": "陆川县",
        "parentId": "450900",
        "shortName": "陆川",
        "letter": "L",
        "cityCode": "0775",
        "pinyin": "Luchuan"
    },
    {
        "id": "450923",
        "name": "博白县",
        "parentId": "450900",
        "shortName": "博白",
        "letter": "B",
        "cityCode": "0775",
        "pinyin": "Bobai"
    },
    {
        "id": "450924",
        "name": "兴业县",
        "parentId": "450900",
        "shortName": "兴业",
        "letter": "X",
        "cityCode": "0775",
        "pinyin": "Xingye"
    },
    {
        "id": "450981",
        "name": "北流市",
        "parentId": "450900",
        "shortName": "北流",
        "letter": "B",
        "cityCode": "0775",
        "pinyin": "Beiliu"
    },
    {
        "id": "451000",
        "name": "百色市",
        "parentId": "450000",
        "shortName": "百色",
        "letter": "B",
        "cityCode": "0776",
        "pinyin": "Baise"
    },
    {
        "id": "451002",
        "name": "右江区",
        "parentId": "451000",
        "shortName": "右江",
        "letter": "Y",
        "cityCode": "0776",
        "pinyin": "Youjiang"
    },
    {
        "id": "451021",
        "name": "田阳县",
        "parentId": "451000",
        "shortName": "田阳",
        "letter": "T",
        "cityCode": "0776",
        "pinyin": "Tianyang"
    },
    {
        "id": "451022",
        "name": "田东县",
        "parentId": "451000",
        "shortName": "田东",
        "letter": "T",
        "cityCode": "0776",
        "pinyin": "Tiandong"
    },
    {
        "id": "451023",
        "name": "平果县",
        "parentId": "451000",
        "shortName": "平果",
        "letter": "P",
        "cityCode": "0776",
        "pinyin": "Pingguo"
    },
    {
        "id": "451024",
        "name": "德保县",
        "parentId": "451000",
        "shortName": "德保",
        "letter": "D",
        "cityCode": "0776",
        "pinyin": "Debao"
    },
    {
        "id": "451025",
        "name": "靖西县",
        "parentId": "451000",
        "shortName": "靖西",
        "letter": "J",
        "cityCode": "0776",
        "pinyin": "Jingxi"
    },
    {
        "id": "451026",
        "name": "那坡县",
        "parentId": "451000",
        "shortName": "那坡",
        "letter": "N",
        "cityCode": "0776",
        "pinyin": "Napo"
    },
    {
        "id": "451027",
        "name": "凌云县",
        "parentId": "451000",
        "shortName": "凌云",
        "letter": "L",
        "cityCode": "0776",
        "pinyin": "Lingyun"
    },
    {
        "id": "451028",
        "name": "乐业县",
        "parentId": "451000",
        "shortName": "乐业",
        "letter": "L",
        "cityCode": "0776",
        "pinyin": "Leye"
    },
    {
        "id": "451029",
        "name": "田林县",
        "parentId": "451000",
        "shortName": "田林",
        "letter": "T",
        "cityCode": "0776",
        "pinyin": "Tianlin"
    },
    {
        "id": "451030",
        "name": "西林县",
        "parentId": "451000",
        "shortName": "西林",
        "letter": "X",
        "cityCode": "0776",
        "pinyin": "Xilin"
    },
    {
        "id": "451031",
        "name": "隆林各族自治县",
        "parentId": "451000",
        "shortName": "隆林",
        "letter": "L",
        "cityCode": "0776",
        "pinyin": "Longlin"
    },
    {
        "id": "451100",
        "name": "贺州市",
        "parentId": "450000",
        "shortName": "贺州",
        "letter": "H",
        "cityCode": "0774",
        "pinyin": "Hezhou"
    },
    {
        "id": "451102",
        "name": "八步区",
        "parentId": "451100",
        "shortName": "八步",
        "letter": "B",
        "cityCode": "0774",
        "pinyin": "Babu"
    },
    {
        "id": "451121",
        "name": "昭平县",
        "parentId": "451100",
        "shortName": "昭平",
        "letter": "Z",
        "cityCode": "0774",
        "pinyin": "Zhaoping"
    },
    {
        "id": "451122",
        "name": "钟山县",
        "parentId": "451100",
        "shortName": "钟山",
        "letter": "Z",
        "cityCode": "0774",
        "pinyin": "Zhongshan"
    },
    {
        "id": "451123",
        "name": "富川瑶族自治县",
        "parentId": "451100",
        "shortName": "富川",
        "letter": "F",
        "cityCode": "0774",
        "pinyin": "Fuchuan"
    },
    {
        "id": "451124",
        "name": "平桂管理区",
        "parentId": "451100",
        "shortName": "平桂",
        "letter": "P",
        "cityCode": "0774",
        "pinyin": "Pingui"
    },
    {
        "id": "451200",
        "name": "河池市",
        "parentId": "450000",
        "shortName": "河池",
        "letter": "H",
        "cityCode": "0778",
        "pinyin": "Hechi"
    },
    {
        "id": "451202",
        "name": "金城江区",
        "parentId": "451200",
        "shortName": "金城江",
        "letter": "J",
        "cityCode": "0779",
        "pinyin": "Jinchengjiang"
    },
    {
        "id": "451221",
        "name": "南丹县",
        "parentId": "451200",
        "shortName": "南丹",
        "letter": "N",
        "cityCode": "0781",
        "pinyin": "Nandan"
    },
    {
        "id": "451222",
        "name": "天峨县",
        "parentId": "451200",
        "shortName": "天峨",
        "letter": "T",
        "cityCode": "0782",
        "pinyin": "Tiane"
    },
    {
        "id": "451223",
        "name": "凤山县",
        "parentId": "451200",
        "shortName": "凤山",
        "letter": "F",
        "cityCode": "0783",
        "pinyin": "Fengshan"
    },
    {
        "id": "451224",
        "name": "东兰县",
        "parentId": "451200",
        "shortName": "东兰",
        "letter": "D",
        "cityCode": "0784",
        "pinyin": "Donglan"
    },
    {
        "id": "451225",
        "name": "罗城仫佬族自治县",
        "parentId": "451200",
        "shortName": "罗城",
        "letter": "L",
        "cityCode": "0785",
        "pinyin": "Luocheng"
    },
    {
        "id": "451226",
        "name": "环江毛南族自治县",
        "parentId": "451200",
        "shortName": "环江",
        "letter": "H",
        "cityCode": "0786",
        "pinyin": "Huanjiang"
    },
    {
        "id": "451227",
        "name": "巴马瑶族自治县",
        "parentId": "451200",
        "shortName": "巴马",
        "letter": "B",
        "cityCode": "0787",
        "pinyin": "Bama"
    },
    {
        "id": "451228",
        "name": "都安瑶族自治县",
        "parentId": "451200",
        "shortName": "都安",
        "letter": "D",
        "cityCode": "0788",
        "pinyin": "Du'an"
    },
    {
        "id": "451229",
        "name": "大化瑶族自治县",
        "parentId": "451200",
        "shortName": "大化",
        "letter": "D",
        "cityCode": "0789",
        "pinyin": "Dahua"
    },
    {
        "id": "451281",
        "name": "宜州市",
        "parentId": "451200",
        "shortName": "宜州",
        "letter": "Y",
        "cityCode": "0780",
        "pinyin": "Yizhou"
    },
    {
        "id": "451300",
        "name": "来宾市",
        "parentId": "450000",
        "shortName": "来宾",
        "letter": "L",
        "cityCode": "0772",
        "pinyin": "Laibin"
    },
    {
        "id": "451302",
        "name": "兴宾区",
        "parentId": "451300",
        "shortName": "兴宾",
        "letter": "X",
        "cityCode": "0772",
        "pinyin": "Xingbin"
    },
    {
        "id": "451321",
        "name": "忻城县",
        "parentId": "451300",
        "shortName": "忻城",
        "letter": "X",
        "cityCode": "0772",
        "pinyin": "Xincheng"
    },
    {
        "id": "451322",
        "name": "象州县",
        "parentId": "451300",
        "shortName": "象州",
        "letter": "X",
        "cityCode": "0772",
        "pinyin": "Xiangzhou"
    },
    {
        "id": "451323",
        "name": "武宣县",
        "parentId": "451300",
        "shortName": "武宣",
        "letter": "W",
        "cityCode": "0772",
        "pinyin": "Wuxuan"
    },
    {
        "id": "451324",
        "name": "金秀瑶族自治县",
        "parentId": "451300",
        "shortName": "金秀",
        "letter": "J",
        "cityCode": "0772",
        "pinyin": "Jinxiu"
    },
    {
        "id": "451381",
        "name": "合山市",
        "parentId": "451300",
        "shortName": "合山",
        "letter": "H",
        "cityCode": "0772",
        "pinyin": "Heshan"
    },
    {
        "id": "451400",
        "name": "崇左市",
        "parentId": "450000",
        "shortName": "崇左",
        "letter": "C",
        "cityCode": "0771",
        "pinyin": "Chongzuo"
    },
    {
        "id": "451402",
        "name": "江州区",
        "parentId": "451400",
        "shortName": "江州",
        "letter": "J",
        "cityCode": "0771",
        "pinyin": "Jiangzhou"
    },
    {
        "id": "451421",
        "name": "扶绥县",
        "parentId": "451400",
        "shortName": "扶绥",
        "letter": "F",
        "cityCode": "0771",
        "pinyin": "Fusui"
    },
    {
        "id": "451422",
        "name": "宁明县",
        "parentId": "451400",
        "shortName": "宁明",
        "letter": "N",
        "cityCode": "0771",
        "pinyin": "Ningming"
    },
    {
        "id": "451423",
        "name": "龙州县",
        "parentId": "451400",
        "shortName": "龙州",
        "letter": "L",
        "cityCode": "0771",
        "pinyin": "Longzhou"
    },
    {
        "id": "451424",
        "name": "大新县",
        "parentId": "451400",
        "shortName": "大新",
        "letter": "D",
        "cityCode": "0771",
        "pinyin": "Daxin"
    },
    {
        "id": "451425",
        "name": "天等县",
        "parentId": "451400",
        "shortName": "天等",
        "letter": "T",
        "cityCode": "0771",
        "pinyin": "Tiandeng"
    },
    {
        "id": "451481",
        "name": "凭祥市",
        "parentId": "451400",
        "shortName": "凭祥",
        "letter": "P",
        "cityCode": "0771",
        "pinyin": "Pingxiang"
    },
    {
        "id": "460000",
        "name": "海南省",
        "parentId": "100000",
        "shortName": "海南",
        "letter": "H",
        "cityCode": "",
        "pinyin": "Hainan"
    },
    {
        "id": "460100",
        "name": "海口市",
        "parentId": "460000",
        "shortName": "海口",
        "letter": "H",
        "cityCode": "0898",
        "pinyin": "Haikou"
    },
    {
        "id": "460105",
        "name": "秀英区",
        "parentId": "460100",
        "shortName": "秀英",
        "letter": "X",
        "cityCode": "0898",
        "pinyin": "Xiuying"
    },
    {
        "id": "460106",
        "name": "龙华区",
        "parentId": "460100",
        "shortName": "龙华",
        "letter": "L",
        "cityCode": "0898",
        "pinyin": "Longhua"
    },
    {
        "id": "460107",
        "name": "琼山区",
        "parentId": "460100",
        "shortName": "琼山",
        "letter": "Q",
        "cityCode": "0898",
        "pinyin": "Qiongshan"
    },
    {
        "id": "460108",
        "name": "美兰区",
        "parentId": "460100",
        "shortName": "美兰",
        "letter": "M",
        "cityCode": "0898",
        "pinyin": "Meilan"
    },
    {
        "id": "460200",
        "name": "三亚市",
        "parentId": "460000",
        "shortName": "三亚",
        "letter": "S",
        "cityCode": "0898",
        "pinyin": "Sanya"
    },
    {
        "id": "460202",
        "name": "海棠区",
        "parentId": "460200",
        "shortName": "海棠",
        "letter": "H",
        "cityCode": "0898",
        "pinyin": "Haitang"
    },
    {
        "id": "460203",
        "name": "吉阳区",
        "parentId": "460200",
        "shortName": "吉阳",
        "letter": "J",
        "cityCode": "0898",
        "pinyin": "Jiyang"
    },
    {
        "id": "460204",
        "name": "天涯区",
        "parentId": "460200",
        "shortName": "天涯",
        "letter": "T",
        "cityCode": "0898",
        "pinyin": "Tianya"
    },
    {
        "id": "460205",
        "name": "崖州区",
        "parentId": "460200",
        "shortName": "崖州",
        "letter": "Y",
        "cityCode": "0898",
        "pinyin": "Yazhou"
    },
    {
        "id": "460300",
        "name": "三沙市",
        "parentId": "460000",
        "shortName": "三沙",
        "letter": "S",
        "cityCode": "0898",
        "pinyin": "Sansha"
    },
    {
        "id": "460321",
        "name": "西沙群岛",
        "parentId": "460300",
        "shortName": "西沙",
        "letter": "X",
        "cityCode": "0898",
        "pinyin": "Xisha Islands"
    },
    {
        "id": "460322",
        "name": "南沙群岛",
        "parentId": "460300",
        "shortName": "南沙",
        "letter": "N",
        "cityCode": "0898",
        "pinyin": "Nansha Islands"
    },
    {
        "id": "460323",
        "name": "中沙群岛",
        "parentId": "460300",
        "shortName": "中沙",
        "letter": "Z",
        "cityCode": "0898",
        "pinyin": "Zhongsha Islands"
    },
    {
        "id": "469000",
        "name": "直辖县级",
        "parentId": "460000",
        "shortName": "直辖县",
        "letter": "",
        "cityCode": "",
        "pinyin": ""
    },
    {
        "id": "469001",
        "name": "五指山市",
        "parentId": "469000",
        "shortName": "五指山",
        "letter": "W",
        "cityCode": "0898",
        "pinyin": "Wuzhishan"
    },
    {
        "id": "469002",
        "name": "琼海市",
        "parentId": "469000",
        "shortName": "琼海",
        "letter": "Q",
        "cityCode": "0898",
        "pinyin": "Qionghai"
    },
    {
        "id": "469003",
        "name": "儋州市",
        "parentId": "469000",
        "shortName": "儋州",
        "letter": "D",
        "cityCode": "0898",
        "pinyin": "Danzhou"
    },
    {
        "id": "469005",
        "name": "文昌市",
        "parentId": "469000",
        "shortName": "文昌",
        "letter": "W",
        "cityCode": "0898",
        "pinyin": "Wenchang"
    },
    {
        "id": "469006",
        "name": "万宁市",
        "parentId": "469000",
        "shortName": "万宁",
        "letter": "W",
        "cityCode": "0898",
        "pinyin": "Wanning"
    },
    {
        "id": "469007",
        "name": "东方市",
        "parentId": "469000",
        "shortName": "东方",
        "letter": "D",
        "cityCode": "0898",
        "pinyin": "Dongfang"
    },
    {
        "id": "469021",
        "name": "定安县",
        "parentId": "469000",
        "shortName": "定安",
        "letter": "D",
        "cityCode": "0898",
        "pinyin": "Ding'an"
    },
    {
        "id": "469022",
        "name": "屯昌县",
        "parentId": "469000",
        "shortName": "屯昌",
        "letter": "T",
        "cityCode": "0898",
        "pinyin": "Tunchang"
    },
    {
        "id": "469023",
        "name": "澄迈县",
        "parentId": "469000",
        "shortName": "澄迈",
        "letter": "C",
        "cityCode": "0898",
        "pinyin": "Chengmai"
    },
    {
        "id": "469024",
        "name": "临高县",
        "parentId": "469000",
        "shortName": "临高",
        "letter": "L",
        "cityCode": "0898",
        "pinyin": "Lingao"
    },
    {
        "id": "469025",
        "name": "白沙黎族自治县",
        "parentId": "469000",
        "shortName": "白沙",
        "letter": "B",
        "cityCode": "0898",
        "pinyin": "Baisha"
    },
    {
        "id": "469026",
        "name": "昌江黎族自治县",
        "parentId": "469000",
        "shortName": "昌江",
        "letter": "C",
        "cityCode": "0898",
        "pinyin": "Changjiang"
    },
    {
        "id": "469027",
        "name": "乐东黎族自治县",
        "parentId": "469000",
        "shortName": "乐东",
        "letter": "L",
        "cityCode": "0898",
        "pinyin": "Ledong"
    },
    {
        "id": "469028",
        "name": "陵水黎族自治县",
        "parentId": "469000",
        "shortName": "陵水",
        "letter": "L",
        "cityCode": "0898",
        "pinyin": "Lingshui"
    },
    {
        "id": "469029",
        "name": "保亭黎族苗族自治县",
        "parentId": "469000",
        "shortName": "保亭",
        "letter": "B",
        "cityCode": "0898",
        "pinyin": "Baoting"
    },
    {
        "id": "469030",
        "name": "琼中黎族苗族自治县",
        "parentId": "469000",
        "shortName": "琼中",
        "letter": "Q",
        "cityCode": "0898",
        "pinyin": "Qiongzhong"
    },
    {
        "id": "500000",
        "name": "重庆市",
        "parentId": "100000",
        "shortName": "重庆",
        "letter": "C",
        "cityCode": "",
        "pinyin": "Chongqing"
    },
    {
        "id": "500100",
        "name": "重庆市",
        "parentId": "500000",
        "shortName": "重庆",
        "letter": "C",
        "cityCode": "023",
        "pinyin": "Chongqing"
    },
    {
        "id": "500101",
        "name": "万州区",
        "parentId": "500100",
        "shortName": "万州",
        "letter": "W",
        "cityCode": "023",
        "pinyin": "Wanzhou"
    },
    {
        "id": "500102",
        "name": "涪陵区",
        "parentId": "500100",
        "shortName": "涪陵",
        "letter": "F",
        "cityCode": "023",
        "pinyin": "Fuling"
    },
    {
        "id": "500103",
        "name": "渝中区",
        "parentId": "500100",
        "shortName": "渝中",
        "letter": "Y",
        "cityCode": "023",
        "pinyin": "Yuzhong"
    },
    {
        "id": "500104",
        "name": "大渡口区",
        "parentId": "500100",
        "shortName": "大渡口",
        "letter": "D",
        "cityCode": "023",
        "pinyin": "Dadukou"
    },
    {
        "id": "500105",
        "name": "江北区",
        "parentId": "500100",
        "shortName": "江北",
        "letter": "J",
        "cityCode": "023",
        "pinyin": "Jiangbei"
    },
    {
        "id": "500106",
        "name": "沙坪坝区",
        "parentId": "500100",
        "shortName": "沙坪坝",
        "letter": "S",
        "cityCode": "023",
        "pinyin": "Shapingba"
    },
    {
        "id": "500107",
        "name": "九龙坡区",
        "parentId": "500100",
        "shortName": "九龙坡",
        "letter": "J",
        "cityCode": "023",
        "pinyin": "Jiulongpo"
    },
    {
        "id": "500108",
        "name": "南岸区",
        "parentId": "500100",
        "shortName": "南岸",
        "letter": "N",
        "cityCode": "023",
        "pinyin": "Nan'an"
    },
    {
        "id": "500109",
        "name": "北碚区",
        "parentId": "500100",
        "shortName": "北碚",
        "letter": "B",
        "cityCode": "023",
        "pinyin": "Beibei"
    },
    {
        "id": "500110",
        "name": "綦江区",
        "parentId": "500100",
        "shortName": "綦江",
        "letter": "Q",
        "cityCode": "023",
        "pinyin": "Qijiang"
    },
    {
        "id": "500111",
        "name": "大足区",
        "parentId": "500100",
        "shortName": "大足",
        "letter": "D",
        "cityCode": "023",
        "pinyin": "Dazu"
    },
    {
        "id": "500112",
        "name": "渝北区",
        "parentId": "500100",
        "shortName": "渝北",
        "letter": "Y",
        "cityCode": "023",
        "pinyin": "Yubei"
    },
    {
        "id": "500113",
        "name": "巴南区",
        "parentId": "500100",
        "shortName": "巴南",
        "letter": "B",
        "cityCode": "023",
        "pinyin": "Banan"
    },
    {
        "id": "500114",
        "name": "黔江区",
        "parentId": "500100",
        "shortName": "黔江",
        "letter": "Q",
        "cityCode": "023",
        "pinyin": "Qianjiang"
    },
    {
        "id": "500115",
        "name": "长寿区",
        "parentId": "500100",
        "shortName": "长寿",
        "letter": "C",
        "cityCode": "023",
        "pinyin": "Changshou"
    },
    {
        "id": "500116",
        "name": "江津区",
        "parentId": "500100",
        "shortName": "江津",
        "letter": "J",
        "cityCode": "023",
        "pinyin": "Jiangjin"
    },
    {
        "id": "500117",
        "name": "合川区",
        "parentId": "500100",
        "shortName": "合川",
        "letter": "H",
        "cityCode": "023",
        "pinyin": "Hechuan"
    },
    {
        "id": "500118",
        "name": "永川区",
        "parentId": "500100",
        "shortName": "永川",
        "letter": "Y",
        "cityCode": "023",
        "pinyin": "Yongchuan"
    },
    {
        "id": "500119",
        "name": "南川区",
        "parentId": "500100",
        "shortName": "南川",
        "letter": "N",
        "cityCode": "023",
        "pinyin": "Nanchuan"
    },
    {
        "id": "500120",
        "name": "璧山区",
        "parentId": "500100",
        "shortName": "璧山",
        "letter": "B",
        "cityCode": "023",
        "pinyin": "Bishan"
    },
    {
        "id": "500151",
        "name": "铜梁区",
        "parentId": "500100",
        "shortName": "铜梁",
        "letter": "T",
        "cityCode": "023",
        "pinyin": "Tongliang"
    },
    {
        "id": "500223",
        "name": "潼南县",
        "parentId": "500100",
        "shortName": "潼南",
        "letter": "T",
        "cityCode": "023",
        "pinyin": "Tongnan"
    },
    {
        "id": "500226",
        "name": "荣昌县",
        "parentId": "500100",
        "shortName": "荣昌",
        "letter": "R",
        "cityCode": "023",
        "pinyin": "Rongchang"
    },
    {
        "id": "500228",
        "name": "梁平县",
        "parentId": "500100",
        "shortName": "梁平",
        "letter": "L",
        "cityCode": "023",
        "pinyin": "Liangping"
    },
    {
        "id": "500229",
        "name": "城口县",
        "parentId": "500100",
        "shortName": "城口",
        "letter": "C",
        "cityCode": "023",
        "pinyin": "Chengkou"
    },
    {
        "id": "500230",
        "name": "丰都县",
        "parentId": "500100",
        "shortName": "丰都",
        "letter": "F",
        "cityCode": "023",
        "pinyin": "Fengdu"
    },
    {
        "id": "500231",
        "name": "垫江县",
        "parentId": "500100",
        "shortName": "垫江",
        "letter": "D",
        "cityCode": "023",
        "pinyin": "Dianjiang"
    },
    {
        "id": "500232",
        "name": "武隆县",
        "parentId": "500100",
        "shortName": "武隆",
        "letter": "W",
        "cityCode": "023",
        "pinyin": "Wulong"
    },
    {
        "id": "500233",
        "name": "忠县",
        "parentId": "500100",
        "shortName": "忠县",
        "letter": "Z",
        "cityCode": "023",
        "pinyin": "Zhongxian"
    },
    {
        "id": "500234",
        "name": "开县",
        "parentId": "500100",
        "shortName": "开县",
        "letter": "K",
        "cityCode": "023",
        "pinyin": "Kaixian"
    },
    {
        "id": "500235",
        "name": "云阳县",
        "parentId": "500100",
        "shortName": "云阳",
        "letter": "Y",
        "cityCode": "023",
        "pinyin": "Yunyang"
    },
    {
        "id": "500236",
        "name": "奉节县",
        "parentId": "500100",
        "shortName": "奉节",
        "letter": "F",
        "cityCode": "023",
        "pinyin": "Fengjie"
    },
    {
        "id": "500237",
        "name": "巫山县",
        "parentId": "500100",
        "shortName": "巫山",
        "letter": "W",
        "cityCode": "023",
        "pinyin": "Wushan"
    },
    {
        "id": "500238",
        "name": "巫溪县",
        "parentId": "500100",
        "shortName": "巫溪",
        "letter": "W",
        "cityCode": "023",
        "pinyin": "Wuxi"
    },
    {
        "id": "500240",
        "name": "石柱土家族自治县",
        "parentId": "500100",
        "shortName": "石柱",
        "letter": "S",
        "cityCode": "023",
        "pinyin": "Shizhu"
    },
    {
        "id": "500241",
        "name": "秀山土家族苗族自治县",
        "parentId": "500100",
        "shortName": "秀山",
        "letter": "X",
        "cityCode": "023",
        "pinyin": "Xiushan"
    },
    {
        "id": "500242",
        "name": "酉阳土家族苗族自治县",
        "parentId": "500100",
        "shortName": "酉阳",
        "letter": "Y",
        "cityCode": "023",
        "pinyin": "Youyang"
    },
    {
        "id": "500243",
        "name": "彭水苗族土家族自治县",
        "parentId": "500100",
        "shortName": "彭水",
        "letter": "P",
        "cityCode": "023",
        "pinyin": "Pengshui"
    },
    {
        "id": "500300",
        "name": "两江新区",
        "parentId": "500000",
        "shortName": "两江新区",
        "letter": "L",
        "cityCode": "023",
        "pinyin": "Liangjiangxinqu"
    },
    {
        "id": "500301",
        "name": "北部新区",
        "parentId": "500300",
        "shortName": "北部新区",
        "letter": "B",
        "cityCode": "023",
        "pinyin": "Beibuxinqu"
    },
    {
        "id": "500302",
        "name": "保税港区",
        "parentId": "500300",
        "shortName": "保税港区",
        "letter": "B",
        "cityCode": "023",
        "pinyin": "Baoshuigangqu"
    },
    {
        "id": "500303",
        "name": "工业园区",
        "parentId": "500300",
        "shortName": "工业园区",
        "letter": "G",
        "cityCode": "023",
        "pinyin": "Gongyeyuanqu"
    },
    {
        "id": "510000",
        "name": "四川省",
        "parentId": "100000",
        "shortName": "四川",
        "letter": "S",
        "cityCode": "",
        "pinyin": "Sichuan"
    },
    {
        "id": "510100",
        "name": "成都市",
        "parentId": "510000",
        "shortName": "成都",
        "letter": "C",
        "cityCode": "028",
        "pinyin": "Chengdu"
    },
    {
        "id": "510104",
        "name": "锦江区",
        "parentId": "510100",
        "shortName": "锦江",
        "letter": "J",
        "cityCode": "028",
        "pinyin": "Jinjiang"
    },
    {
        "id": "510105",
        "name": "青羊区",
        "parentId": "510100",
        "shortName": "青羊",
        "letter": "Q",
        "cityCode": "028",
        "pinyin": "Qingyang"
    },
    {
        "id": "510106",
        "name": "金牛区",
        "parentId": "510100",
        "shortName": "金牛",
        "letter": "J",
        "cityCode": "028",
        "pinyin": "Jinniu"
    },
    {
        "id": "510107",
        "name": "武侯区",
        "parentId": "510100",
        "shortName": "武侯",
        "letter": "W",
        "cityCode": "028",
        "pinyin": "Wuhou"
    },
    {
        "id": "510108",
        "name": "成华区",
        "parentId": "510100",
        "shortName": "成华",
        "letter": "C",
        "cityCode": "028",
        "pinyin": "Chenghua"
    },
    {
        "id": "510112",
        "name": "龙泉驿区",
        "parentId": "510100",
        "shortName": "龙泉驿",
        "letter": "L",
        "cityCode": "028",
        "pinyin": "Longquanyi"
    },
    {
        "id": "510113",
        "name": "青白江区",
        "parentId": "510100",
        "shortName": "青白江",
        "letter": "Q",
        "cityCode": "028",
        "pinyin": "Qingbaijiang"
    },
    {
        "id": "510114",
        "name": "新都区",
        "parentId": "510100",
        "shortName": "新都",
        "letter": "X",
        "cityCode": "028",
        "pinyin": "Xindu"
    },
    {
        "id": "510115",
        "name": "温江区",
        "parentId": "510100",
        "shortName": "温江",
        "letter": "W",
        "cityCode": "028",
        "pinyin": "Wenjiang"
    },
    {
        "id": "510121",
        "name": "金堂县",
        "parentId": "510100",
        "shortName": "金堂",
        "letter": "J",
        "cityCode": "028",
        "pinyin": "Jintang"
    },
    {
        "id": "510122",
        "name": "双流县",
        "parentId": "510100",
        "shortName": "双流",
        "letter": "S",
        "cityCode": "028",
        "pinyin": "Shuangliu"
    },
    {
        "id": "510124",
        "name": "郫县",
        "parentId": "510100",
        "shortName": "郫县",
        "letter": "P",
        "cityCode": "028",
        "pinyin": "Pixian"
    },
    {
        "id": "510129",
        "name": "大邑县",
        "parentId": "510100",
        "shortName": "大邑",
        "letter": "D",
        "cityCode": "028",
        "pinyin": "Dayi"
    },
    {
        "id": "510131",
        "name": "蒲江县",
        "parentId": "510100",
        "shortName": "蒲江",
        "letter": "P",
        "cityCode": "028",
        "pinyin": "Pujiang"
    },
    {
        "id": "510132",
        "name": "新津县",
        "parentId": "510100",
        "shortName": "新津",
        "letter": "X",
        "cityCode": "028",
        "pinyin": "Xinjin"
    },
    {
        "id": "510181",
        "name": "都江堰市",
        "parentId": "510100",
        "shortName": "都江堰",
        "letter": "D",
        "cityCode": "028",
        "pinyin": "Dujiangyan"
    },
    {
        "id": "510182",
        "name": "彭州市",
        "parentId": "510100",
        "shortName": "彭州",
        "letter": "P",
        "cityCode": "028",
        "pinyin": "Pengzhou"
    },
    {
        "id": "510183",
        "name": "邛崃市",
        "parentId": "510100",
        "shortName": "邛崃",
        "letter": "Q",
        "cityCode": "028",
        "pinyin": "Qionglai"
    },
    {
        "id": "510184",
        "name": "崇州市",
        "parentId": "510100",
        "shortName": "崇州",
        "letter": "C",
        "cityCode": "028",
        "pinyin": "Chongzhou"
    },
    {
        "id": "510300",
        "name": "自贡市",
        "parentId": "510000",
        "shortName": "自贡",
        "letter": "Z",
        "cityCode": "0813",
        "pinyin": "Zigong"
    },
    {
        "id": "510302",
        "name": "自流井区",
        "parentId": "510300",
        "shortName": "自流井",
        "letter": "Z",
        "cityCode": "0813",
        "pinyin": "Ziliujing"
    },
    {
        "id": "510303",
        "name": "贡井区",
        "parentId": "510300",
        "shortName": "贡井",
        "letter": "G",
        "cityCode": "0813",
        "pinyin": "Gongjing"
    },
    {
        "id": "510304",
        "name": "大安区",
        "parentId": "510300",
        "shortName": "大安",
        "letter": "D",
        "cityCode": "0813",
        "pinyin": "Da'an"
    },
    {
        "id": "510311",
        "name": "沿滩区",
        "parentId": "510300",
        "shortName": "沿滩",
        "letter": "Y",
        "cityCode": "0813",
        "pinyin": "Yantan"
    },
    {
        "id": "510321",
        "name": "荣县",
        "parentId": "510300",
        "shortName": "荣县",
        "letter": "R",
        "cityCode": "0813",
        "pinyin": "Rongxian"
    },
    {
        "id": "510322",
        "name": "富顺县",
        "parentId": "510300",
        "shortName": "富顺",
        "letter": "F",
        "cityCode": "0813",
        "pinyin": "Fushun"
    },
    {
        "id": "510400",
        "name": "攀枝花市",
        "parentId": "510000",
        "shortName": "攀枝花",
        "letter": "P",
        "cityCode": "0812",
        "pinyin": "Panzhihua"
    },
    {
        "id": "510402",
        "name": "东区",
        "parentId": "510400",
        "shortName": "东区",
        "letter": "D",
        "cityCode": "0812",
        "pinyin": "Dongqu"
    },
    {
        "id": "510403",
        "name": "西区",
        "parentId": "510400",
        "shortName": "西区",
        "letter": "X",
        "cityCode": "0812",
        "pinyin": "Xiqu"
    },
    {
        "id": "510411",
        "name": "仁和区",
        "parentId": "510400",
        "shortName": "仁和",
        "letter": "R",
        "cityCode": "0812",
        "pinyin": "Renhe"
    },
    {
        "id": "510421",
        "name": "米易县",
        "parentId": "510400",
        "shortName": "米易",
        "letter": "M",
        "cityCode": "0812",
        "pinyin": "Miyi"
    },
    {
        "id": "510422",
        "name": "盐边县",
        "parentId": "510400",
        "shortName": "盐边",
        "letter": "Y",
        "cityCode": "0812",
        "pinyin": "Yanbian"
    },
    {
        "id": "510500",
        "name": "泸州市",
        "parentId": "510000",
        "shortName": "泸州",
        "letter": "L",
        "cityCode": "0830",
        "pinyin": "Luzhou"
    },
    {
        "id": "510502",
        "name": "江阳区",
        "parentId": "510500",
        "shortName": "江阳",
        "letter": "J",
        "cityCode": "0830",
        "pinyin": "Jiangyang"
    },
    {
        "id": "510503",
        "name": "纳溪区",
        "parentId": "510500",
        "shortName": "纳溪",
        "letter": "N",
        "cityCode": "0830",
        "pinyin": "Naxi"
    },
    {
        "id": "510504",
        "name": "龙马潭区",
        "parentId": "510500",
        "shortName": "龙马潭",
        "letter": "L",
        "cityCode": "0830",
        "pinyin": "Longmatan"
    },
    {
        "id": "510521",
        "name": "泸县",
        "parentId": "510500",
        "shortName": "泸县",
        "letter": "L",
        "cityCode": "0830",
        "pinyin": "Luxian"
    },
    {
        "id": "510522",
        "name": "合江县",
        "parentId": "510500",
        "shortName": "合江",
        "letter": "H",
        "cityCode": "0830",
        "pinyin": "Hejiang"
    },
    {
        "id": "510524",
        "name": "叙永县",
        "parentId": "510500",
        "shortName": "叙永",
        "letter": "X",
        "cityCode": "0830",
        "pinyin": "Xuyong"
    },
    {
        "id": "510525",
        "name": "古蔺县",
        "parentId": "510500",
        "shortName": "古蔺",
        "letter": "G",
        "cityCode": "0830",
        "pinyin": "Gulin"
    },
    {
        "id": "510600",
        "name": "德阳市",
        "parentId": "510000",
        "shortName": "德阳",
        "letter": "D",
        "cityCode": "0838",
        "pinyin": "Deyang"
    },
    {
        "id": "510603",
        "name": "旌阳区",
        "parentId": "510600",
        "shortName": "旌阳",
        "letter": "J",
        "cityCode": "0838",
        "pinyin": "Jingyang"
    },
    {
        "id": "510623",
        "name": "中江县",
        "parentId": "510600",
        "shortName": "中江",
        "letter": "Z",
        "cityCode": "0838",
        "pinyin": "Zhongjiang"
    },
    {
        "id": "510626",
        "name": "罗江县",
        "parentId": "510600",
        "shortName": "罗江",
        "letter": "L",
        "cityCode": "0838",
        "pinyin": "Luojiang"
    },
    {
        "id": "510681",
        "name": "广汉市",
        "parentId": "510600",
        "shortName": "广汉",
        "letter": "G",
        "cityCode": "0838",
        "pinyin": "Guanghan"
    },
    {
        "id": "510682",
        "name": "什邡市",
        "parentId": "510600",
        "shortName": "什邡",
        "letter": "S",
        "cityCode": "0838",
        "pinyin": "Shifang"
    },
    {
        "id": "510683",
        "name": "绵竹市",
        "parentId": "510600",
        "shortName": "绵竹",
        "letter": "M",
        "cityCode": "0838",
        "pinyin": "Mianzhu"
    },
    {
        "id": "510700",
        "name": "绵阳市",
        "parentId": "510000",
        "shortName": "绵阳",
        "letter": "M",
        "cityCode": "0816",
        "pinyin": "Mianyang"
    },
    {
        "id": "510703",
        "name": "涪城区",
        "parentId": "510700",
        "shortName": "涪城",
        "letter": "F",
        "cityCode": "0816",
        "pinyin": "Fucheng"
    },
    {
        "id": "510704",
        "name": "游仙区",
        "parentId": "510700",
        "shortName": "游仙",
        "letter": "Y",
        "cityCode": "0816",
        "pinyin": "Youxian"
    },
    {
        "id": "510722",
        "name": "三台县",
        "parentId": "510700",
        "shortName": "三台",
        "letter": "S",
        "cityCode": "0816",
        "pinyin": "Santai"
    },
    {
        "id": "510723",
        "name": "盐亭县",
        "parentId": "510700",
        "shortName": "盐亭",
        "letter": "Y",
        "cityCode": "0816",
        "pinyin": "Yanting"
    },
    {
        "id": "510724",
        "name": "安县",
        "parentId": "510700",
        "shortName": "安县",
        "letter": "A",
        "cityCode": "0816",
        "pinyin": "Anxian"
    },
    {
        "id": "510725",
        "name": "梓潼县",
        "parentId": "510700",
        "shortName": "梓潼",
        "letter": "Z",
        "cityCode": "0816",
        "pinyin": "Zitong"
    },
    {
        "id": "510726",
        "name": "北川羌族自治县",
        "parentId": "510700",
        "shortName": "北川",
        "letter": "B",
        "cityCode": "0816",
        "pinyin": "Beichuan"
    },
    {
        "id": "510727",
        "name": "平武县",
        "parentId": "510700",
        "shortName": "平武",
        "letter": "P",
        "cityCode": "0816",
        "pinyin": "Pingwu"
    },
    {
        "id": "510781",
        "name": "江油市",
        "parentId": "510700",
        "shortName": "江油",
        "letter": "J",
        "cityCode": "0816",
        "pinyin": "Jiangyou"
    },
    {
        "id": "510800",
        "name": "广元市",
        "parentId": "510000",
        "shortName": "广元",
        "letter": "G",
        "cityCode": "0839",
        "pinyin": "Guangyuan"
    },
    {
        "id": "510802",
        "name": "利州区",
        "parentId": "510800",
        "shortName": "利州",
        "letter": "L",
        "cityCode": "0839",
        "pinyin": "Lizhou"
    },
    {
        "id": "510811",
        "name": "昭化区",
        "parentId": "510800",
        "shortName": "昭化",
        "letter": "Z",
        "cityCode": "0839",
        "pinyin": "Zhaohua"
    },
    {
        "id": "510812",
        "name": "朝天区",
        "parentId": "510800",
        "shortName": "朝天",
        "letter": "C",
        "cityCode": "0839",
        "pinyin": "Chaotian"
    },
    {
        "id": "510821",
        "name": "旺苍县",
        "parentId": "510800",
        "shortName": "旺苍",
        "letter": "W",
        "cityCode": "0839",
        "pinyin": "Wangcang"
    },
    {
        "id": "510822",
        "name": "青川县",
        "parentId": "510800",
        "shortName": "青川",
        "letter": "Q",
        "cityCode": "0839",
        "pinyin": "Qingchuan"
    },
    {
        "id": "510823",
        "name": "剑阁县",
        "parentId": "510800",
        "shortName": "剑阁",
        "letter": "J",
        "cityCode": "0839",
        "pinyin": "Jiange"
    },
    {
        "id": "510824",
        "name": "苍溪县",
        "parentId": "510800",
        "shortName": "苍溪",
        "letter": "C",
        "cityCode": "0839",
        "pinyin": "Cangxi"
    },
    {
        "id": "510900",
        "name": "遂宁市",
        "parentId": "510000",
        "shortName": "遂宁",
        "letter": "S",
        "cityCode": "0825",
        "pinyin": "Suining"
    },
    {
        "id": "510903",
        "name": "船山区",
        "parentId": "510900",
        "shortName": "船山",
        "letter": "C",
        "cityCode": "0825",
        "pinyin": "Chuanshan"
    },
    {
        "id": "510904",
        "name": "安居区",
        "parentId": "510900",
        "shortName": "安居",
        "letter": "A",
        "cityCode": "0825",
        "pinyin": "Anju"
    },
    {
        "id": "510921",
        "name": "蓬溪县",
        "parentId": "510900",
        "shortName": "蓬溪",
        "letter": "P",
        "cityCode": "0825",
        "pinyin": "Pengxi"
    },
    {
        "id": "510922",
        "name": "射洪县",
        "parentId": "510900",
        "shortName": "射洪",
        "letter": "S",
        "cityCode": "0825",
        "pinyin": "Shehong"
    },
    {
        "id": "510923",
        "name": "大英县",
        "parentId": "510900",
        "shortName": "大英",
        "letter": "D",
        "cityCode": "0825",
        "pinyin": "Daying"
    },
    {
        "id": "511000",
        "name": "内江市",
        "parentId": "510000",
        "shortName": "内江",
        "letter": "N",
        "cityCode": "0832",
        "pinyin": "Neijiang"
    },
    {
        "id": "511002",
        "name": "市中区",
        "parentId": "511000",
        "shortName": "市中区",
        "letter": "S",
        "cityCode": "0832",
        "pinyin": "Shizhongqu"
    },
    {
        "id": "511011",
        "name": "东兴区",
        "parentId": "511000",
        "shortName": "东兴",
        "letter": "D",
        "cityCode": "0832",
        "pinyin": "Dongxing"
    },
    {
        "id": "511024",
        "name": "威远县",
        "parentId": "511000",
        "shortName": "威远",
        "letter": "W",
        "cityCode": "0832",
        "pinyin": "Weiyuan"
    },
    {
        "id": "511025",
        "name": "资中县",
        "parentId": "511000",
        "shortName": "资中",
        "letter": "Z",
        "cityCode": "0832",
        "pinyin": "Zizhong"
    },
    {
        "id": "511028",
        "name": "隆昌县",
        "parentId": "511000",
        "shortName": "隆昌",
        "letter": "L",
        "cityCode": "0832",
        "pinyin": "Longchang"
    },
    {
        "id": "511100",
        "name": "乐山市",
        "parentId": "510000",
        "shortName": "乐山",
        "letter": "L",
        "cityCode": "0833",
        "pinyin": "Leshan"
    },
    {
        "id": "511102",
        "name": "市中区",
        "parentId": "511100",
        "shortName": "市中区",
        "letter": "S",
        "cityCode": "0833",
        "pinyin": "Shizhongqu"
    },
    {
        "id": "511111",
        "name": "沙湾区",
        "parentId": "511100",
        "shortName": "沙湾",
        "letter": "S",
        "cityCode": "0833",
        "pinyin": "Shawan"
    },
    {
        "id": "511112",
        "name": "五通桥区",
        "parentId": "511100",
        "shortName": "五通桥",
        "letter": "W",
        "cityCode": "0833",
        "pinyin": "Wutongqiao"
    },
    {
        "id": "511113",
        "name": "金口河区",
        "parentId": "511100",
        "shortName": "金口河",
        "letter": "J",
        "cityCode": "0833",
        "pinyin": "Jinkouhe"
    },
    {
        "id": "511123",
        "name": "犍为县",
        "parentId": "511100",
        "shortName": "犍为",
        "letter": "Q",
        "cityCode": "0833",
        "pinyin": "Qianwei"
    },
    {
        "id": "511124",
        "name": "井研县",
        "parentId": "511100",
        "shortName": "井研",
        "letter": "J",
        "cityCode": "0833",
        "pinyin": "Jingyan"
    },
    {
        "id": "511126",
        "name": "夹江县",
        "parentId": "511100",
        "shortName": "夹江",
        "letter": "J",
        "cityCode": "0833",
        "pinyin": "Jiajiang"
    },
    {
        "id": "511129",
        "name": "沐川县",
        "parentId": "511100",
        "shortName": "沐川",
        "letter": "M",
        "cityCode": "0833",
        "pinyin": "Muchuan"
    },
    {
        "id": "511132",
        "name": "峨边彝族自治县",
        "parentId": "511100",
        "shortName": "峨边",
        "letter": "E",
        "cityCode": "0833",
        "pinyin": "Ebian"
    },
    {
        "id": "511133",
        "name": "马边彝族自治县",
        "parentId": "511100",
        "shortName": "马边",
        "letter": "M",
        "cityCode": "0833",
        "pinyin": "Mabian"
    },
    {
        "id": "511181",
        "name": "峨眉山市",
        "parentId": "511100",
        "shortName": "峨眉山",
        "letter": "E",
        "cityCode": "0833",
        "pinyin": "Emeishan"
    },
    {
        "id": "511300",
        "name": "南充市",
        "parentId": "510000",
        "shortName": "南充",
        "letter": "N",
        "cityCode": "0817",
        "pinyin": "Nanchong"
    },
    {
        "id": "511302",
        "name": "顺庆区",
        "parentId": "511300",
        "shortName": "顺庆",
        "letter": "S",
        "cityCode": "0817",
        "pinyin": "Shunqing"
    },
    {
        "id": "511303",
        "name": "高坪区",
        "parentId": "511300",
        "shortName": "高坪",
        "letter": "G",
        "cityCode": "0817",
        "pinyin": "Gaoping"
    },
    {
        "id": "511304",
        "name": "嘉陵区",
        "parentId": "511300",
        "shortName": "嘉陵",
        "letter": "J",
        "cityCode": "0817",
        "pinyin": "Jialing"
    },
    {
        "id": "511321",
        "name": "南部县",
        "parentId": "511300",
        "shortName": "南部",
        "letter": "N",
        "cityCode": "0817",
        "pinyin": "Nanbu"
    },
    {
        "id": "511322",
        "name": "营山县",
        "parentId": "511300",
        "shortName": "营山",
        "letter": "Y",
        "cityCode": "0817",
        "pinyin": "Yingshan"
    },
    {
        "id": "511323",
        "name": "蓬安县",
        "parentId": "511300",
        "shortName": "蓬安",
        "letter": "P",
        "cityCode": "0817",
        "pinyin": "Peng'an"
    },
    {
        "id": "511324",
        "name": "仪陇县",
        "parentId": "511300",
        "shortName": "仪陇",
        "letter": "Y",
        "cityCode": "0817",
        "pinyin": "Yilong"
    },
    {
        "id": "511325",
        "name": "西充县",
        "parentId": "511300",
        "shortName": "西充",
        "letter": "X",
        "cityCode": "0817",
        "pinyin": "Xichong"
    },
    {
        "id": "511381",
        "name": "阆中市",
        "parentId": "511300",
        "shortName": "阆中",
        "letter": "L",
        "cityCode": "0817",
        "pinyin": "Langzhong"
    },
    {
        "id": "511400",
        "name": "眉山市",
        "parentId": "510000",
        "shortName": "眉山",
        "letter": "M",
        "cityCode": "028",
        "pinyin": "Meishan"
    },
    {
        "id": "511402",
        "name": "东坡区",
        "parentId": "511400",
        "shortName": "东坡",
        "letter": "D",
        "cityCode": "028",
        "pinyin": "Dongpo"
    },
    {
        "id": "511403",
        "name": "彭山区",
        "parentId": "511400",
        "shortName": "彭山",
        "letter": "P",
        "cityCode": "028",
        "pinyin": "Pengshan"
    },
    {
        "id": "511421",
        "name": "仁寿县",
        "parentId": "511400",
        "shortName": "仁寿",
        "letter": "R",
        "cityCode": "028",
        "pinyin": "Renshou"
    },
    {
        "id": "511423",
        "name": "洪雅县",
        "parentId": "511400",
        "shortName": "洪雅",
        "letter": "H",
        "cityCode": "028",
        "pinyin": "Hongya"
    },
    {
        "id": "511424",
        "name": "丹棱县",
        "parentId": "511400",
        "shortName": "丹棱",
        "letter": "D",
        "cityCode": "028",
        "pinyin": "Danling"
    },
    {
        "id": "511425",
        "name": "青神县",
        "parentId": "511400",
        "shortName": "青神",
        "letter": "Q",
        "cityCode": "028",
        "pinyin": "Qingshen"
    },
    {
        "id": "511500",
        "name": "宜宾市",
        "parentId": "510000",
        "shortName": "宜宾",
        "letter": "Y",
        "cityCode": "0831",
        "pinyin": "Yibin"
    },
    {
        "id": "511502",
        "name": "翠屏区",
        "parentId": "511500",
        "shortName": "翠屏",
        "letter": "C",
        "cityCode": "0831",
        "pinyin": "Cuiping"
    },
    {
        "id": "511503",
        "name": "南溪区",
        "parentId": "511500",
        "shortName": "南溪",
        "letter": "N",
        "cityCode": "0831",
        "pinyin": "Nanxi"
    },
    {
        "id": "511521",
        "name": "宜宾县",
        "parentId": "511500",
        "shortName": "宜宾",
        "letter": "Y",
        "cityCode": "0831",
        "pinyin": "Yibin"
    },
    {
        "id": "511523",
        "name": "江安县",
        "parentId": "511500",
        "shortName": "江安",
        "letter": "J",
        "cityCode": "0831",
        "pinyin": "Jiang'an"
    },
    {
        "id": "511524",
        "name": "长宁县",
        "parentId": "511500",
        "shortName": "长宁",
        "letter": "C",
        "cityCode": "0831",
        "pinyin": "Changning"
    },
    {
        "id": "511525",
        "name": "高县",
        "parentId": "511500",
        "shortName": "高县",
        "letter": "G",
        "cityCode": "0831",
        "pinyin": "Gaoxian"
    },
    {
        "id": "511526",
        "name": "珙县",
        "parentId": "511500",
        "shortName": "珙县",
        "letter": "G",
        "cityCode": "0831",
        "pinyin": "Gongxian"
    },
    {
        "id": "511527",
        "name": "筠连县",
        "parentId": "511500",
        "shortName": "筠连",
        "letter": "J",
        "cityCode": "0831",
        "pinyin": "Junlian"
    },
    {
        "id": "511528",
        "name": "兴文县",
        "parentId": "511500",
        "shortName": "兴文",
        "letter": "X",
        "cityCode": "0831",
        "pinyin": "Xingwen"
    },
    {
        "id": "511529",
        "name": "屏山县",
        "parentId": "511500",
        "shortName": "屏山",
        "letter": "P",
        "cityCode": "0831",
        "pinyin": "Pingshan"
    },
    {
        "id": "511600",
        "name": "广安市",
        "parentId": "510000",
        "shortName": "广安",
        "letter": "G",
        "cityCode": "0826",
        "pinyin": "Guang'an"
    },
    {
        "id": "511602",
        "name": "广安区",
        "parentId": "511600",
        "shortName": "广安",
        "letter": "G",
        "cityCode": "0826",
        "pinyin": "Guang'an"
    },
    {
        "id": "511603",
        "name": "前锋区",
        "parentId": "511600",
        "shortName": "前锋",
        "letter": "Q",
        "cityCode": "0826",
        "pinyin": "Qianfeng"
    },
    {
        "id": "511621",
        "name": "岳池县",
        "parentId": "511600",
        "shortName": "岳池",
        "letter": "Y",
        "cityCode": "0826",
        "pinyin": "Yuechi"
    },
    {
        "id": "511622",
        "name": "武胜县",
        "parentId": "511600",
        "shortName": "武胜",
        "letter": "W",
        "cityCode": "0826",
        "pinyin": "Wusheng"
    },
    {
        "id": "511623",
        "name": "邻水县",
        "parentId": "511600",
        "shortName": "邻水",
        "letter": "L",
        "cityCode": "0826",
        "pinyin": "Linshui"
    },
    {
        "id": "511681",
        "name": "华蓥市",
        "parentId": "511600",
        "shortName": "华蓥",
        "letter": "H",
        "cityCode": "0826",
        "pinyin": "Huaying"
    },
    {
        "id": "511700",
        "name": "达州市",
        "parentId": "510000",
        "shortName": "达州",
        "letter": "D",
        "cityCode": "0818",
        "pinyin": "Dazhou"
    },
    {
        "id": "511702",
        "name": "通川区",
        "parentId": "511700",
        "shortName": "通川",
        "letter": "T",
        "cityCode": "0818",
        "pinyin": "Tongchuan"
    },
    {
        "id": "511703",
        "name": "达川区",
        "parentId": "511700",
        "shortName": "达川",
        "letter": "D",
        "cityCode": "0818",
        "pinyin": "Dachuan"
    },
    {
        "id": "511722",
        "name": "宣汉县",
        "parentId": "511700",
        "shortName": "宣汉",
        "letter": "X",
        "cityCode": "0818",
        "pinyin": "Xuanhan"
    },
    {
        "id": "511723",
        "name": "开江县",
        "parentId": "511700",
        "shortName": "开江",
        "letter": "K",
        "cityCode": "0818",
        "pinyin": "Kaijiang"
    },
    {
        "id": "511724",
        "name": "大竹县",
        "parentId": "511700",
        "shortName": "大竹",
        "letter": "D",
        "cityCode": "0818",
        "pinyin": "Dazhu"
    },
    {
        "id": "511725",
        "name": "渠县",
        "parentId": "511700",
        "shortName": "渠县",
        "letter": "Q",
        "cityCode": "0818",
        "pinyin": "Quxian"
    },
    {
        "id": "511781",
        "name": "万源市",
        "parentId": "511700",
        "shortName": "万源",
        "letter": "W",
        "cityCode": "0818",
        "pinyin": "Wanyuan"
    },
    {
        "id": "511800",
        "name": "雅安市",
        "parentId": "510000",
        "shortName": "雅安",
        "letter": "Y",
        "cityCode": "0835",
        "pinyin": "Ya'an"
    },
    {
        "id": "511802",
        "name": "雨城区",
        "parentId": "511800",
        "shortName": "雨城",
        "letter": "Y",
        "cityCode": "0835",
        "pinyin": "Yucheng"
    },
    {
        "id": "511803",
        "name": "名山区",
        "parentId": "511800",
        "shortName": "名山",
        "letter": "M",
        "cityCode": "0835",
        "pinyin": "Mingshan"
    },
    {
        "id": "511822",
        "name": "荥经县",
        "parentId": "511800",
        "shortName": "荥经",
        "letter": "Y",
        "cityCode": "0835",
        "pinyin": "Yingjing"
    },
    {
        "id": "511823",
        "name": "汉源县",
        "parentId": "511800",
        "shortName": "汉源",
        "letter": "H",
        "cityCode": "0835",
        "pinyin": "Hanyuan"
    },
    {
        "id": "511824",
        "name": "石棉县",
        "parentId": "511800",
        "shortName": "石棉",
        "letter": "S",
        "cityCode": "0835",
        "pinyin": "Shimian"
    },
    {
        "id": "511825",
        "name": "天全县",
        "parentId": "511800",
        "shortName": "天全",
        "letter": "T",
        "cityCode": "0835",
        "pinyin": "Tianquan"
    },
    {
        "id": "511826",
        "name": "芦山县",
        "parentId": "511800",
        "shortName": "芦山",
        "letter": "L",
        "cityCode": "0835",
        "pinyin": "Lushan"
    },
    {
        "id": "511827",
        "name": "宝兴县",
        "parentId": "511800",
        "shortName": "宝兴",
        "letter": "B",
        "cityCode": "0835",
        "pinyin": "Baoxing"
    },
    {
        "id": "511900",
        "name": "巴中市",
        "parentId": "510000",
        "shortName": "巴中",
        "letter": "B",
        "cityCode": "0827",
        "pinyin": "Bazhong"
    },
    {
        "id": "511902",
        "name": "巴州区",
        "parentId": "511900",
        "shortName": "巴州",
        "letter": "B",
        "cityCode": "0827",
        "pinyin": "Bazhou"
    },
    {
        "id": "511903",
        "name": "恩阳区",
        "parentId": "511900",
        "shortName": "恩阳",
        "letter": "E",
        "cityCode": "0827",
        "pinyin": "Enyang"
    },
    {
        "id": "511921",
        "name": "通江县",
        "parentId": "511900",
        "shortName": "通江",
        "letter": "T",
        "cityCode": "0827",
        "pinyin": "Tongjiang"
    },
    {
        "id": "511922",
        "name": "南江县",
        "parentId": "511900",
        "shortName": "南江",
        "letter": "N",
        "cityCode": "0827",
        "pinyin": "Nanjiang"
    },
    {
        "id": "511923",
        "name": "平昌县",
        "parentId": "511900",
        "shortName": "平昌",
        "letter": "P",
        "cityCode": "0827",
        "pinyin": "Pingchang"
    },
    {
        "id": "512000",
        "name": "资阳市",
        "parentId": "510000",
        "shortName": "资阳",
        "letter": "Z",
        "cityCode": "028",
        "pinyin": "Ziyang"
    },
    {
        "id": "512002",
        "name": "雁江区",
        "parentId": "512000",
        "shortName": "雁江",
        "letter": "Y",
        "cityCode": "028",
        "pinyin": "Yanjiang"
    },
    {
        "id": "512021",
        "name": "安岳县",
        "parentId": "512000",
        "shortName": "安岳",
        "letter": "A",
        "cityCode": "028",
        "pinyin": "Anyue"
    },
    {
        "id": "512022",
        "name": "乐至县",
        "parentId": "512000",
        "shortName": "乐至",
        "letter": "L",
        "cityCode": "028",
        "pinyin": "Lezhi"
    },
    {
        "id": "512081",
        "name": "简阳市",
        "parentId": "512000",
        "shortName": "简阳",
        "letter": "J",
        "cityCode": "028",
        "pinyin": "Jianyang"
    },
    {
        "id": "513200",
        "name": "阿坝藏族羌族自治州",
        "parentId": "510000",
        "shortName": "阿坝",
        "letter": "A",
        "cityCode": "0837",
        "pinyin": "Aba"
    },
    {
        "id": "513221",
        "name": "汶川县",
        "parentId": "513200",
        "shortName": "汶川",
        "letter": "W",
        "cityCode": "0837",
        "pinyin": "Wenchuan"
    },
    {
        "id": "513222",
        "name": "理县",
        "parentId": "513200",
        "shortName": "理县",
        "letter": "L",
        "cityCode": "0837",
        "pinyin": "Lixian"
    },
    {
        "id": "513223",
        "name": "茂县",
        "parentId": "513200",
        "shortName": "茂县",
        "letter": "M",
        "cityCode": "0837",
        "pinyin": "Maoxian"
    },
    {
        "id": "513224",
        "name": "松潘县",
        "parentId": "513200",
        "shortName": "松潘",
        "letter": "S",
        "cityCode": "0837",
        "pinyin": "Songpan"
    },
    {
        "id": "513225",
        "name": "九寨沟县",
        "parentId": "513200",
        "shortName": "九寨沟",
        "letter": "J",
        "cityCode": "0837",
        "pinyin": "Jiuzhaigou"
    },
    {
        "id": "513226",
        "name": "金川县",
        "parentId": "513200",
        "shortName": "金川",
        "letter": "J",
        "cityCode": "0837",
        "pinyin": "Jinchuan"
    },
    {
        "id": "513227",
        "name": "小金县",
        "parentId": "513200",
        "shortName": "小金",
        "letter": "X",
        "cityCode": "0837",
        "pinyin": "Xiaojin"
    },
    {
        "id": "513228",
        "name": "黑水县",
        "parentId": "513200",
        "shortName": "黑水",
        "letter": "H",
        "cityCode": "0837",
        "pinyin": "Heishui"
    },
    {
        "id": "513229",
        "name": "马尔康县",
        "parentId": "513200",
        "shortName": "马尔康",
        "letter": "M",
        "cityCode": "0837",
        "pinyin": "Maerkang"
    },
    {
        "id": "513230",
        "name": "壤塘县",
        "parentId": "513200",
        "shortName": "壤塘",
        "letter": "R",
        "cityCode": "0837",
        "pinyin": "Rangtang"
    },
    {
        "id": "513231",
        "name": "阿坝县",
        "parentId": "513200",
        "shortName": "阿坝",
        "letter": "A",
        "cityCode": "0837",
        "pinyin": "Aba"
    },
    {
        "id": "513232",
        "name": "若尔盖县",
        "parentId": "513200",
        "shortName": "若尔盖",
        "letter": "R",
        "cityCode": "0837",
        "pinyin": "Ruoergai"
    },
    {
        "id": "513233",
        "name": "红原县",
        "parentId": "513200",
        "shortName": "红原",
        "letter": "H",
        "cityCode": "0837",
        "pinyin": "Hongyuan"
    },
    {
        "id": "513300",
        "name": "甘孜藏族自治州",
        "parentId": "510000",
        "shortName": "甘孜",
        "letter": "G",
        "cityCode": "0836",
        "pinyin": "Garze"
    },
    {
        "id": "513321",
        "name": "康定县",
        "parentId": "513300",
        "shortName": "康定",
        "letter": "K",
        "cityCode": "0836",
        "pinyin": "Kangding"
    },
    {
        "id": "513322",
        "name": "泸定县",
        "parentId": "513300",
        "shortName": "泸定",
        "letter": "L",
        "cityCode": "0836",
        "pinyin": "Luding"
    },
    {
        "id": "513323",
        "name": "丹巴县",
        "parentId": "513300",
        "shortName": "丹巴",
        "letter": "D",
        "cityCode": "0836",
        "pinyin": "Danba"
    },
    {
        "id": "513324",
        "name": "九龙县",
        "parentId": "513300",
        "shortName": "九龙",
        "letter": "J",
        "cityCode": "0836",
        "pinyin": "Jiulong"
    },
    {
        "id": "513325",
        "name": "雅江县",
        "parentId": "513300",
        "shortName": "雅江",
        "letter": "Y",
        "cityCode": "0836",
        "pinyin": "Yajiang"
    },
    {
        "id": "513326",
        "name": "道孚县",
        "parentId": "513300",
        "shortName": "道孚",
        "letter": "D",
        "cityCode": "0836",
        "pinyin": "Daofu"
    },
    {
        "id": "513327",
        "name": "炉霍县",
        "parentId": "513300",
        "shortName": "炉霍",
        "letter": "L",
        "cityCode": "0836",
        "pinyin": "Luhuo"
    },
    {
        "id": "513328",
        "name": "甘孜县",
        "parentId": "513300",
        "shortName": "甘孜",
        "letter": "G",
        "cityCode": "0836",
        "pinyin": "Ganzi"
    },
    {
        "id": "513329",
        "name": "新龙县",
        "parentId": "513300",
        "shortName": "新龙",
        "letter": "X",
        "cityCode": "0836",
        "pinyin": "Xinlong"
    },
    {
        "id": "513330",
        "name": "德格县",
        "parentId": "513300",
        "shortName": "德格",
        "letter": "D",
        "cityCode": "0836",
        "pinyin": "Dege"
    },
    {
        "id": "513331",
        "name": "白玉县",
        "parentId": "513300",
        "shortName": "白玉",
        "letter": "B",
        "cityCode": "0836",
        "pinyin": "Baiyu"
    },
    {
        "id": "513332",
        "name": "石渠县",
        "parentId": "513300",
        "shortName": "石渠",
        "letter": "S",
        "cityCode": "0836",
        "pinyin": "Shiqu"
    },
    {
        "id": "513333",
        "name": "色达县",
        "parentId": "513300",
        "shortName": "色达",
        "letter": "S",
        "cityCode": "0836",
        "pinyin": "Seda"
    },
    {
        "id": "513334",
        "name": "理塘县",
        "parentId": "513300",
        "shortName": "理塘",
        "letter": "L",
        "cityCode": "0836",
        "pinyin": "Litang"
    },
    {
        "id": "513335",
        "name": "巴塘县",
        "parentId": "513300",
        "shortName": "巴塘",
        "letter": "B",
        "cityCode": "0836",
        "pinyin": "Batang"
    },
    {
        "id": "513336",
        "name": "乡城县",
        "parentId": "513300",
        "shortName": "乡城",
        "letter": "X",
        "cityCode": "0836",
        "pinyin": "Xiangcheng"
    },
    {
        "id": "513337",
        "name": "稻城县",
        "parentId": "513300",
        "shortName": "稻城",
        "letter": "D",
        "cityCode": "0836",
        "pinyin": "Daocheng"
    },
    {
        "id": "513338",
        "name": "得荣县",
        "parentId": "513300",
        "shortName": "得荣",
        "letter": "D",
        "cityCode": "0836",
        "pinyin": "Derong"
    },
    {
        "id": "513400",
        "name": "凉山彝族自治州",
        "parentId": "510000",
        "shortName": "凉山",
        "letter": "L",
        "cityCode": "0834",
        "pinyin": "Liangshan"
    },
    {
        "id": "513401",
        "name": "西昌市",
        "parentId": "513400",
        "shortName": "西昌",
        "letter": "X",
        "cityCode": "0835",
        "pinyin": "Xichang"
    },
    {
        "id": "513422",
        "name": "木里藏族自治县",
        "parentId": "513400",
        "shortName": "木里",
        "letter": "M",
        "cityCode": "0851",
        "pinyin": "Muli"
    },
    {
        "id": "513423",
        "name": "盐源县",
        "parentId": "513400",
        "shortName": "盐源",
        "letter": "Y",
        "cityCode": "0836",
        "pinyin": "Yanyuan"
    },
    {
        "id": "513424",
        "name": "德昌县",
        "parentId": "513400",
        "shortName": "德昌",
        "letter": "D",
        "cityCode": "0837",
        "pinyin": "Dechang"
    },
    {
        "id": "513425",
        "name": "会理县",
        "parentId": "513400",
        "shortName": "会理",
        "letter": "H",
        "cityCode": "0838",
        "pinyin": "Huili"
    },
    {
        "id": "513426",
        "name": "会东县",
        "parentId": "513400",
        "shortName": "会东",
        "letter": "H",
        "cityCode": "0839",
        "pinyin": "Huidong"
    },
    {
        "id": "513427",
        "name": "宁南县",
        "parentId": "513400",
        "shortName": "宁南",
        "letter": "N",
        "cityCode": "0840",
        "pinyin": "Ningnan"
    },
    {
        "id": "513428",
        "name": "普格县",
        "parentId": "513400",
        "shortName": "普格",
        "letter": "P",
        "cityCode": "0841",
        "pinyin": "Puge"
    },
    {
        "id": "513429",
        "name": "布拖县",
        "parentId": "513400",
        "shortName": "布拖",
        "letter": "B",
        "cityCode": "0842",
        "pinyin": "Butuo"
    },
    {
        "id": "513430",
        "name": "金阳县",
        "parentId": "513400",
        "shortName": "金阳",
        "letter": "J",
        "cityCode": "0843",
        "pinyin": "Jinyang"
    },
    {
        "id": "513431",
        "name": "昭觉县",
        "parentId": "513400",
        "shortName": "昭觉",
        "letter": "Z",
        "cityCode": "0844",
        "pinyin": "Zhaojue"
    },
    {
        "id": "513432",
        "name": "喜德县",
        "parentId": "513400",
        "shortName": "喜德",
        "letter": "X",
        "cityCode": "0845",
        "pinyin": "Xide"
    },
    {
        "id": "513433",
        "name": "冕宁县",
        "parentId": "513400",
        "shortName": "冕宁",
        "letter": "M",
        "cityCode": "0846",
        "pinyin": "Mianning"
    },
    {
        "id": "513434",
        "name": "越西县",
        "parentId": "513400",
        "shortName": "越西",
        "letter": "Y",
        "cityCode": "0847",
        "pinyin": "Yuexi"
    },
    {
        "id": "513435",
        "name": "甘洛县",
        "parentId": "513400",
        "shortName": "甘洛",
        "letter": "G",
        "cityCode": "0848",
        "pinyin": "Ganluo"
    },
    {
        "id": "513436",
        "name": "美姑县",
        "parentId": "513400",
        "shortName": "美姑",
        "letter": "M",
        "cityCode": "0849",
        "pinyin": "Meigu"
    },
    {
        "id": "513437",
        "name": "雷波县",
        "parentId": "513400",
        "shortName": "雷波",
        "letter": "L",
        "cityCode": "0850",
        "pinyin": "Leibo"
    },
    {
        "id": "520000",
        "name": "贵州省",
        "parentId": "100000",
        "shortName": "贵州",
        "letter": "G",
        "cityCode": "",
        "pinyin": "Guizhou"
    },
    {
        "id": "520100",
        "name": "贵阳市",
        "parentId": "520000",
        "shortName": "贵阳",
        "letter": "G",
        "cityCode": "0851",
        "pinyin": "Guiyang"
    },
    {
        "id": "520102",
        "name": "南明区",
        "parentId": "520100",
        "shortName": "南明",
        "letter": "N",
        "cityCode": "0851",
        "pinyin": "Nanming"
    },
    {
        "id": "520103",
        "name": "云岩区",
        "parentId": "520100",
        "shortName": "云岩",
        "letter": "Y",
        "cityCode": "0851",
        "pinyin": "Yunyan"
    },
    {
        "id": "520111",
        "name": "花溪区",
        "parentId": "520100",
        "shortName": "花溪",
        "letter": "H",
        "cityCode": "0851",
        "pinyin": "Huaxi"
    },
    {
        "id": "520112",
        "name": "乌当区",
        "parentId": "520100",
        "shortName": "乌当",
        "letter": "W",
        "cityCode": "0851",
        "pinyin": "Wudang"
    },
    {
        "id": "520113",
        "name": "白云区",
        "parentId": "520100",
        "shortName": "白云",
        "letter": "B",
        "cityCode": "0851",
        "pinyin": "Baiyun"
    },
    {
        "id": "520115",
        "name": "观山湖区",
        "parentId": "520100",
        "shortName": "观山湖",
        "letter": "G",
        "cityCode": "0851",
        "pinyin": "Guanshanhu"
    },
    {
        "id": "520121",
        "name": "开阳县",
        "parentId": "520100",
        "shortName": "开阳",
        "letter": "K",
        "cityCode": "0851",
        "pinyin": "Kaiyang"
    },
    {
        "id": "520122",
        "name": "息烽县",
        "parentId": "520100",
        "shortName": "息烽",
        "letter": "X",
        "cityCode": "0851",
        "pinyin": "Xifeng"
    },
    {
        "id": "520123",
        "name": "修文县",
        "parentId": "520100",
        "shortName": "修文",
        "letter": "X",
        "cityCode": "0851",
        "pinyin": "Xiuwen"
    },
    {
        "id": "520181",
        "name": "清镇市",
        "parentId": "520100",
        "shortName": "清镇",
        "letter": "Q",
        "cityCode": "0851",
        "pinyin": "Qingzhen"
    },
    {
        "id": "520200",
        "name": "六盘水市",
        "parentId": "520000",
        "shortName": "六盘水",
        "letter": "L",
        "cityCode": "0858",
        "pinyin": "Liupanshui"
    },
    {
        "id": "520201",
        "name": "钟山区",
        "parentId": "520200",
        "shortName": "钟山",
        "letter": "Z",
        "cityCode": "0858",
        "pinyin": "Zhongshan"
    },
    {
        "id": "520203",
        "name": "六枝特区",
        "parentId": "520200",
        "shortName": "六枝",
        "letter": "L",
        "cityCode": "0858",
        "pinyin": "Liuzhi"
    },
    {
        "id": "520221",
        "name": "水城县",
        "parentId": "520200",
        "shortName": "水城",
        "letter": "S",
        "cityCode": "0858",
        "pinyin": "Shuicheng"
    },
    {
        "id": "520222",
        "name": "盘县",
        "parentId": "520200",
        "shortName": "盘县",
        "letter": "P",
        "cityCode": "0858",
        "pinyin": "Panxian"
    },
    {
        "id": "520300",
        "name": "遵义市",
        "parentId": "520000",
        "shortName": "遵义",
        "letter": "Z",
        "cityCode": "0852",
        "pinyin": "Zunyi"
    },
    {
        "id": "520302",
        "name": "红花岗区",
        "parentId": "520300",
        "shortName": "红花岗",
        "letter": "H",
        "cityCode": "0852",
        "pinyin": "Honghuagang"
    },
    {
        "id": "520303",
        "name": "汇川区",
        "parentId": "520300",
        "shortName": "汇川",
        "letter": "H",
        "cityCode": "0852",
        "pinyin": "Huichuan"
    },
    {
        "id": "520321",
        "name": "遵义县",
        "parentId": "520300",
        "shortName": "遵义",
        "letter": "Z",
        "cityCode": "0852",
        "pinyin": "Zunyi"
    },
    {
        "id": "520322",
        "name": "桐梓县",
        "parentId": "520300",
        "shortName": "桐梓",
        "letter": "T",
        "cityCode": "0852",
        "pinyin": "Tongzi"
    },
    {
        "id": "520323",
        "name": "绥阳县",
        "parentId": "520300",
        "shortName": "绥阳",
        "letter": "S",
        "cityCode": "0852",
        "pinyin": "Suiyang"
    },
    {
        "id": "520324",
        "name": "正安县",
        "parentId": "520300",
        "shortName": "正安",
        "letter": "Z",
        "cityCode": "0852",
        "pinyin": "Zheng'an"
    },
    {
        "id": "520325",
        "name": "道真仡佬族苗族自治县",
        "parentId": "520300",
        "shortName": "道真",
        "letter": "D",
        "cityCode": "0852",
        "pinyin": "Daozhen"
    },
    {
        "id": "520326",
        "name": "务川仡佬族苗族自治县",
        "parentId": "520300",
        "shortName": "务川",
        "letter": "W",
        "cityCode": "0852",
        "pinyin": "Wuchuan"
    },
    {
        "id": "520327",
        "name": "凤冈县",
        "parentId": "520300",
        "shortName": "凤冈",
        "letter": "F",
        "cityCode": "0852",
        "pinyin": "Fenggang"
    },
    {
        "id": "520328",
        "name": "湄潭县",
        "parentId": "520300",
        "shortName": "湄潭",
        "letter": "M",
        "cityCode": "0852",
        "pinyin": "Meitan"
    },
    {
        "id": "520329",
        "name": "余庆县",
        "parentId": "520300",
        "shortName": "余庆",
        "letter": "Y",
        "cityCode": "0852",
        "pinyin": "Yuqing"
    },
    {
        "id": "520330",
        "name": "习水县",
        "parentId": "520300",
        "shortName": "习水",
        "letter": "X",
        "cityCode": "0852",
        "pinyin": "Xishui"
    },
    {
        "id": "520381",
        "name": "赤水市",
        "parentId": "520300",
        "shortName": "赤水",
        "letter": "C",
        "cityCode": "0852",
        "pinyin": "Chishui"
    },
    {
        "id": "520382",
        "name": "仁怀市",
        "parentId": "520300",
        "shortName": "仁怀",
        "letter": "R",
        "cityCode": "0852",
        "pinyin": "Renhuai"
    },
    {
        "id": "520400",
        "name": "安顺市",
        "parentId": "520000",
        "shortName": "安顺",
        "letter": "A",
        "cityCode": "0853",
        "pinyin": "Anshun"
    },
    {
        "id": "520402",
        "name": "西秀区",
        "parentId": "520400",
        "shortName": "西秀",
        "letter": "X",
        "cityCode": "0853",
        "pinyin": "Xixiu"
    },
    {
        "id": "520421",
        "name": "平坝区",
        "parentId": "520400",
        "shortName": "平坝",
        "letter": "P",
        "cityCode": "0853",
        "pinyin": "Pingba"
    },
    {
        "id": "520422",
        "name": "普定县",
        "parentId": "520400",
        "shortName": "普定",
        "letter": "P",
        "cityCode": "0853",
        "pinyin": "Puding"
    },
    {
        "id": "520423",
        "name": "镇宁布依族苗族自治县",
        "parentId": "520400",
        "shortName": "镇宁",
        "letter": "Z",
        "cityCode": "0853",
        "pinyin": "Zhenning"
    },
    {
        "id": "520424",
        "name": "关岭布依族苗族自治县",
        "parentId": "520400",
        "shortName": "关岭",
        "letter": "G",
        "cityCode": "0853",
        "pinyin": "Guanling"
    },
    {
        "id": "520425",
        "name": "紫云苗族布依族自治县",
        "parentId": "520400",
        "shortName": "紫云",
        "letter": "Z",
        "cityCode": "0853",
        "pinyin": "Ziyun"
    },
    {
        "id": "520500",
        "name": "毕节市",
        "parentId": "520000",
        "shortName": "毕节",
        "letter": "B",
        "cityCode": "0857",
        "pinyin": "Bijie"
    },
    {
        "id": "520502",
        "name": "七星关区",
        "parentId": "520500",
        "shortName": "七星关",
        "letter": "Q",
        "cityCode": "0857",
        "pinyin": "Qixingguan"
    },
    {
        "id": "520521",
        "name": "大方县",
        "parentId": "520500",
        "shortName": "大方",
        "letter": "D",
        "cityCode": "0857",
        "pinyin": "Dafang"
    },
    {
        "id": "520522",
        "name": "黔西县",
        "parentId": "520500",
        "shortName": "黔西",
        "letter": "Q",
        "cityCode": "0857",
        "pinyin": "Qianxi"
    },
    {
        "id": "520523",
        "name": "金沙县",
        "parentId": "520500",
        "shortName": "金沙",
        "letter": "J",
        "cityCode": "0857",
        "pinyin": "Jinsha"
    },
    {
        "id": "520524",
        "name": "织金县",
        "parentId": "520500",
        "shortName": "织金",
        "letter": "Z",
        "cityCode": "0857",
        "pinyin": "Zhijin"
    },
    {
        "id": "520525",
        "name": "纳雍县",
        "parentId": "520500",
        "shortName": "纳雍",
        "letter": "N",
        "cityCode": "0857",
        "pinyin": "Nayong"
    },
    {
        "id": "520526",
        "name": "威宁彝族回族苗族自治县",
        "parentId": "520500",
        "shortName": "威宁",
        "letter": "W",
        "cityCode": "0857",
        "pinyin": "Weining"
    },
    {
        "id": "520527",
        "name": "赫章县",
        "parentId": "520500",
        "shortName": "赫章",
        "letter": "H",
        "cityCode": "0857",
        "pinyin": "Hezhang"
    },
    {
        "id": "520600",
        "name": "铜仁市",
        "parentId": "520000",
        "shortName": "铜仁",
        "letter": "T",
        "cityCode": "0856",
        "pinyin": "Tongren"
    },
    {
        "id": "520602",
        "name": "碧江区",
        "parentId": "520600",
        "shortName": "碧江",
        "letter": "B",
        "cityCode": "0856",
        "pinyin": "Bijiang"
    },
    {
        "id": "520603",
        "name": "万山区",
        "parentId": "520600",
        "shortName": "万山",
        "letter": "W",
        "cityCode": "0856",
        "pinyin": "Wanshan"
    },
    {
        "id": "520621",
        "name": "江口县",
        "parentId": "520600",
        "shortName": "江口",
        "letter": "J",
        "cityCode": "0856",
        "pinyin": "Jiangkou"
    },
    {
        "id": "520622",
        "name": "玉屏侗族自治县",
        "parentId": "520600",
        "shortName": "玉屏",
        "letter": "Y",
        "cityCode": "0856",
        "pinyin": "Yuping"
    },
    {
        "id": "520623",
        "name": "石阡县",
        "parentId": "520600",
        "shortName": "石阡",
        "letter": "S",
        "cityCode": "0856",
        "pinyin": "Shiqian"
    },
    {
        "id": "520624",
        "name": "思南县",
        "parentId": "520600",
        "shortName": "思南",
        "letter": "S",
        "cityCode": "0856",
        "pinyin": "Sinan"
    },
    {
        "id": "520625",
        "name": "印江土家族苗族自治县",
        "parentId": "520600",
        "shortName": "印江",
        "letter": "Y",
        "cityCode": "0856",
        "pinyin": "Yinjiang"
    },
    {
        "id": "520626",
        "name": "德江县",
        "parentId": "520600",
        "shortName": "德江",
        "letter": "D",
        "cityCode": "0856",
        "pinyin": "Dejiang"
    },
    {
        "id": "520627",
        "name": "沿河土家族自治县",
        "parentId": "520600",
        "shortName": "沿河",
        "letter": "Y",
        "cityCode": "0856",
        "pinyin": "Yuanhe"
    },
    {
        "id": "520628",
        "name": "松桃苗族自治县",
        "parentId": "520600",
        "shortName": "松桃",
        "letter": "S",
        "cityCode": "0856",
        "pinyin": "Songtao"
    },
    {
        "id": "522300",
        "name": "黔西南布依族苗族自治州",
        "parentId": "520000",
        "shortName": "黔西南",
        "letter": "Q",
        "cityCode": "0859",
        "pinyin": "Qianxinan"
    },
    {
        "id": "522301",
        "name": "兴义市",
        "parentId": "522300",
        "shortName": "兴义",
        "letter": "X",
        "cityCode": "0859",
        "pinyin": "Xingyi"
    },
    {
        "id": "522322",
        "name": "兴仁县",
        "parentId": "522300",
        "shortName": "兴仁",
        "letter": "X",
        "cityCode": "0859",
        "pinyin": "Xingren"
    },
    {
        "id": "522323",
        "name": "普安县",
        "parentId": "522300",
        "shortName": "普安",
        "letter": "P",
        "cityCode": "0859",
        "pinyin": "Pu'an"
    },
    {
        "id": "522324",
        "name": "晴隆县",
        "parentId": "522300",
        "shortName": "晴隆",
        "letter": "Q",
        "cityCode": "0859",
        "pinyin": "Qinglong"
    },
    {
        "id": "522325",
        "name": "贞丰县",
        "parentId": "522300",
        "shortName": "贞丰",
        "letter": "Z",
        "cityCode": "0859",
        "pinyin": "Zhenfeng"
    },
    {
        "id": "522326",
        "name": "望谟县",
        "parentId": "522300",
        "shortName": "望谟",
        "letter": "W",
        "cityCode": "0859",
        "pinyin": "Wangmo"
    },
    {
        "id": "522327",
        "name": "册亨县",
        "parentId": "522300",
        "shortName": "册亨",
        "letter": "C",
        "cityCode": "0859",
        "pinyin": "Ceheng"
    },
    {
        "id": "522328",
        "name": "安龙县",
        "parentId": "522300",
        "shortName": "安龙",
        "letter": "A",
        "cityCode": "0859",
        "pinyin": "Anlong"
    },
    {
        "id": "522600",
        "name": "黔东南苗族侗族自治州",
        "parentId": "520000",
        "shortName": "黔东南",
        "letter": "Q",
        "cityCode": "0855",
        "pinyin": "Qiandongnan"
    },
    {
        "id": "522601",
        "name": "凯里市",
        "parentId": "522600",
        "shortName": "凯里",
        "letter": "K",
        "cityCode": "0855",
        "pinyin": "Kaili"
    },
    {
        "id": "522622",
        "name": "黄平县",
        "parentId": "522600",
        "shortName": "黄平",
        "letter": "H",
        "cityCode": "0855",
        "pinyin": "Huangping"
    },
    {
        "id": "522623",
        "name": "施秉县",
        "parentId": "522600",
        "shortName": "施秉",
        "letter": "S",
        "cityCode": "0855",
        "pinyin": "Shibing"
    },
    {
        "id": "522624",
        "name": "三穗县",
        "parentId": "522600",
        "shortName": "三穗",
        "letter": "S",
        "cityCode": "0855",
        "pinyin": "Sansui"
    },
    {
        "id": "522625",
        "name": "镇远县",
        "parentId": "522600",
        "shortName": "镇远",
        "letter": "Z",
        "cityCode": "0855",
        "pinyin": "Zhenyuan"
    },
    {
        "id": "522626",
        "name": "岑巩县",
        "parentId": "522600",
        "shortName": "岑巩",
        "letter": "C",
        "cityCode": "0855",
        "pinyin": "Cengong"
    },
    {
        "id": "522627",
        "name": "天柱县",
        "parentId": "522600",
        "shortName": "天柱",
        "letter": "T",
        "cityCode": "0855",
        "pinyin": "Tianzhu"
    },
    {
        "id": "522628",
        "name": "锦屏县",
        "parentId": "522600",
        "shortName": "锦屏",
        "letter": "J",
        "cityCode": "0855",
        "pinyin": "Jinping"
    },
    {
        "id": "522629",
        "name": "剑河县",
        "parentId": "522600",
        "shortName": "剑河",
        "letter": "J",
        "cityCode": "0855",
        "pinyin": "Jianhe"
    },
    {
        "id": "522630",
        "name": "台江县",
        "parentId": "522600",
        "shortName": "台江",
        "letter": "T",
        "cityCode": "0855",
        "pinyin": "Taijiang"
    },
    {
        "id": "522631",
        "name": "黎平县",
        "parentId": "522600",
        "shortName": "黎平",
        "letter": "L",
        "cityCode": "0855",
        "pinyin": "Liping"
    },
    {
        "id": "522632",
        "name": "榕江县",
        "parentId": "522600",
        "shortName": "榕江",
        "letter": "R",
        "cityCode": "0855",
        "pinyin": "Rongjiang"
    },
    {
        "id": "522633",
        "name": "从江县",
        "parentId": "522600",
        "shortName": "从江",
        "letter": "C",
        "cityCode": "0855",
        "pinyin": "Congjiang"
    },
    {
        "id": "522634",
        "name": "雷山县",
        "parentId": "522600",
        "shortName": "雷山",
        "letter": "L",
        "cityCode": "0855",
        "pinyin": "Leishan"
    },
    {
        "id": "522635",
        "name": "麻江县",
        "parentId": "522600",
        "shortName": "麻江",
        "letter": "M",
        "cityCode": "0855",
        "pinyin": "Majiang"
    },
    {
        "id": "522636",
        "name": "丹寨县",
        "parentId": "522600",
        "shortName": "丹寨",
        "letter": "D",
        "cityCode": "0855",
        "pinyin": "Danzhai"
    },
    {
        "id": "522700",
        "name": "黔南布依族苗族自治州",
        "parentId": "520000",
        "shortName": "黔南",
        "letter": "Q",
        "cityCode": "0854",
        "pinyin": "Qiannan"
    },
    {
        "id": "522701",
        "name": "都匀市",
        "parentId": "522700",
        "shortName": "都匀",
        "letter": "D",
        "cityCode": "0854",
        "pinyin": "Duyun"
    },
    {
        "id": "522702",
        "name": "福泉市",
        "parentId": "522700",
        "shortName": "福泉",
        "letter": "F",
        "cityCode": "0854",
        "pinyin": "Fuquan"
    },
    {
        "id": "522722",
        "name": "荔波县",
        "parentId": "522700",
        "shortName": "荔波",
        "letter": "L",
        "cityCode": "0854",
        "pinyin": "Libo"
    },
    {
        "id": "522723",
        "name": "贵定县",
        "parentId": "522700",
        "shortName": "贵定",
        "letter": "G",
        "cityCode": "0854",
        "pinyin": "Guiding"
    },
    {
        "id": "522725",
        "name": "瓮安县",
        "parentId": "522700",
        "shortName": "瓮安",
        "letter": "W",
        "cityCode": "0854",
        "pinyin": "Weng'an"
    },
    {
        "id": "522726",
        "name": "独山县",
        "parentId": "522700",
        "shortName": "独山",
        "letter": "D",
        "cityCode": "0854",
        "pinyin": "Dushan"
    },
    {
        "id": "522727",
        "name": "平塘县",
        "parentId": "522700",
        "shortName": "平塘",
        "letter": "P",
        "cityCode": "0854",
        "pinyin": "Pingtang"
    },
    {
        "id": "522728",
        "name": "罗甸县",
        "parentId": "522700",
        "shortName": "罗甸",
        "letter": "L",
        "cityCode": "0854",
        "pinyin": "Luodian"
    },
    {
        "id": "522729",
        "name": "长顺县",
        "parentId": "522700",
        "shortName": "长顺",
        "letter": "C",
        "cityCode": "0854",
        "pinyin": "Changshun"
    },
    {
        "id": "522730",
        "name": "龙里县",
        "parentId": "522700",
        "shortName": "龙里",
        "letter": "L",
        "cityCode": "0854",
        "pinyin": "Longli"
    },
    {
        "id": "522731",
        "name": "惠水县",
        "parentId": "522700",
        "shortName": "惠水",
        "letter": "H",
        "cityCode": "0854",
        "pinyin": "Huishui"
    },
    {
        "id": "522732",
        "name": "三都水族自治县",
        "parentId": "522700",
        "shortName": "三都",
        "letter": "S",
        "cityCode": "0854",
        "pinyin": "Sandu"
    },
    {
        "id": "530000",
        "name": "云南省",
        "parentId": "100000",
        "shortName": "云南",
        "letter": "Y",
        "cityCode": "",
        "pinyin": "Yunnan"
    },
    {
        "id": "530100",
        "name": "昆明市",
        "parentId": "530000",
        "shortName": "昆明",
        "letter": "K",
        "cityCode": "0871",
        "pinyin": "Kunming"
    },
    {
        "id": "530102",
        "name": "五华区",
        "parentId": "530100",
        "shortName": "五华",
        "letter": "W",
        "cityCode": "0871",
        "pinyin": "Wuhua"
    },
    {
        "id": "530103",
        "name": "盘龙区",
        "parentId": "530100",
        "shortName": "盘龙",
        "letter": "P",
        "cityCode": "0871",
        "pinyin": "Panlong"
    },
    {
        "id": "530111",
        "name": "官渡区",
        "parentId": "530100",
        "shortName": "官渡",
        "letter": "G",
        "cityCode": "0871",
        "pinyin": "Guandu"
    },
    {
        "id": "530112",
        "name": "西山区",
        "parentId": "530100",
        "shortName": "西山",
        "letter": "X",
        "cityCode": "0871",
        "pinyin": "Xishan"
    },
    {
        "id": "530113",
        "name": "东川区",
        "parentId": "530100",
        "shortName": "东川",
        "letter": "D",
        "cityCode": "0871",
        "pinyin": "Dongchuan"
    },
    {
        "id": "530114",
        "name": "呈贡区",
        "parentId": "530100",
        "shortName": "呈贡",
        "letter": "C",
        "cityCode": "0871",
        "pinyin": "Chenggong"
    },
    {
        "id": "530122",
        "name": "晋宁县",
        "parentId": "530100",
        "shortName": "晋宁",
        "letter": "J",
        "cityCode": "0871",
        "pinyin": "Jinning"
    },
    {
        "id": "530124",
        "name": "富民县",
        "parentId": "530100",
        "shortName": "富民",
        "letter": "F",
        "cityCode": "0871",
        "pinyin": "Fumin"
    },
    {
        "id": "530125",
        "name": "宜良县",
        "parentId": "530100",
        "shortName": "宜良",
        "letter": "Y",
        "cityCode": "0871",
        "pinyin": "Yiliang"
    },
    {
        "id": "530126",
        "name": "石林彝族自治县",
        "parentId": "530100",
        "shortName": "石林",
        "letter": "S",
        "cityCode": "0871",
        "pinyin": "Shilin"
    },
    {
        "id": "530127",
        "name": "嵩明县",
        "parentId": "530100",
        "shortName": "嵩明",
        "letter": "S",
        "cityCode": "0871",
        "pinyin": "Songming"
    },
    {
        "id": "530128",
        "name": "禄劝彝族苗族自治县",
        "parentId": "530100",
        "shortName": "禄劝",
        "letter": "L",
        "cityCode": "0871",
        "pinyin": "Luquan"
    },
    {
        "id": "530129",
        "name": "寻甸回族彝族自治县",
        "parentId": "530100",
        "shortName": "寻甸",
        "letter": "X",
        "cityCode": "0871",
        "pinyin": "Xundian"
    },
    {
        "id": "530181",
        "name": "安宁市",
        "parentId": "530100",
        "shortName": "安宁",
        "letter": "A",
        "cityCode": "0871",
        "pinyin": "Anning"
    },
    {
        "id": "530300",
        "name": "曲靖市",
        "parentId": "530000",
        "shortName": "曲靖",
        "letter": "Q",
        "cityCode": "0874",
        "pinyin": "Qujing"
    },
    {
        "id": "530302",
        "name": "麒麟区",
        "parentId": "530300",
        "shortName": "麒麟",
        "letter": "Q",
        "cityCode": "0874",
        "pinyin": "Qilin"
    },
    {
        "id": "530321",
        "name": "马龙县",
        "parentId": "530300",
        "shortName": "马龙",
        "letter": "M",
        "cityCode": "0874",
        "pinyin": "Malong"
    },
    {
        "id": "530322",
        "name": "陆良县",
        "parentId": "530300",
        "shortName": "陆良",
        "letter": "L",
        "cityCode": "0874",
        "pinyin": "Luliang"
    },
    {
        "id": "530323",
        "name": "师宗县",
        "parentId": "530300",
        "shortName": "师宗",
        "letter": "S",
        "cityCode": "0874",
        "pinyin": "Shizong"
    },
    {
        "id": "530324",
        "name": "罗平县",
        "parentId": "530300",
        "shortName": "罗平",
        "letter": "L",
        "cityCode": "0874",
        "pinyin": "Luoping"
    },
    {
        "id": "530325",
        "name": "富源县",
        "parentId": "530300",
        "shortName": "富源",
        "letter": "F",
        "cityCode": "0874",
        "pinyin": "Fuyuan"
    },
    {
        "id": "530326",
        "name": "会泽县",
        "parentId": "530300",
        "shortName": "会泽",
        "letter": "H",
        "cityCode": "0874",
        "pinyin": "Huize"
    },
    {
        "id": "530328",
        "name": "沾益县",
        "parentId": "530300",
        "shortName": "沾益",
        "letter": "Z",
        "cityCode": "0874",
        "pinyin": "Zhanyi"
    },
    {
        "id": "530381",
        "name": "宣威市",
        "parentId": "530300",
        "shortName": "宣威",
        "letter": "X",
        "cityCode": "0874",
        "pinyin": "Xuanwei"
    },
    {
        "id": "530400",
        "name": "玉溪市",
        "parentId": "530000",
        "shortName": "玉溪",
        "letter": "Y",
        "cityCode": "0877",
        "pinyin": "Yuxi"
    },
    {
        "id": "530402",
        "name": "红塔区",
        "parentId": "530400",
        "shortName": "红塔",
        "letter": "H",
        "cityCode": "0877",
        "pinyin": "Hongta"
    },
    {
        "id": "530421",
        "name": "江川县",
        "parentId": "530400",
        "shortName": "江川",
        "letter": "J",
        "cityCode": "0877",
        "pinyin": "Jiangchuan"
    },
    {
        "id": "530422",
        "name": "澄江县",
        "parentId": "530400",
        "shortName": "澄江",
        "letter": "C",
        "cityCode": "0877",
        "pinyin": "Chengjiang"
    },
    {
        "id": "530423",
        "name": "通海县",
        "parentId": "530400",
        "shortName": "通海",
        "letter": "T",
        "cityCode": "0877",
        "pinyin": "Tonghai"
    },
    {
        "id": "530424",
        "name": "华宁县",
        "parentId": "530400",
        "shortName": "华宁",
        "letter": "H",
        "cityCode": "0877",
        "pinyin": "Huaning"
    },
    {
        "id": "530425",
        "name": "易门县",
        "parentId": "530400",
        "shortName": "易门",
        "letter": "Y",
        "cityCode": "0877",
        "pinyin": "Yimen"
    },
    {
        "id": "530426",
        "name": "峨山彝族自治县",
        "parentId": "530400",
        "shortName": "峨山",
        "letter": "E",
        "cityCode": "0877",
        "pinyin": "Eshan"
    },
    {
        "id": "530427",
        "name": "新平彝族傣族自治县",
        "parentId": "530400",
        "shortName": "新平",
        "letter": "X",
        "cityCode": "0877",
        "pinyin": "Xinping"
    },
    {
        "id": "530428",
        "name": "元江哈尼族彝族傣族自治县",
        "parentId": "530400",
        "shortName": "元江",
        "letter": "Y",
        "cityCode": "0877",
        "pinyin": "Yuanjiang"
    },
    {
        "id": "530500",
        "name": "保山市",
        "parentId": "530000",
        "shortName": "保山",
        "letter": "B",
        "cityCode": "0875",
        "pinyin": "Baoshan"
    },
    {
        "id": "530502",
        "name": "隆阳区",
        "parentId": "530500",
        "shortName": "隆阳",
        "letter": "L",
        "cityCode": "0875",
        "pinyin": "Longyang"
    },
    {
        "id": "530521",
        "name": "施甸县",
        "parentId": "530500",
        "shortName": "施甸",
        "letter": "S",
        "cityCode": "0875",
        "pinyin": "Shidian"
    },
    {
        "id": "530522",
        "name": "腾冲县",
        "parentId": "530500",
        "shortName": "腾冲",
        "letter": "T",
        "cityCode": "0875",
        "pinyin": "Tengchong"
    },
    {
        "id": "530523",
        "name": "龙陵县",
        "parentId": "530500",
        "shortName": "龙陵",
        "letter": "L",
        "cityCode": "0875",
        "pinyin": "Longling"
    },
    {
        "id": "530524",
        "name": "昌宁县",
        "parentId": "530500",
        "shortName": "昌宁",
        "letter": "C",
        "cityCode": "0875",
        "pinyin": "Changning"
    },
    {
        "id": "530600",
        "name": "昭通市",
        "parentId": "530000",
        "shortName": "昭通",
        "letter": "Z",
        "cityCode": "0870",
        "pinyin": "Zhaotong"
    },
    {
        "id": "530602",
        "name": "昭阳区",
        "parentId": "530600",
        "shortName": "昭阳",
        "letter": "Z",
        "cityCode": "0870",
        "pinyin": "Zhaoyang"
    },
    {
        "id": "530621",
        "name": "鲁甸县",
        "parentId": "530600",
        "shortName": "鲁甸",
        "letter": "L",
        "cityCode": "0870",
        "pinyin": "Ludian"
    },
    {
        "id": "530622",
        "name": "巧家县",
        "parentId": "530600",
        "shortName": "巧家",
        "letter": "Q",
        "cityCode": "0870",
        "pinyin": "Qiaojia"
    },
    {
        "id": "530623",
        "name": "盐津县",
        "parentId": "530600",
        "shortName": "盐津",
        "letter": "Y",
        "cityCode": "0870",
        "pinyin": "Yanjin"
    },
    {
        "id": "530624",
        "name": "大关县",
        "parentId": "530600",
        "shortName": "大关",
        "letter": "D",
        "cityCode": "0870",
        "pinyin": "Daguan"
    },
    {
        "id": "530625",
        "name": "永善县",
        "parentId": "530600",
        "shortName": "永善",
        "letter": "Y",
        "cityCode": "0870",
        "pinyin": "Yongshan"
    },
    {
        "id": "530626",
        "name": "绥江县",
        "parentId": "530600",
        "shortName": "绥江",
        "letter": "S",
        "cityCode": "0870",
        "pinyin": "Suijiang"
    },
    {
        "id": "530627",
        "name": "镇雄县",
        "parentId": "530600",
        "shortName": "镇雄",
        "letter": "Z",
        "cityCode": "0870",
        "pinyin": "Zhenxiong"
    },
    {
        "id": "530628",
        "name": "彝良县",
        "parentId": "530600",
        "shortName": "彝良",
        "letter": "Y",
        "cityCode": "0870",
        "pinyin": "Yiliang"
    },
    {
        "id": "530629",
        "name": "威信县",
        "parentId": "530600",
        "shortName": "威信",
        "letter": "W",
        "cityCode": "0870",
        "pinyin": "Weixin"
    },
    {
        "id": "530630",
        "name": "水富县",
        "parentId": "530600",
        "shortName": "水富",
        "letter": "S",
        "cityCode": "0870",
        "pinyin": "Shuifu"
    },
    {
        "id": "530700",
        "name": "丽江市",
        "parentId": "530000",
        "shortName": "丽江",
        "letter": "L",
        "cityCode": "0888",
        "pinyin": "Lijiang"
    },
    {
        "id": "530702",
        "name": "古城区",
        "parentId": "530700",
        "shortName": "古城",
        "letter": "G",
        "cityCode": "0888",
        "pinyin": "Gucheng"
    },
    {
        "id": "530721",
        "name": "玉龙纳西族自治县",
        "parentId": "530700",
        "shortName": "玉龙",
        "letter": "Y",
        "cityCode": "0888",
        "pinyin": "Yulong"
    },
    {
        "id": "530722",
        "name": "永胜县",
        "parentId": "530700",
        "shortName": "永胜",
        "letter": "Y",
        "cityCode": "0888",
        "pinyin": "Yongsheng"
    },
    {
        "id": "530723",
        "name": "华坪县",
        "parentId": "530700",
        "shortName": "华坪",
        "letter": "H",
        "cityCode": "0888",
        "pinyin": "Huaping"
    },
    {
        "id": "530724",
        "name": "宁蒗彝族自治县",
        "parentId": "530700",
        "shortName": "宁蒗",
        "letter": "N",
        "cityCode": "0888",
        "pinyin": "Ninglang"
    },
    {
        "id": "530800",
        "name": "普洱市",
        "parentId": "530000",
        "shortName": "普洱",
        "letter": "P",
        "cityCode": "0879",
        "pinyin": "Pu'er"
    },
    {
        "id": "530802",
        "name": "思茅区",
        "parentId": "530800",
        "shortName": "思茅",
        "letter": "S",
        "cityCode": "0879",
        "pinyin": "Simao"
    },
    {
        "id": "530821",
        "name": "宁洱哈尼族彝族自治县",
        "parentId": "530800",
        "shortName": "宁洱",
        "letter": "N",
        "cityCode": "0879",
        "pinyin": "Ninger"
    },
    {
        "id": "530822",
        "name": "墨江哈尼族自治县",
        "parentId": "530800",
        "shortName": "墨江",
        "letter": "M",
        "cityCode": "0879",
        "pinyin": "Mojiang"
    },
    {
        "id": "530823",
        "name": "景东彝族自治县",
        "parentId": "530800",
        "shortName": "景东",
        "letter": "J",
        "cityCode": "0879",
        "pinyin": "Jingdong"
    },
    {
        "id": "530824",
        "name": "景谷傣族彝族自治县",
        "parentId": "530800",
        "shortName": "景谷",
        "letter": "J",
        "cityCode": "0879",
        "pinyin": "Jinggu"
    },
    {
        "id": "530825",
        "name": "镇沅彝族哈尼族拉祜族自治县",
        "parentId": "530800",
        "shortName": "镇沅",
        "letter": "Z",
        "cityCode": "0879",
        "pinyin": "Zhenyuan"
    },
    {
        "id": "530826",
        "name": "江城哈尼族彝族自治县",
        "parentId": "530800",
        "shortName": "江城",
        "letter": "J",
        "cityCode": "0879",
        "pinyin": "Jiangcheng"
    },
    {
        "id": "530827",
        "name": "孟连傣族拉祜族佤族自治县",
        "parentId": "530800",
        "shortName": "孟连",
        "letter": "M",
        "cityCode": "0879",
        "pinyin": "Menglian"
    },
    {
        "id": "530828",
        "name": "澜沧拉祜族自治县",
        "parentId": "530800",
        "shortName": "澜沧",
        "letter": "L",
        "cityCode": "0879",
        "pinyin": "Lancang"
    },
    {
        "id": "530829",
        "name": "西盟佤族自治县",
        "parentId": "530800",
        "shortName": "西盟",
        "letter": "X",
        "cityCode": "0879",
        "pinyin": "Ximeng"
    },
    {
        "id": "530900",
        "name": "临沧市",
        "parentId": "530000",
        "shortName": "临沧",
        "letter": "L",
        "cityCode": "0883",
        "pinyin": "Lincang"
    },
    {
        "id": "530902",
        "name": "临翔区",
        "parentId": "530900",
        "shortName": "临翔",
        "letter": "L",
        "cityCode": "0883",
        "pinyin": "Linxiang"
    },
    {
        "id": "530921",
        "name": "凤庆县",
        "parentId": "530900",
        "shortName": "凤庆",
        "letter": "F",
        "cityCode": "0883",
        "pinyin": "Fengqing"
    },
    {
        "id": "530922",
        "name": "云县",
        "parentId": "530900",
        "shortName": "云县",
        "letter": "Y",
        "cityCode": "0883",
        "pinyin": "Yunxian"
    },
    {
        "id": "530923",
        "name": "永德县",
        "parentId": "530900",
        "shortName": "永德",
        "letter": "Y",
        "cityCode": "0883",
        "pinyin": "Yongde"
    },
    {
        "id": "530924",
        "name": "镇康县",
        "parentId": "530900",
        "shortName": "镇康",
        "letter": "Z",
        "cityCode": "0883",
        "pinyin": "Zhenkang"
    },
    {
        "id": "530925",
        "name": "双江拉祜族佤族布朗族傣族自治县",
        "parentId": "530900",
        "shortName": "双江",
        "letter": "S",
        "cityCode": "0883",
        "pinyin": "Shuangjiang"
    },
    {
        "id": "530926",
        "name": "耿马傣族佤族自治县",
        "parentId": "530900",
        "shortName": "耿马",
        "letter": "G",
        "cityCode": "0883",
        "pinyin": "Gengma"
    },
    {
        "id": "530927",
        "name": "沧源佤族自治县",
        "parentId": "530900",
        "shortName": "沧源",
        "letter": "C",
        "cityCode": "0883",
        "pinyin": "Cangyuan"
    },
    {
        "id": "532300",
        "name": "楚雄彝族自治州",
        "parentId": "530000",
        "shortName": "楚雄",
        "letter": "C",
        "cityCode": "0878",
        "pinyin": "Chuxiong"
    },
    {
        "id": "532301",
        "name": "楚雄市",
        "parentId": "532300",
        "shortName": "楚雄",
        "letter": "C",
        "cityCode": "0878",
        "pinyin": "Chuxiong"
    },
    {
        "id": "532322",
        "name": "双柏县",
        "parentId": "532300",
        "shortName": "双柏",
        "letter": "S",
        "cityCode": "0878",
        "pinyin": "Shuangbai"
    },
    {
        "id": "532323",
        "name": "牟定县",
        "parentId": "532300",
        "shortName": "牟定",
        "letter": "M",
        "cityCode": "0878",
        "pinyin": "Mouding"
    },
    {
        "id": "532324",
        "name": "南华县",
        "parentId": "532300",
        "shortName": "南华",
        "letter": "N",
        "cityCode": "0878",
        "pinyin": "Nanhua"
    },
    {
        "id": "532325",
        "name": "姚安县",
        "parentId": "532300",
        "shortName": "姚安",
        "letter": "Y",
        "cityCode": "0878",
        "pinyin": "Yao'an"
    },
    {
        "id": "532326",
        "name": "大姚县",
        "parentId": "532300",
        "shortName": "大姚",
        "letter": "D",
        "cityCode": "0878",
        "pinyin": "Dayao"
    },
    {
        "id": "532327",
        "name": "永仁县",
        "parentId": "532300",
        "shortName": "永仁",
        "letter": "Y",
        "cityCode": "0878",
        "pinyin": "Yongren"
    },
    {
        "id": "532328",
        "name": "元谋县",
        "parentId": "532300",
        "shortName": "元谋",
        "letter": "Y",
        "cityCode": "0878",
        "pinyin": "Yuanmou"
    },
    {
        "id": "532329",
        "name": "武定县",
        "parentId": "532300",
        "shortName": "武定",
        "letter": "W",
        "cityCode": "0878",
        "pinyin": "Wuding"
    },
    {
        "id": "532331",
        "name": "禄丰县",
        "parentId": "532300",
        "shortName": "禄丰",
        "letter": "L",
        "cityCode": "0878",
        "pinyin": "Lufeng"
    },
    {
        "id": "532500",
        "name": "红河哈尼族彝族自治州",
        "parentId": "530000",
        "shortName": "红河",
        "letter": "H",
        "cityCode": "0873",
        "pinyin": "Honghe"
    },
    {
        "id": "532501",
        "name": "个旧市",
        "parentId": "532500",
        "shortName": "个旧",
        "letter": "G",
        "cityCode": "0873",
        "pinyin": "Gejiu"
    },
    {
        "id": "532502",
        "name": "开远市",
        "parentId": "532500",
        "shortName": "开远",
        "letter": "K",
        "cityCode": "0873",
        "pinyin": "Kaiyuan"
    },
    {
        "id": "532503",
        "name": "蒙自市",
        "parentId": "532500",
        "shortName": "蒙自",
        "letter": "M",
        "cityCode": "0873",
        "pinyin": "Mengzi"
    },
    {
        "id": "532504",
        "name": "弥勒市",
        "parentId": "532500",
        "shortName": "弥勒",
        "letter": "M",
        "cityCode": "0873",
        "pinyin": "Mile"
    },
    {
        "id": "532523",
        "name": "屏边苗族自治县",
        "parentId": "532500",
        "shortName": "屏边",
        "letter": "P",
        "cityCode": "0873",
        "pinyin": "Pingbian"
    },
    {
        "id": "532524",
        "name": "建水县",
        "parentId": "532500",
        "shortName": "建水",
        "letter": "J",
        "cityCode": "0873",
        "pinyin": "Jianshui"
    },
    {
        "id": "532525",
        "name": "石屏县",
        "parentId": "532500",
        "shortName": "石屏",
        "letter": "S",
        "cityCode": "0873",
        "pinyin": "Shiping"
    },
    {
        "id": "532527",
        "name": "泸西县",
        "parentId": "532500",
        "shortName": "泸西",
        "letter": "L",
        "cityCode": "0873",
        "pinyin": "Luxi"
    },
    {
        "id": "532528",
        "name": "元阳县",
        "parentId": "532500",
        "shortName": "元阳",
        "letter": "Y",
        "cityCode": "0873",
        "pinyin": "Yuanyang"
    },
    {
        "id": "532529",
        "name": "红河县",
        "parentId": "532500",
        "shortName": "红河县",
        "letter": "H",
        "cityCode": "0873",
        "pinyin": "Honghexian"
    },
    {
        "id": "532530",
        "name": "金平苗族瑶族傣族自治县",
        "parentId": "532500",
        "shortName": "金平",
        "letter": "J",
        "cityCode": "0873",
        "pinyin": "Jinping"
    },
    {
        "id": "532531",
        "name": "绿春县",
        "parentId": "532500",
        "shortName": "绿春",
        "letter": "L",
        "cityCode": "0873",
        "pinyin": "Lvchun"
    },
    {
        "id": "532532",
        "name": "河口瑶族自治县",
        "parentId": "532500",
        "shortName": "河口",
        "letter": "H",
        "cityCode": "0873",
        "pinyin": "Hekou"
    },
    {
        "id": "532600",
        "name": "文山壮族苗族自治州",
        "parentId": "530000",
        "shortName": "文山",
        "letter": "W",
        "cityCode": "0876",
        "pinyin": "Wenshan"
    },
    {
        "id": "532601",
        "name": "文山市",
        "parentId": "532600",
        "shortName": "文山",
        "letter": "W",
        "cityCode": "0876",
        "pinyin": "Wenshan"
    },
    {
        "id": "532622",
        "name": "砚山县",
        "parentId": "532600",
        "shortName": "砚山",
        "letter": "Y",
        "cityCode": "0876",
        "pinyin": "Yanshan"
    },
    {
        "id": "532623",
        "name": "西畴县",
        "parentId": "532600",
        "shortName": "西畴",
        "letter": "X",
        "cityCode": "0876",
        "pinyin": "Xichou"
    },
    {
        "id": "532624",
        "name": "麻栗坡县",
        "parentId": "532600",
        "shortName": "麻栗坡",
        "letter": "M",
        "cityCode": "0876",
        "pinyin": "Malipo"
    },
    {
        "id": "532625",
        "name": "马关县",
        "parentId": "532600",
        "shortName": "马关",
        "letter": "M",
        "cityCode": "0876",
        "pinyin": "Maguan"
    },
    {
        "id": "532626",
        "name": "丘北县",
        "parentId": "532600",
        "shortName": "丘北",
        "letter": "Q",
        "cityCode": "0876",
        "pinyin": "Qiubei"
    },
    {
        "id": "532627",
        "name": "广南县",
        "parentId": "532600",
        "shortName": "广南",
        "letter": "G",
        "cityCode": "0876",
        "pinyin": "Guangnan"
    },
    {
        "id": "532628",
        "name": "富宁县",
        "parentId": "532600",
        "shortName": "富宁",
        "letter": "F",
        "cityCode": "0876",
        "pinyin": "Funing"
    },
    {
        "id": "532800",
        "name": "西双版纳傣族自治州",
        "parentId": "530000",
        "shortName": "西双版纳",
        "letter": "X",
        "cityCode": "0691",
        "pinyin": "Xishuangbanna"
    },
    {
        "id": "532801",
        "name": "景洪市",
        "parentId": "532800",
        "shortName": "景洪",
        "letter": "J",
        "cityCode": "0691",
        "pinyin": "Jinghong"
    },
    {
        "id": "532822",
        "name": "勐海县",
        "parentId": "532800",
        "shortName": "勐海",
        "letter": "M",
        "cityCode": "0691",
        "pinyin": "Menghai"
    },
    {
        "id": "532823",
        "name": "勐腊县",
        "parentId": "532800",
        "shortName": "勐腊",
        "letter": "M",
        "cityCode": "0691",
        "pinyin": "Mengla"
    },
    {
        "id": "532900",
        "name": "大理白族自治州",
        "parentId": "530000",
        "shortName": "大理",
        "letter": "D",
        "cityCode": "0872",
        "pinyin": "Dali"
    },
    {
        "id": "532901",
        "name": "大理市",
        "parentId": "532900",
        "shortName": "大理",
        "letter": "D",
        "cityCode": "0872",
        "pinyin": "Dali"
    },
    {
        "id": "532922",
        "name": "漾濞彝族自治县",
        "parentId": "532900",
        "shortName": "漾濞",
        "letter": "Y",
        "cityCode": "0872",
        "pinyin": "Yangbi"
    },
    {
        "id": "532923",
        "name": "祥云县",
        "parentId": "532900",
        "shortName": "祥云",
        "letter": "X",
        "cityCode": "0872",
        "pinyin": "Xiangyun"
    },
    {
        "id": "532924",
        "name": "宾川县",
        "parentId": "532900",
        "shortName": "宾川",
        "letter": "B",
        "cityCode": "0872",
        "pinyin": "Binchuan"
    },
    {
        "id": "532925",
        "name": "弥渡县",
        "parentId": "532900",
        "shortName": "弥渡",
        "letter": "M",
        "cityCode": "0872",
        "pinyin": "Midu"
    },
    {
        "id": "532926",
        "name": "南涧彝族自治县",
        "parentId": "532900",
        "shortName": "南涧",
        "letter": "N",
        "cityCode": "0872",
        "pinyin": "Nanjian"
    },
    {
        "id": "532927",
        "name": "巍山彝族回族自治县",
        "parentId": "532900",
        "shortName": "巍山",
        "letter": "W",
        "cityCode": "0872",
        "pinyin": "Weishan"
    },
    {
        "id": "532928",
        "name": "永平县",
        "parentId": "532900",
        "shortName": "永平",
        "letter": "Y",
        "cityCode": "0872",
        "pinyin": "Yongping"
    },
    {
        "id": "532929",
        "name": "云龙县",
        "parentId": "532900",
        "shortName": "云龙",
        "letter": "Y",
        "cityCode": "0872",
        "pinyin": "Yunlong"
    },
    {
        "id": "532930",
        "name": "洱源县",
        "parentId": "532900",
        "shortName": "洱源",
        "letter": "E",
        "cityCode": "0872",
        "pinyin": "Eryuan"
    },
    {
        "id": "532931",
        "name": "剑川县",
        "parentId": "532900",
        "shortName": "剑川",
        "letter": "J",
        "cityCode": "0872",
        "pinyin": "Jianchuan"
    },
    {
        "id": "532932",
        "name": "鹤庆县",
        "parentId": "532900",
        "shortName": "鹤庆",
        "letter": "H",
        "cityCode": "0872",
        "pinyin": "Heqing"
    },
    {
        "id": "533100",
        "name": "德宏傣族景颇族自治州",
        "parentId": "530000",
        "shortName": "德宏",
        "letter": "D",
        "cityCode": "0692",
        "pinyin": "Dehong"
    },
    {
        "id": "533102",
        "name": "瑞丽市",
        "parentId": "533100",
        "shortName": "瑞丽",
        "letter": "R",
        "cityCode": "0692",
        "pinyin": "Ruili"
    },
    {
        "id": "533103",
        "name": "芒市",
        "parentId": "533100",
        "shortName": "芒市",
        "letter": "M",
        "cityCode": "0692",
        "pinyin": "Mangshi"
    },
    {
        "id": "533122",
        "name": "梁河县",
        "parentId": "533100",
        "shortName": "梁河",
        "letter": "L",
        "cityCode": "0692",
        "pinyin": "Lianghe"
    },
    {
        "id": "533123",
        "name": "盈江县",
        "parentId": "533100",
        "shortName": "盈江",
        "letter": "Y",
        "cityCode": "0692",
        "pinyin": "Yingjiang"
    },
    {
        "id": "533124",
        "name": "陇川县",
        "parentId": "533100",
        "shortName": "陇川",
        "letter": "L",
        "cityCode": "0692",
        "pinyin": "Longchuan"
    },
    {
        "id": "533300",
        "name": "怒江傈僳族自治州",
        "parentId": "530000",
        "shortName": "怒江",
        "letter": "N",
        "cityCode": "0886",
        "pinyin": "Nujiang"
    },
    {
        "id": "533321",
        "name": "泸水县",
        "parentId": "533300",
        "shortName": "泸水",
        "letter": "L",
        "cityCode": "0886",
        "pinyin": "Lushui"
    },
    {
        "id": "533323",
        "name": "福贡县",
        "parentId": "533300",
        "shortName": "福贡",
        "letter": "F",
        "cityCode": "0886",
        "pinyin": "Fugong"
    },
    {
        "id": "533324",
        "name": "贡山独龙族怒族自治县",
        "parentId": "533300",
        "shortName": "贡山",
        "letter": "G",
        "cityCode": "0886",
        "pinyin": "Gongshan"
    },
    {
        "id": "533325",
        "name": "兰坪白族普米族自治县",
        "parentId": "533300",
        "shortName": "兰坪",
        "letter": "L",
        "cityCode": "0886",
        "pinyin": "Lanping"
    },
    {
        "id": "533400",
        "name": "迪庆藏族自治州",
        "parentId": "530000",
        "shortName": "迪庆",
        "letter": "D",
        "cityCode": "0887",
        "pinyin": "Deqen"
    },
    {
        "id": "533421",
        "name": "香格里拉市",
        "parentId": "533400",
        "shortName": "香格里拉",
        "letter": "X",
        "cityCode": "0887",
        "pinyin": "Xianggelila"
    },
    {
        "id": "533422",
        "name": "德钦县",
        "parentId": "533400",
        "shortName": "德钦",
        "letter": "D",
        "cityCode": "0887",
        "pinyin": "Deqin"
    },
    {
        "id": "533423",
        "name": "维西傈僳族自治县",
        "parentId": "533400",
        "shortName": "维西",
        "letter": "W",
        "cityCode": "0887",
        "pinyin": "Weixi"
    },
    {
        "id": "540000",
        "name": "西藏自治区",
        "parentId": "100000",
        "shortName": "西藏",
        "letter": "T",
        "cityCode": "",
        "pinyin": "Tibet"
    },
    {
        "id": "540100",
        "name": "拉萨市",
        "parentId": "540000",
        "shortName": "拉萨",
        "letter": "L",
        "cityCode": "0891",
        "pinyin": "Lhasa"
    },
    {
        "id": "540102",
        "name": "城关区",
        "parentId": "540100",
        "shortName": "城关",
        "letter": "C",
        "cityCode": "0891",
        "pinyin": "Chengguan"
    },
    {
        "id": "540121",
        "name": "林周县",
        "parentId": "540100",
        "shortName": "林周",
        "letter": "L",
        "cityCode": "0891",
        "pinyin": "Linzhou"
    },
    {
        "id": "540122",
        "name": "当雄县",
        "parentId": "540100",
        "shortName": "当雄",
        "letter": "D",
        "cityCode": "0891",
        "pinyin": "Dangxiong"
    },
    {
        "id": "540123",
        "name": "尼木县",
        "parentId": "540100",
        "shortName": "尼木",
        "letter": "N",
        "cityCode": "0891",
        "pinyin": "Nimu"
    },
    {
        "id": "540124",
        "name": "曲水县",
        "parentId": "540100",
        "shortName": "曲水",
        "letter": "Q",
        "cityCode": "0891",
        "pinyin": "Qushui"
    },
    {
        "id": "540125",
        "name": "堆龙德庆县",
        "parentId": "540100",
        "shortName": "堆龙德庆",
        "letter": "D",
        "cityCode": "0891",
        "pinyin": "Duilongdeqing"
    },
    {
        "id": "540126",
        "name": "达孜县",
        "parentId": "540100",
        "shortName": "达孜",
        "letter": "D",
        "cityCode": "0891",
        "pinyin": "Dazi"
    },
    {
        "id": "540127",
        "name": "墨竹工卡县",
        "parentId": "540100",
        "shortName": "墨竹工卡",
        "letter": "M",
        "cityCode": "0891",
        "pinyin": "Mozhugongka"
    },
    {
        "id": "540200",
        "name": "日喀则市",
        "parentId": "540000",
        "shortName": "日喀则",
        "letter": "R",
        "cityCode": "0892",
        "pinyin": "Rikaze"
    },
    {
        "id": "540202",
        "name": "桑珠孜区",
        "parentId": "540200",
        "shortName": "桑珠孜",
        "letter": "S",
        "cityCode": "0892",
        "pinyin": "Sangzhuzi"
    },
    {
        "id": "540221",
        "name": "南木林县",
        "parentId": "540200",
        "shortName": "南木林",
        "letter": "N",
        "cityCode": "0892",
        "pinyin": "Nanmulin"
    },
    {
        "id": "540222",
        "name": "江孜县",
        "parentId": "540200",
        "shortName": "江孜",
        "letter": "J",
        "cityCode": "0892",
        "pinyin": "Jiangzi"
    },
    {
        "id": "540223",
        "name": "定日县",
        "parentId": "540200",
        "shortName": "定日",
        "letter": "D",
        "cityCode": "0892",
        "pinyin": "Dingri"
    },
    {
        "id": "540224",
        "name": "萨迦县",
        "parentId": "540200",
        "shortName": "萨迦",
        "letter": "S",
        "cityCode": "0892",
        "pinyin": "Sajia"
    },
    {
        "id": "540225",
        "name": "拉孜县",
        "parentId": "540200",
        "shortName": "拉孜",
        "letter": "L",
        "cityCode": "0892",
        "pinyin": "Lazi"
    },
    {
        "id": "540226",
        "name": "昂仁县",
        "parentId": "540200",
        "shortName": "昂仁",
        "letter": "A",
        "cityCode": "0892",
        "pinyin": "Angren"
    },
    {
        "id": "540227",
        "name": "谢通门县",
        "parentId": "540200",
        "shortName": "谢通门",
        "letter": "X",
        "cityCode": "0892",
        "pinyin": "Xietongmen"
    },
    {
        "id": "540228",
        "name": "白朗县",
        "parentId": "540200",
        "shortName": "白朗",
        "letter": "B",
        "cityCode": "0892",
        "pinyin": "Bailang"
    },
    {
        "id": "540229",
        "name": "仁布县",
        "parentId": "540200",
        "shortName": "仁布",
        "letter": "R",
        "cityCode": "0892",
        "pinyin": "Renbu"
    },
    {
        "id": "540230",
        "name": "康马县",
        "parentId": "540200",
        "shortName": "康马",
        "letter": "K",
        "cityCode": "0892",
        "pinyin": "Kangma"
    },
    {
        "id": "540231",
        "name": "定结县",
        "parentId": "540200",
        "shortName": "定结",
        "letter": "D",
        "cityCode": "0892",
        "pinyin": "Dingjie"
    },
    {
        "id": "540232",
        "name": "仲巴县",
        "parentId": "540200",
        "shortName": "仲巴",
        "letter": "Z",
        "cityCode": "0892",
        "pinyin": "Zhongba"
    },
    {
        "id": "540233",
        "name": "亚东县",
        "parentId": "540200",
        "shortName": "亚东",
        "letter": "Y",
        "cityCode": "0892",
        "pinyin": "Yadong"
    },
    {
        "id": "540234",
        "name": "吉隆县",
        "parentId": "540200",
        "shortName": "吉隆",
        "letter": "J",
        "cityCode": "0892",
        "pinyin": "Jilong"
    },
    {
        "id": "540235",
        "name": "聂拉木县",
        "parentId": "540200",
        "shortName": "聂拉木",
        "letter": "N",
        "cityCode": "0892",
        "pinyin": "Nielamu"
    },
    {
        "id": "540236",
        "name": "萨嘎县",
        "parentId": "540200",
        "shortName": "萨嘎",
        "letter": "S",
        "cityCode": "0892",
        "pinyin": "Saga"
    },
    {
        "id": "540237",
        "name": "岗巴县",
        "parentId": "540200",
        "shortName": "岗巴",
        "letter": "G",
        "cityCode": "0892",
        "pinyin": "Gangba"
    },
    {
        "id": "540300",
        "name": "昌都市",
        "parentId": "540000",
        "shortName": "昌都",
        "letter": "Q",
        "cityCode": "0895",
        "pinyin": "Qamdo"
    },
    {
        "id": "540302",
        "name": "卡若区",
        "parentId": "540300",
        "shortName": "昌都",
        "letter": "K",
        "cityCode": "0895",
        "pinyin": "Karuo"
    },
    {
        "id": "540321",
        "name": "江达县",
        "parentId": "540300",
        "shortName": "江达",
        "letter": "J",
        "cityCode": "0895",
        "pinyin": "Jiangda"
    },
    {
        "id": "540322",
        "name": "贡觉县",
        "parentId": "540300",
        "shortName": "贡觉",
        "letter": "G",
        "cityCode": "0895",
        "pinyin": "Gongjue"
    },
    {
        "id": "540323",
        "name": "类乌齐县",
        "parentId": "540300",
        "shortName": "类乌齐",
        "letter": "L",
        "cityCode": "0895",
        "pinyin": "Leiwuqi"
    },
    {
        "id": "540324",
        "name": "丁青县",
        "parentId": "540300",
        "shortName": "丁青",
        "letter": "D",
        "cityCode": "0895",
        "pinyin": "Dingqing"
    },
    {
        "id": "540325",
        "name": "察雅县",
        "parentId": "540300",
        "shortName": "察雅",
        "letter": "C",
        "cityCode": "0895",
        "pinyin": "Chaya"
    },
    {
        "id": "540326",
        "name": "八宿县",
        "parentId": "540300",
        "shortName": "八宿",
        "letter": "B",
        "cityCode": "0895",
        "pinyin": "Basu"
    },
    {
        "id": "540327",
        "name": "左贡县",
        "parentId": "540300",
        "shortName": "左贡",
        "letter": "Z",
        "cityCode": "0895",
        "pinyin": "Zuogong"
    },
    {
        "id": "540328",
        "name": "芒康县",
        "parentId": "540300",
        "shortName": "芒康",
        "letter": "M",
        "cityCode": "0895",
        "pinyin": "Mangkang"
    },
    {
        "id": "540329",
        "name": "洛隆县",
        "parentId": "540300",
        "shortName": "洛隆",
        "letter": "L",
        "cityCode": "0895",
        "pinyin": "Luolong"
    },
    {
        "id": "540330",
        "name": "边坝县",
        "parentId": "540300",
        "shortName": "边坝",
        "letter": "B",
        "cityCode": "0895",
        "pinyin": "Bianba"
    },
    {
        "id": "542200",
        "name": "山南地区",
        "parentId": "540000",
        "shortName": "山南",
        "letter": "S",
        "cityCode": "0893",
        "pinyin": "Shannan"
    },
    {
        "id": "542221",
        "name": "乃东县",
        "parentId": "542200",
        "shortName": "乃东",
        "letter": "N",
        "cityCode": "0893",
        "pinyin": "Naidong"
    },
    {
        "id": "542222",
        "name": "扎囊县",
        "parentId": "542200",
        "shortName": "扎囊",
        "letter": "Z",
        "cityCode": "0893",
        "pinyin": "Zhanang"
    },
    {
        "id": "542223",
        "name": "贡嘎县",
        "parentId": "542200",
        "shortName": "贡嘎",
        "letter": "G",
        "cityCode": "0893",
        "pinyin": "Gongga"
    },
    {
        "id": "542224",
        "name": "桑日县",
        "parentId": "542200",
        "shortName": "桑日",
        "letter": "S",
        "cityCode": "0893",
        "pinyin": "Sangri"
    },
    {
        "id": "542225",
        "name": "琼结县",
        "parentId": "542200",
        "shortName": "琼结",
        "letter": "Q",
        "cityCode": "0893",
        "pinyin": "Qiongjie"
    },
    {
        "id": "542226",
        "name": "曲松县",
        "parentId": "542200",
        "shortName": "曲松",
        "letter": "Q",
        "cityCode": "0893",
        "pinyin": "Qusong"
    },
    {
        "id": "542227",
        "name": "措美县",
        "parentId": "542200",
        "shortName": "措美",
        "letter": "C",
        "cityCode": "0893",
        "pinyin": "Cuomei"
    },
    {
        "id": "542228",
        "name": "洛扎县",
        "parentId": "542200",
        "shortName": "洛扎",
        "letter": "L",
        "cityCode": "0893",
        "pinyin": "Luozha"
    },
    {
        "id": "542229",
        "name": "加查县",
        "parentId": "542200",
        "shortName": "加查",
        "letter": "J",
        "cityCode": "0893",
        "pinyin": "Jiacha"
    },
    {
        "id": "542231",
        "name": "隆子县",
        "parentId": "542200",
        "shortName": "隆子",
        "letter": "L",
        "cityCode": "0893",
        "pinyin": "Longzi"
    },
    {
        "id": "542232",
        "name": "错那县",
        "parentId": "542200",
        "shortName": "错那",
        "letter": "C",
        "cityCode": "0893",
        "pinyin": "Cuona"
    },
    {
        "id": "542233",
        "name": "浪卡子县",
        "parentId": "542200",
        "shortName": "浪卡子",
        "letter": "L",
        "cityCode": "0893",
        "pinyin": "Langkazi"
    },
    {
        "id": "542400",
        "name": "那曲地区",
        "parentId": "540000",
        "shortName": "那曲",
        "letter": "N",
        "cityCode": "0896",
        "pinyin": "Nagqu"
    },
    {
        "id": "542421",
        "name": "那曲县",
        "parentId": "542400",
        "shortName": "那曲",
        "letter": "N",
        "cityCode": "0896",
        "pinyin": "Naqu"
    },
    {
        "id": "542422",
        "name": "嘉黎县",
        "parentId": "542400",
        "shortName": "嘉黎",
        "letter": "J",
        "cityCode": "0896",
        "pinyin": "Jiali"
    },
    {
        "id": "542423",
        "name": "比如县",
        "parentId": "542400",
        "shortName": "比如",
        "letter": "B",
        "cityCode": "0896",
        "pinyin": "Biru"
    },
    {
        "id": "542424",
        "name": "聂荣县",
        "parentId": "542400",
        "shortName": "聂荣",
        "letter": "N",
        "cityCode": "0896",
        "pinyin": "Nierong"
    },
    {
        "id": "542425",
        "name": "安多县",
        "parentId": "542400",
        "shortName": "安多",
        "letter": "A",
        "cityCode": "0896",
        "pinyin": "Anduo"
    },
    {
        "id": "542426",
        "name": "申扎县",
        "parentId": "542400",
        "shortName": "申扎",
        "letter": "S",
        "cityCode": "0896",
        "pinyin": "Shenzha"
    },
    {
        "id": "542427",
        "name": "索县",
        "parentId": "542400",
        "shortName": "索县",
        "letter": "S",
        "cityCode": "0896",
        "pinyin": "Suoxian"
    },
    {
        "id": "542428",
        "name": "班戈县",
        "parentId": "542400",
        "shortName": "班戈",
        "letter": "B",
        "cityCode": "0896",
        "pinyin": "Bange"
    },
    {
        "id": "542429",
        "name": "巴青县",
        "parentId": "542400",
        "shortName": "巴青",
        "letter": "B",
        "cityCode": "0896",
        "pinyin": "Baqing"
    },
    {
        "id": "542430",
        "name": "尼玛县",
        "parentId": "542400",
        "shortName": "尼玛",
        "letter": "N",
        "cityCode": "0896",
        "pinyin": "Nima"
    },
    {
        "id": "542431",
        "name": "双湖县",
        "parentId": "542400",
        "shortName": "双湖",
        "letter": "S",
        "cityCode": "0896",
        "pinyin": "Shuanghu"
    },
    {
        "id": "542500",
        "name": "阿里地区",
        "parentId": "540000",
        "shortName": "阿里",
        "letter": "N",
        "cityCode": "0897",
        "pinyin": "Ngari"
    },
    {
        "id": "542521",
        "name": "普兰县",
        "parentId": "542500",
        "shortName": "普兰",
        "letter": "P",
        "cityCode": "0897",
        "pinyin": "Pulan"
    },
    {
        "id": "542522",
        "name": "札达县",
        "parentId": "542500",
        "shortName": "札达",
        "letter": "Z",
        "cityCode": "0897",
        "pinyin": "Zhada"
    },
    {
        "id": "542523",
        "name": "噶尔县",
        "parentId": "542500",
        "shortName": "噶尔",
        "letter": "G",
        "cityCode": "0897",
        "pinyin": "Gaer"
    },
    {
        "id": "542524",
        "name": "日土县",
        "parentId": "542500",
        "shortName": "日土",
        "letter": "R",
        "cityCode": "0897",
        "pinyin": "Ritu"
    },
    {
        "id": "542525",
        "name": "革吉县",
        "parentId": "542500",
        "shortName": "革吉",
        "letter": "G",
        "cityCode": "0897",
        "pinyin": "Geji"
    },
    {
        "id": "542526",
        "name": "改则县",
        "parentId": "542500",
        "shortName": "改则",
        "letter": "G",
        "cityCode": "0897",
        "pinyin": "Gaize"
    },
    {
        "id": "542527",
        "name": "措勤县",
        "parentId": "542500",
        "shortName": "措勤",
        "letter": "C",
        "cityCode": "0897",
        "pinyin": "Cuoqin"
    },
    {
        "id": "542600",
        "name": "林芝地区",
        "parentId": "540000",
        "shortName": "林芝",
        "letter": "N",
        "cityCode": "0894",
        "pinyin": "Nyingchi"
    },
    {
        "id": "542621",
        "name": "林芝县",
        "parentId": "542600",
        "shortName": "林芝",
        "letter": "L",
        "cityCode": "0894",
        "pinyin": "Linzhi"
    },
    {
        "id": "542622",
        "name": "工布江达县",
        "parentId": "542600",
        "shortName": "工布江达",
        "letter": "G",
        "cityCode": "0894",
        "pinyin": "Gongbujiangda"
    },
    {
        "id": "542623",
        "name": "米林县",
        "parentId": "542600",
        "shortName": "米林",
        "letter": "M",
        "cityCode": "0894",
        "pinyin": "Milin"
    },
    {
        "id": "542624",
        "name": "墨脱县",
        "parentId": "542600",
        "shortName": "墨脱",
        "letter": "M",
        "cityCode": "0894",
        "pinyin": "Motuo"
    },
    {
        "id": "542625",
        "name": "波密县",
        "parentId": "542600",
        "shortName": "波密",
        "letter": "B",
        "cityCode": "0894",
        "pinyin": "Bomi"
    },
    {
        "id": "542626",
        "name": "察隅县",
        "parentId": "542600",
        "shortName": "察隅",
        "letter": "C",
        "cityCode": "0894",
        "pinyin": "Chayu"
    },
    {
        "id": "542627",
        "name": "朗县",
        "parentId": "542600",
        "shortName": "朗县",
        "letter": "L",
        "cityCode": "0894",
        "pinyin": "Langxian"
    },
    {
        "id": "610000",
        "name": "陕西省",
        "parentId": "100000",
        "shortName": "陕西",
        "letter": "S",
        "cityCode": "",
        "pinyin": "Shaanxi"
    },
    {
        "id": "610100",
        "name": "西安市",
        "parentId": "610000",
        "shortName": "西安",
        "letter": "X",
        "cityCode": "029",
        "pinyin": "Xi'an"
    },
    {
        "id": "610102",
        "name": "新城区",
        "parentId": "610100",
        "shortName": "新城",
        "letter": "X",
        "cityCode": "029",
        "pinyin": "Xincheng"
    },
    {
        "id": "610103",
        "name": "碑林区",
        "parentId": "610100",
        "shortName": "碑林",
        "letter": "B",
        "cityCode": "029",
        "pinyin": "Beilin"
    },
    {
        "id": "610104",
        "name": "莲湖区",
        "parentId": "610100",
        "shortName": "莲湖",
        "letter": "L",
        "cityCode": "029",
        "pinyin": "Lianhu"
    },
    {
        "id": "610111",
        "name": "灞桥区",
        "parentId": "610100",
        "shortName": "灞桥",
        "letter": "B",
        "cityCode": "029",
        "pinyin": "Baqiao"
    },
    {
        "id": "610112",
        "name": "未央区",
        "parentId": "610100",
        "shortName": "未央",
        "letter": "W",
        "cityCode": "029",
        "pinyin": "Weiyang"
    },
    {
        "id": "610113",
        "name": "雁塔区",
        "parentId": "610100",
        "shortName": "雁塔",
        "letter": "Y",
        "cityCode": "029",
        "pinyin": "Yanta"
    },
    {
        "id": "610114",
        "name": "阎良区",
        "parentId": "610100",
        "shortName": "阎良",
        "letter": "Y",
        "cityCode": "029",
        "pinyin": "Yanliang"
    },
    {
        "id": "610115",
        "name": "临潼区",
        "parentId": "610100",
        "shortName": "临潼",
        "letter": "L",
        "cityCode": "029",
        "pinyin": "Lintong"
    },
    {
        "id": "610116",
        "name": "长安区",
        "parentId": "610100",
        "shortName": "长安",
        "letter": "C",
        "cityCode": "029",
        "pinyin": "Chang'an"
    },
    {
        "id": "610122",
        "name": "蓝田县",
        "parentId": "610100",
        "shortName": "蓝田",
        "letter": "L",
        "cityCode": "029",
        "pinyin": "Lantian"
    },
    {
        "id": "610124",
        "name": "周至县",
        "parentId": "610100",
        "shortName": "周至",
        "letter": "Z",
        "cityCode": "029",
        "pinyin": "Zhouzhi"
    },
    {
        "id": "610125",
        "name": "户县",
        "parentId": "610100",
        "shortName": "户县",
        "letter": "H",
        "cityCode": "029",
        "pinyin": "Huxian"
    },
    {
        "id": "610126",
        "name": "高陵区",
        "parentId": "610100",
        "shortName": "高陵",
        "letter": "G",
        "cityCode": "029",
        "pinyin": "Gaoling"
    },
    {
        "id": "610200",
        "name": "铜川市",
        "parentId": "610000",
        "shortName": "铜川",
        "letter": "T",
        "cityCode": "0919",
        "pinyin": "Tongchuan"
    },
    {
        "id": "610202",
        "name": "王益区",
        "parentId": "610200",
        "shortName": "王益",
        "letter": "W",
        "cityCode": "0919",
        "pinyin": "Wangyi"
    },
    {
        "id": "610203",
        "name": "印台区",
        "parentId": "610200",
        "shortName": "印台",
        "letter": "Y",
        "cityCode": "0919",
        "pinyin": "Yintai"
    },
    {
        "id": "610204",
        "name": "耀州区",
        "parentId": "610200",
        "shortName": "耀州",
        "letter": "Y",
        "cityCode": "0919",
        "pinyin": "Yaozhou"
    },
    {
        "id": "610222",
        "name": "宜君县",
        "parentId": "610200",
        "shortName": "宜君",
        "letter": "Y",
        "cityCode": "0919",
        "pinyin": "Yijun"
    },
    {
        "id": "610300",
        "name": "宝鸡市",
        "parentId": "610000",
        "shortName": "宝鸡",
        "letter": "B",
        "cityCode": "0917",
        "pinyin": "Baoji"
    },
    {
        "id": "610302",
        "name": "渭滨区",
        "parentId": "610300",
        "shortName": "渭滨",
        "letter": "W",
        "cityCode": "0917",
        "pinyin": "Weibin"
    },
    {
        "id": "610303",
        "name": "金台区",
        "parentId": "610300",
        "shortName": "金台",
        "letter": "J",
        "cityCode": "0917",
        "pinyin": "Jintai"
    },
    {
        "id": "610304",
        "name": "陈仓区",
        "parentId": "610300",
        "shortName": "陈仓",
        "letter": "C",
        "cityCode": "0917",
        "pinyin": "Chencang"
    },
    {
        "id": "610322",
        "name": "凤翔县",
        "parentId": "610300",
        "shortName": "凤翔",
        "letter": "F",
        "cityCode": "0917",
        "pinyin": "Fengxiang"
    },
    {
        "id": "610323",
        "name": "岐山县",
        "parentId": "610300",
        "shortName": "岐山",
        "letter": "Q",
        "cityCode": "0917",
        "pinyin": "Qishan"
    },
    {
        "id": "610324",
        "name": "扶风县",
        "parentId": "610300",
        "shortName": "扶风",
        "letter": "F",
        "cityCode": "0917",
        "pinyin": "Fufeng"
    },
    {
        "id": "610326",
        "name": "眉县",
        "parentId": "610300",
        "shortName": "眉县",
        "letter": "M",
        "cityCode": "0917",
        "pinyin": "Meixian"
    },
    {
        "id": "610327",
        "name": "陇县",
        "parentId": "610300",
        "shortName": "陇县",
        "letter": "L",
        "cityCode": "0917",
        "pinyin": "Longxian"
    },
    {
        "id": "610328",
        "name": "千阳县",
        "parentId": "610300",
        "shortName": "千阳",
        "letter": "Q",
        "cityCode": "0917",
        "pinyin": "Qianyang"
    },
    {
        "id": "610329",
        "name": "麟游县",
        "parentId": "610300",
        "shortName": "麟游",
        "letter": "L",
        "cityCode": "0917",
        "pinyin": "Linyou"
    },
    {
        "id": "610330",
        "name": "凤县",
        "parentId": "610300",
        "shortName": "凤县",
        "letter": "F",
        "cityCode": "0917",
        "pinyin": "Fengxian"
    },
    {
        "id": "610331",
        "name": "太白县",
        "parentId": "610300",
        "shortName": "太白",
        "letter": "T",
        "cityCode": "0917",
        "pinyin": "Taibai"
    },
    {
        "id": "610400",
        "name": "咸阳市",
        "parentId": "610000",
        "shortName": "咸阳",
        "letter": "X",
        "cityCode": "029",
        "pinyin": "Xianyang"
    },
    {
        "id": "610402",
        "name": "秦都区",
        "parentId": "610400",
        "shortName": "秦都",
        "letter": "Q",
        "cityCode": "029",
        "pinyin": "Qindu"
    },
    {
        "id": "610403",
        "name": "杨陵区",
        "parentId": "610400",
        "shortName": "杨陵",
        "letter": "Y",
        "cityCode": "029",
        "pinyin": "Yangling"
    },
    {
        "id": "610404",
        "name": "渭城区",
        "parentId": "610400",
        "shortName": "渭城",
        "letter": "W",
        "cityCode": "029",
        "pinyin": "Weicheng"
    },
    {
        "id": "610422",
        "name": "三原县",
        "parentId": "610400",
        "shortName": "三原",
        "letter": "S",
        "cityCode": "029",
        "pinyin": "Sanyuan"
    },
    {
        "id": "610423",
        "name": "泾阳县",
        "parentId": "610400",
        "shortName": "泾阳",
        "letter": "J",
        "cityCode": "029",
        "pinyin": "Jingyang"
    },
    {
        "id": "610424",
        "name": "乾县",
        "parentId": "610400",
        "shortName": "乾县",
        "letter": "Q",
        "cityCode": "029",
        "pinyin": "Qianxian"
    },
    {
        "id": "610425",
        "name": "礼泉县",
        "parentId": "610400",
        "shortName": "礼泉",
        "letter": "L",
        "cityCode": "029",
        "pinyin": "Liquan"
    },
    {
        "id": "610426",
        "name": "永寿县",
        "parentId": "610400",
        "shortName": "永寿",
        "letter": "Y",
        "cityCode": "029",
        "pinyin": "Yongshou"
    },
    {
        "id": "610427",
        "name": "彬县",
        "parentId": "610400",
        "shortName": "彬县",
        "letter": "B",
        "cityCode": "029",
        "pinyin": "Binxian"
    },
    {
        "id": "610428",
        "name": "长武县",
        "parentId": "610400",
        "shortName": "长武",
        "letter": "C",
        "cityCode": "029",
        "pinyin": "Changwu"
    },
    {
        "id": "610429",
        "name": "旬邑县",
        "parentId": "610400",
        "shortName": "旬邑",
        "letter": "X",
        "cityCode": "029",
        "pinyin": "Xunyi"
    },
    {
        "id": "610430",
        "name": "淳化县",
        "parentId": "610400",
        "shortName": "淳化",
        "letter": "C",
        "cityCode": "029",
        "pinyin": "Chunhua"
    },
    {
        "id": "610431",
        "name": "武功县",
        "parentId": "610400",
        "shortName": "武功",
        "letter": "W",
        "cityCode": "029",
        "pinyin": "Wugong"
    },
    {
        "id": "610481",
        "name": "兴平市",
        "parentId": "610400",
        "shortName": "兴平",
        "letter": "X",
        "cityCode": "029",
        "pinyin": "Xingping"
    },
    {
        "id": "610500",
        "name": "渭南市",
        "parentId": "610000",
        "shortName": "渭南",
        "letter": "W",
        "cityCode": "0913",
        "pinyin": "Weinan"
    },
    {
        "id": "610502",
        "name": "临渭区",
        "parentId": "610500",
        "shortName": "临渭",
        "letter": "L",
        "cityCode": "0913",
        "pinyin": "Linwei"
    },
    {
        "id": "610521",
        "name": "华县",
        "parentId": "610500",
        "shortName": "华县",
        "letter": "H",
        "cityCode": "0913",
        "pinyin": "Huaxian"
    },
    {
        "id": "610522",
        "name": "潼关县",
        "parentId": "610500",
        "shortName": "潼关",
        "letter": "T",
        "cityCode": "0913",
        "pinyin": "Tongguan"
    },
    {
        "id": "610523",
        "name": "大荔县",
        "parentId": "610500",
        "shortName": "大荔",
        "letter": "D",
        "cityCode": "0913",
        "pinyin": "Dali"
    },
    {
        "id": "610524",
        "name": "合阳县",
        "parentId": "610500",
        "shortName": "合阳",
        "letter": "H",
        "cityCode": "0913",
        "pinyin": "Heyang"
    },
    {
        "id": "610525",
        "name": "澄城县",
        "parentId": "610500",
        "shortName": "澄城",
        "letter": "C",
        "cityCode": "0913",
        "pinyin": "Chengcheng"
    },
    {
        "id": "610526",
        "name": "蒲城县",
        "parentId": "610500",
        "shortName": "蒲城",
        "letter": "P",
        "cityCode": "0913",
        "pinyin": "Pucheng"
    },
    {
        "id": "610527",
        "name": "白水县",
        "parentId": "610500",
        "shortName": "白水",
        "letter": "B",
        "cityCode": "0913",
        "pinyin": "Baishui"
    },
    {
        "id": "610528",
        "name": "富平县",
        "parentId": "610500",
        "shortName": "富平",
        "letter": "F",
        "cityCode": "0913",
        "pinyin": "Fuping"
    },
    {
        "id": "610581",
        "name": "韩城市",
        "parentId": "610500",
        "shortName": "韩城",
        "letter": "H",
        "cityCode": "0913",
        "pinyin": "Hancheng"
    },
    {
        "id": "610582",
        "name": "华阴市",
        "parentId": "610500",
        "shortName": "华阴",
        "letter": "H",
        "cityCode": "0913",
        "pinyin": "Huayin"
    },
    {
        "id": "610600",
        "name": "延安市",
        "parentId": "610000",
        "shortName": "延安",
        "letter": "Y",
        "cityCode": "0911",
        "pinyin": "Yan'an"
    },
    {
        "id": "610602",
        "name": "宝塔区",
        "parentId": "610600",
        "shortName": "宝塔",
        "letter": "B",
        "cityCode": "0911",
        "pinyin": "Baota"
    },
    {
        "id": "610621",
        "name": "延长县",
        "parentId": "610600",
        "shortName": "延长",
        "letter": "Y",
        "cityCode": "0911",
        "pinyin": "Yanchang"
    },
    {
        "id": "610622",
        "name": "延川县",
        "parentId": "610600",
        "shortName": "延川",
        "letter": "Y",
        "cityCode": "0911",
        "pinyin": "Yanchuan"
    },
    {
        "id": "610623",
        "name": "子长县",
        "parentId": "610600",
        "shortName": "子长",
        "letter": "Z",
        "cityCode": "0911",
        "pinyin": "Zichang"
    },
    {
        "id": "610624",
        "name": "安塞县",
        "parentId": "610600",
        "shortName": "安塞",
        "letter": "A",
        "cityCode": "0911",
        "pinyin": "Ansai"
    },
    {
        "id": "610625",
        "name": "志丹县",
        "parentId": "610600",
        "shortName": "志丹",
        "letter": "Z",
        "cityCode": "0911",
        "pinyin": "Zhidan"
    },
    {
        "id": "610626",
        "name": "吴起县",
        "parentId": "610600",
        "shortName": "吴起",
        "letter": "W",
        "cityCode": "0911",
        "pinyin": "Wuqi"
    },
    {
        "id": "610627",
        "name": "甘泉县",
        "parentId": "610600",
        "shortName": "甘泉",
        "letter": "G",
        "cityCode": "0911",
        "pinyin": "Ganquan"
    },
    {
        "id": "610628",
        "name": "富县",
        "parentId": "610600",
        "shortName": "富县",
        "letter": "F",
        "cityCode": "0911",
        "pinyin": "Fuxian"
    },
    {
        "id": "610629",
        "name": "洛川县",
        "parentId": "610600",
        "shortName": "洛川",
        "letter": "L",
        "cityCode": "0911",
        "pinyin": "Luochuan"
    },
    {
        "id": "610630",
        "name": "宜川县",
        "parentId": "610600",
        "shortName": "宜川",
        "letter": "Y",
        "cityCode": "0911",
        "pinyin": "Yichuan"
    },
    {
        "id": "610631",
        "name": "黄龙县",
        "parentId": "610600",
        "shortName": "黄龙",
        "letter": "H",
        "cityCode": "0911",
        "pinyin": "Huanglong"
    },
    {
        "id": "610632",
        "name": "黄陵县",
        "parentId": "610600",
        "shortName": "黄陵",
        "letter": "H",
        "cityCode": "0911",
        "pinyin": "Huangling"
    },
    {
        "id": "610700",
        "name": "汉中市",
        "parentId": "610000",
        "shortName": "汉中",
        "letter": "H",
        "cityCode": "0916",
        "pinyin": "Hanzhong"
    },
    {
        "id": "610702",
        "name": "汉台区",
        "parentId": "610700",
        "shortName": "汉台",
        "letter": "H",
        "cityCode": "0916",
        "pinyin": "Hantai"
    },
    {
        "id": "610721",
        "name": "南郑县",
        "parentId": "610700",
        "shortName": "南郑",
        "letter": "N",
        "cityCode": "0916",
        "pinyin": "Nanzheng"
    },
    {
        "id": "610722",
        "name": "城固县",
        "parentId": "610700",
        "shortName": "城固",
        "letter": "C",
        "cityCode": "0916",
        "pinyin": "Chenggu"
    },
    {
        "id": "610723",
        "name": "洋县",
        "parentId": "610700",
        "shortName": "洋县",
        "letter": "Y",
        "cityCode": "0916",
        "pinyin": "Yangxian"
    },
    {
        "id": "610724",
        "name": "西乡县",
        "parentId": "610700",
        "shortName": "西乡",
        "letter": "X",
        "cityCode": "0916",
        "pinyin": "Xixiang"
    },
    {
        "id": "610725",
        "name": "勉县",
        "parentId": "610700",
        "shortName": "勉县",
        "letter": "M",
        "cityCode": "0916",
        "pinyin": "Mianxian"
    },
    {
        "id": "610726",
        "name": "宁强县",
        "parentId": "610700",
        "shortName": "宁强",
        "letter": "N",
        "cityCode": "0916",
        "pinyin": "Ningqiang"
    },
    {
        "id": "610727",
        "name": "略阳县",
        "parentId": "610700",
        "shortName": "略阳",
        "letter": "L",
        "cityCode": "0916",
        "pinyin": "Lueyang"
    },
    {
        "id": "610728",
        "name": "镇巴县",
        "parentId": "610700",
        "shortName": "镇巴",
        "letter": "Z",
        "cityCode": "0916",
        "pinyin": "Zhenba"
    },
    {
        "id": "610729",
        "name": "留坝县",
        "parentId": "610700",
        "shortName": "留坝",
        "letter": "L",
        "cityCode": "0916",
        "pinyin": "Liuba"
    },
    {
        "id": "610730",
        "name": "佛坪县",
        "parentId": "610700",
        "shortName": "佛坪",
        "letter": "F",
        "cityCode": "0916",
        "pinyin": "Foping"
    },
    {
        "id": "610800",
        "name": "榆林市",
        "parentId": "610000",
        "shortName": "榆林",
        "letter": "Y",
        "cityCode": "0912",
        "pinyin": "Yulin"
    },
    {
        "id": "610802",
        "name": "榆阳区",
        "parentId": "610800",
        "shortName": "榆阳",
        "letter": "Y",
        "cityCode": "0912",
        "pinyin": "Yuyang"
    },
    {
        "id": "610821",
        "name": "神木县",
        "parentId": "610800",
        "shortName": "神木",
        "letter": "S",
        "cityCode": "0912",
        "pinyin": "Shenmu"
    },
    {
        "id": "610822",
        "name": "府谷县",
        "parentId": "610800",
        "shortName": "府谷",
        "letter": "F",
        "cityCode": "0912",
        "pinyin": "Fugu"
    },
    {
        "id": "610823",
        "name": "横山县",
        "parentId": "610800",
        "shortName": "横山",
        "letter": "H",
        "cityCode": "0912",
        "pinyin": "Hengshan"
    },
    {
        "id": "610824",
        "name": "靖边县",
        "parentId": "610800",
        "shortName": "靖边",
        "letter": "J",
        "cityCode": "0912",
        "pinyin": "Jingbian"
    },
    {
        "id": "610825",
        "name": "定边县",
        "parentId": "610800",
        "shortName": "定边",
        "letter": "D",
        "cityCode": "0912",
        "pinyin": "Dingbian"
    },
    {
        "id": "610826",
        "name": "绥德县",
        "parentId": "610800",
        "shortName": "绥德",
        "letter": "S",
        "cityCode": "0912",
        "pinyin": "Suide"
    },
    {
        "id": "610827",
        "name": "米脂县",
        "parentId": "610800",
        "shortName": "米脂",
        "letter": "M",
        "cityCode": "0912",
        "pinyin": "Mizhi"
    },
    {
        "id": "610828",
        "name": "佳县",
        "parentId": "610800",
        "shortName": "佳县",
        "letter": "J",
        "cityCode": "0912",
        "pinyin": "Jiaxian"
    },
    {
        "id": "610829",
        "name": "吴堡县",
        "parentId": "610800",
        "shortName": "吴堡",
        "letter": "W",
        "cityCode": "0912",
        "pinyin": "Wubu"
    },
    {
        "id": "610830",
        "name": "清涧县",
        "parentId": "610800",
        "shortName": "清涧",
        "letter": "Q",
        "cityCode": "0912",
        "pinyin": "Qingjian"
    },
    {
        "id": "610831",
        "name": "子洲县",
        "parentId": "610800",
        "shortName": "子洲",
        "letter": "Z",
        "cityCode": "0912",
        "pinyin": "Zizhou"
    },
    {
        "id": "610900",
        "name": "安康市",
        "parentId": "610000",
        "shortName": "安康",
        "letter": "A",
        "cityCode": "0915",
        "pinyin": "Ankang"
    },
    {
        "id": "610902",
        "name": "汉滨区",
        "parentId": "610900",
        "shortName": "汉滨",
        "letter": "H",
        "cityCode": "0915",
        "pinyin": "Hanbin"
    },
    {
        "id": "610921",
        "name": "汉阴县",
        "parentId": "610900",
        "shortName": "汉阴",
        "letter": "H",
        "cityCode": "0915",
        "pinyin": "Hanyin"
    },
    {
        "id": "610922",
        "name": "石泉县",
        "parentId": "610900",
        "shortName": "石泉",
        "letter": "S",
        "cityCode": "0915",
        "pinyin": "Shiquan"
    },
    {
        "id": "610923",
        "name": "宁陕县",
        "parentId": "610900",
        "shortName": "宁陕",
        "letter": "N",
        "cityCode": "0915",
        "pinyin": "Ningshan"
    },
    {
        "id": "610924",
        "name": "紫阳县",
        "parentId": "610900",
        "shortName": "紫阳",
        "letter": "Z",
        "cityCode": "0915",
        "pinyin": "Ziyang"
    },
    {
        "id": "610925",
        "name": "岚皋县",
        "parentId": "610900",
        "shortName": "岚皋",
        "letter": "L",
        "cityCode": "0915",
        "pinyin": "Langao"
    },
    {
        "id": "610926",
        "name": "平利县",
        "parentId": "610900",
        "shortName": "平利",
        "letter": "P",
        "cityCode": "0915",
        "pinyin": "Pingli"
    },
    {
        "id": "610927",
        "name": "镇坪县",
        "parentId": "610900",
        "shortName": "镇坪",
        "letter": "Z",
        "cityCode": "0915",
        "pinyin": "Zhenping"
    },
    {
        "id": "610928",
        "name": "旬阳县",
        "parentId": "610900",
        "shortName": "旬阳",
        "letter": "X",
        "cityCode": "0915",
        "pinyin": "Xunyang"
    },
    {
        "id": "610929",
        "name": "白河县",
        "parentId": "610900",
        "shortName": "白河",
        "letter": "B",
        "cityCode": "0915",
        "pinyin": "Baihe"
    },
    {
        "id": "611000",
        "name": "商洛市",
        "parentId": "610000",
        "shortName": "商洛",
        "letter": "S",
        "cityCode": "0914",
        "pinyin": "Shangluo"
    },
    {
        "id": "611002",
        "name": "商州区",
        "parentId": "611000",
        "shortName": "商州",
        "letter": "S",
        "cityCode": "0914",
        "pinyin": "Shangzhou"
    },
    {
        "id": "611021",
        "name": "洛南县",
        "parentId": "611000",
        "shortName": "洛南",
        "letter": "L",
        "cityCode": "0914",
        "pinyin": "Luonan"
    },
    {
        "id": "611022",
        "name": "丹凤县",
        "parentId": "611000",
        "shortName": "丹凤",
        "letter": "D",
        "cityCode": "0914",
        "pinyin": "Danfeng"
    },
    {
        "id": "611023",
        "name": "商南县",
        "parentId": "611000",
        "shortName": "商南",
        "letter": "S",
        "cityCode": "0914",
        "pinyin": "Shangnan"
    },
    {
        "id": "611024",
        "name": "山阳县",
        "parentId": "611000",
        "shortName": "山阳",
        "letter": "S",
        "cityCode": "0914",
        "pinyin": "Shanyang"
    },
    {
        "id": "611025",
        "name": "镇安县",
        "parentId": "611000",
        "shortName": "镇安",
        "letter": "Z",
        "cityCode": "0914",
        "pinyin": "Zhen'an"
    },
    {
        "id": "611026",
        "name": "柞水县",
        "parentId": "611000",
        "shortName": "柞水",
        "letter": "Z",
        "cityCode": "0914",
        "pinyin": "Zhashui"
    },
    {
        "id": "611100",
        "name": "西咸新区",
        "parentId": "610000",
        "shortName": "西咸",
        "letter": "X",
        "cityCode": "029",
        "pinyin": "Xixian"
    },
    {
        "id": "611101",
        "name": "空港新城",
        "parentId": "611100",
        "shortName": "空港",
        "letter": "K",
        "cityCode": "0374",
        "pinyin": "Konggang"
    },
    {
        "id": "611102",
        "name": "沣东新城",
        "parentId": "611100",
        "shortName": "沣东",
        "letter": "F",
        "cityCode": "029",
        "pinyin": "Fengdong"
    },
    {
        "id": "611103",
        "name": "秦汉新城",
        "parentId": "611100",
        "shortName": "秦汉",
        "letter": "Q",
        "cityCode": "029",
        "pinyin": "Qinhan"
    },
    {
        "id": "611104",
        "name": "沣西新城",
        "parentId": "611100",
        "shortName": "沣西",
        "letter": "F",
        "cityCode": "029",
        "pinyin": "Fengxi"
    },
    {
        "id": "611105",
        "name": "泾河新城",
        "parentId": "611100",
        "shortName": "泾河",
        "letter": "J",
        "cityCode": "029",
        "pinyin": "Jinghe"
    },
    {
        "id": "620000",
        "name": "甘肃省",
        "parentId": "100000",
        "shortName": "甘肃",
        "letter": "G",
        "cityCode": "",
        "pinyin": "Gansu"
    },
    {
        "id": "620100",
        "name": "兰州市",
        "parentId": "620000",
        "shortName": "兰州",
        "letter": "L",
        "cityCode": "0931",
        "pinyin": "Lanzhou"
    },
    {
        "id": "620102",
        "name": "城关区",
        "parentId": "620100",
        "shortName": "城关",
        "letter": "C",
        "cityCode": "0931",
        "pinyin": "Chengguan"
    },
    {
        "id": "620103",
        "name": "七里河区",
        "parentId": "620100",
        "shortName": "七里河",
        "letter": "Q",
        "cityCode": "0931",
        "pinyin": "Qilihe"
    },
    {
        "id": "620104",
        "name": "西固区",
        "parentId": "620100",
        "shortName": "西固",
        "letter": "X",
        "cityCode": "0931",
        "pinyin": "Xigu"
    },
    {
        "id": "620105",
        "name": "安宁区",
        "parentId": "620100",
        "shortName": "安宁",
        "letter": "A",
        "cityCode": "0931",
        "pinyin": "Anning"
    },
    {
        "id": "620111",
        "name": "红古区",
        "parentId": "620100",
        "shortName": "红古",
        "letter": "H",
        "cityCode": "0931",
        "pinyin": "Honggu"
    },
    {
        "id": "620121",
        "name": "永登县",
        "parentId": "620100",
        "shortName": "永登",
        "letter": "Y",
        "cityCode": "0931",
        "pinyin": "Yongdeng"
    },
    {
        "id": "620122",
        "name": "皋兰县",
        "parentId": "620100",
        "shortName": "皋兰",
        "letter": "G",
        "cityCode": "0931",
        "pinyin": "Gaolan"
    },
    {
        "id": "620123",
        "name": "榆中县",
        "parentId": "620100",
        "shortName": "榆中",
        "letter": "Y",
        "cityCode": "0931",
        "pinyin": "Yuzhong"
    },
    {
        "id": "620200",
        "name": "嘉峪关市",
        "parentId": "620000",
        "shortName": "嘉峪关",
        "letter": "J",
        "cityCode": "0937",
        "pinyin": "Jiayuguan"
    },
    {
        "id": "620201",
        "name": "雄关区",
        "parentId": "620200",
        "shortName": "雄关",
        "letter": "X",
        "cityCode": "0937",
        "pinyin": "Xiongguan"
    },
    {
        "id": "620202",
        "name": "长城区",
        "parentId": "620200",
        "shortName": "长城",
        "letter": "C",
        "cityCode": "0937",
        "pinyin": "Changcheng"
    },
    {
        "id": "620203",
        "name": "镜铁区",
        "parentId": "620200",
        "shortName": "镜铁",
        "letter": "J",
        "cityCode": "0937",
        "pinyin": "Jingtie"
    },
    {
        "id": "620300",
        "name": "金昌市",
        "parentId": "620000",
        "shortName": "金昌",
        "letter": "J",
        "cityCode": "0935",
        "pinyin": "Jinchang"
    },
    {
        "id": "620302",
        "name": "金川区",
        "parentId": "620300",
        "shortName": "金川",
        "letter": "J",
        "cityCode": "0935",
        "pinyin": "Jinchuan"
    },
    {
        "id": "620321",
        "name": "永昌县",
        "parentId": "620300",
        "shortName": "永昌",
        "letter": "Y",
        "cityCode": "0935",
        "pinyin": "Yongchang"
    },
    {
        "id": "620400",
        "name": "白银市",
        "parentId": "620000",
        "shortName": "白银",
        "letter": "B",
        "cityCode": "0943",
        "pinyin": "Baiyin"
    },
    {
        "id": "620402",
        "name": "白银区",
        "parentId": "620400",
        "shortName": "白银",
        "letter": "B",
        "cityCode": "0943",
        "pinyin": "Baiyin"
    },
    {
        "id": "620403",
        "name": "平川区",
        "parentId": "620400",
        "shortName": "平川",
        "letter": "P",
        "cityCode": "0943",
        "pinyin": "Pingchuan"
    },
    {
        "id": "620421",
        "name": "靖远县",
        "parentId": "620400",
        "shortName": "靖远",
        "letter": "J",
        "cityCode": "0943",
        "pinyin": "Jingyuan"
    },
    {
        "id": "620422",
        "name": "会宁县",
        "parentId": "620400",
        "shortName": "会宁",
        "letter": "H",
        "cityCode": "0943",
        "pinyin": "Huining"
    },
    {
        "id": "620423",
        "name": "景泰县",
        "parentId": "620400",
        "shortName": "景泰",
        "letter": "J",
        "cityCode": "0943",
        "pinyin": "Jingtai"
    },
    {
        "id": "620500",
        "name": "天水市",
        "parentId": "620000",
        "shortName": "天水",
        "letter": "T",
        "cityCode": "0938",
        "pinyin": "Tianshui"
    },
    {
        "id": "620502",
        "name": "秦州区",
        "parentId": "620500",
        "shortName": "秦州",
        "letter": "Q",
        "cityCode": "0938",
        "pinyin": "Qinzhou"
    },
    {
        "id": "620503",
        "name": "麦积区",
        "parentId": "620500",
        "shortName": "麦积",
        "letter": "M",
        "cityCode": "0938",
        "pinyin": "Maiji"
    },
    {
        "id": "620521",
        "name": "清水县",
        "parentId": "620500",
        "shortName": "清水",
        "letter": "Q",
        "cityCode": "0938",
        "pinyin": "Qingshui"
    },
    {
        "id": "620522",
        "name": "秦安县",
        "parentId": "620500",
        "shortName": "秦安",
        "letter": "Q",
        "cityCode": "0938",
        "pinyin": "Qin'an"
    },
    {
        "id": "620523",
        "name": "甘谷县",
        "parentId": "620500",
        "shortName": "甘谷",
        "letter": "G",
        "cityCode": "0938",
        "pinyin": "Gangu"
    },
    {
        "id": "620524",
        "name": "武山县",
        "parentId": "620500",
        "shortName": "武山",
        "letter": "W",
        "cityCode": "0938",
        "pinyin": "Wushan"
    },
    {
        "id": "620525",
        "name": "张家川回族自治县",
        "parentId": "620500",
        "shortName": "张家川",
        "letter": "Z",
        "cityCode": "0938",
        "pinyin": "Zhangjiachuan"
    },
    {
        "id": "620600",
        "name": "武威市",
        "parentId": "620000",
        "shortName": "武威",
        "letter": "W",
        "cityCode": "0935",
        "pinyin": "Wuwei"
    },
    {
        "id": "620602",
        "name": "凉州区",
        "parentId": "620600",
        "shortName": "凉州",
        "letter": "L",
        "cityCode": "0935",
        "pinyin": "Liangzhou"
    },
    {
        "id": "620621",
        "name": "民勤县",
        "parentId": "620600",
        "shortName": "民勤",
        "letter": "M",
        "cityCode": "0935",
        "pinyin": "Minqin"
    },
    {
        "id": "620622",
        "name": "古浪县",
        "parentId": "620600",
        "shortName": "古浪",
        "letter": "G",
        "cityCode": "0935",
        "pinyin": "Gulang"
    },
    {
        "id": "620623",
        "name": "天祝藏族自治县",
        "parentId": "620600",
        "shortName": "天祝",
        "letter": "T",
        "cityCode": "0935",
        "pinyin": "Tianzhu"
    },
    {
        "id": "620700",
        "name": "张掖市",
        "parentId": "620000",
        "shortName": "张掖",
        "letter": "Z",
        "cityCode": "0936",
        "pinyin": "Zhangye"
    },
    {
        "id": "620702",
        "name": "甘州区",
        "parentId": "620700",
        "shortName": "甘州",
        "letter": "G",
        "cityCode": "0936",
        "pinyin": "Ganzhou"
    },
    {
        "id": "620721",
        "name": "肃南裕固族自治县",
        "parentId": "620700",
        "shortName": "肃南",
        "letter": "S",
        "cityCode": "0936",
        "pinyin": "Sunan"
    },
    {
        "id": "620722",
        "name": "民乐县",
        "parentId": "620700",
        "shortName": "民乐",
        "letter": "M",
        "cityCode": "0936",
        "pinyin": "Minle"
    },
    {
        "id": "620723",
        "name": "临泽县",
        "parentId": "620700",
        "shortName": "临泽",
        "letter": "L",
        "cityCode": "0936",
        "pinyin": "Linze"
    },
    {
        "id": "620724",
        "name": "高台县",
        "parentId": "620700",
        "shortName": "高台",
        "letter": "G",
        "cityCode": "0936",
        "pinyin": "Gaotai"
    },
    {
        "id": "620725",
        "name": "山丹县",
        "parentId": "620700",
        "shortName": "山丹",
        "letter": "S",
        "cityCode": "0936",
        "pinyin": "Shandan"
    },
    {
        "id": "620800",
        "name": "平凉市",
        "parentId": "620000",
        "shortName": "平凉",
        "letter": "P",
        "cityCode": "0933",
        "pinyin": "Pingliang"
    },
    {
        "id": "620802",
        "name": "崆峒区",
        "parentId": "620800",
        "shortName": "崆峒",
        "letter": "K",
        "cityCode": "0933",
        "pinyin": "Kongtong"
    },
    {
        "id": "620821",
        "name": "泾川县",
        "parentId": "620800",
        "shortName": "泾川",
        "letter": "J",
        "cityCode": "0933",
        "pinyin": "Jingchuan"
    },
    {
        "id": "620822",
        "name": "灵台县",
        "parentId": "620800",
        "shortName": "灵台",
        "letter": "L",
        "cityCode": "0933",
        "pinyin": "Lingtai"
    },
    {
        "id": "620823",
        "name": "崇信县",
        "parentId": "620800",
        "shortName": "崇信",
        "letter": "C",
        "cityCode": "0933",
        "pinyin": "Chongxin"
    },
    {
        "id": "620824",
        "name": "华亭县",
        "parentId": "620800",
        "shortName": "华亭",
        "letter": "H",
        "cityCode": "0933",
        "pinyin": "Huating"
    },
    {
        "id": "620825",
        "name": "庄浪县",
        "parentId": "620800",
        "shortName": "庄浪",
        "letter": "Z",
        "cityCode": "0933",
        "pinyin": "Zhuanglang"
    },
    {
        "id": "620826",
        "name": "静宁县",
        "parentId": "620800",
        "shortName": "静宁",
        "letter": "J",
        "cityCode": "0933",
        "pinyin": "Jingning"
    },
    {
        "id": "620900",
        "name": "酒泉市",
        "parentId": "620000",
        "shortName": "酒泉",
        "letter": "J",
        "cityCode": "0937",
        "pinyin": "Jiuquan"
    },
    {
        "id": "620902",
        "name": "肃州区",
        "parentId": "620900",
        "shortName": "肃州",
        "letter": "S",
        "cityCode": "0937",
        "pinyin": "Suzhou"
    },
    {
        "id": "620921",
        "name": "金塔县",
        "parentId": "620900",
        "shortName": "金塔",
        "letter": "J",
        "cityCode": "0937",
        "pinyin": "Jinta"
    },
    {
        "id": "620922",
        "name": "瓜州县",
        "parentId": "620900",
        "shortName": "瓜州",
        "letter": "G",
        "cityCode": "0937",
        "pinyin": "Guazhou"
    },
    {
        "id": "620923",
        "name": "肃北蒙古族自治县",
        "parentId": "620900",
        "shortName": "肃北",
        "letter": "S",
        "cityCode": "0937",
        "pinyin": "Subei"
    },
    {
        "id": "620924",
        "name": "阿克塞哈萨克族自治县",
        "parentId": "620900",
        "shortName": "阿克塞",
        "letter": "A",
        "cityCode": "0937",
        "pinyin": "Akesai"
    },
    {
        "id": "620981",
        "name": "玉门市",
        "parentId": "620900",
        "shortName": "玉门",
        "letter": "Y",
        "cityCode": "0937",
        "pinyin": "Yumen"
    },
    {
        "id": "620982",
        "name": "敦煌市",
        "parentId": "620900",
        "shortName": "敦煌",
        "letter": "D",
        "cityCode": "0937",
        "pinyin": "Dunhuang"
    },
    {
        "id": "621000",
        "name": "庆阳市",
        "parentId": "620000",
        "shortName": "庆阳",
        "letter": "Q",
        "cityCode": "0934",
        "pinyin": "Qingyang"
    },
    {
        "id": "621002",
        "name": "西峰区",
        "parentId": "621000",
        "shortName": "西峰",
        "letter": "X",
        "cityCode": "0934",
        "pinyin": "Xifeng"
    },
    {
        "id": "621021",
        "name": "庆城县",
        "parentId": "621000",
        "shortName": "庆城",
        "letter": "Q",
        "cityCode": "0934",
        "pinyin": "Qingcheng"
    },
    {
        "id": "621022",
        "name": "环县",
        "parentId": "621000",
        "shortName": "环县",
        "letter": "H",
        "cityCode": "0934",
        "pinyin": "Huanxian"
    },
    {
        "id": "621023",
        "name": "华池县",
        "parentId": "621000",
        "shortName": "华池",
        "letter": "H",
        "cityCode": "0934",
        "pinyin": "Huachi"
    },
    {
        "id": "621024",
        "name": "合水县",
        "parentId": "621000",
        "shortName": "合水",
        "letter": "H",
        "cityCode": "0934",
        "pinyin": "Heshui"
    },
    {
        "id": "621025",
        "name": "正宁县",
        "parentId": "621000",
        "shortName": "正宁",
        "letter": "Z",
        "cityCode": "0934",
        "pinyin": "Zhengning"
    },
    {
        "id": "621026",
        "name": "宁县",
        "parentId": "621000",
        "shortName": "宁县",
        "letter": "N",
        "cityCode": "0934",
        "pinyin": "Ningxian"
    },
    {
        "id": "621027",
        "name": "镇原县",
        "parentId": "621000",
        "shortName": "镇原",
        "letter": "Z",
        "cityCode": "0934",
        "pinyin": "Zhenyuan"
    },
    {
        "id": "621100",
        "name": "定西市",
        "parentId": "620000",
        "shortName": "定西",
        "letter": "D",
        "cityCode": "0932",
        "pinyin": "Dingxi"
    },
    {
        "id": "621102",
        "name": "安定区",
        "parentId": "621100",
        "shortName": "安定",
        "letter": "A",
        "cityCode": "0932",
        "pinyin": "Anding"
    },
    {
        "id": "621121",
        "name": "通渭县",
        "parentId": "621100",
        "shortName": "通渭",
        "letter": "T",
        "cityCode": "0932",
        "pinyin": "Tongwei"
    },
    {
        "id": "621122",
        "name": "陇西县",
        "parentId": "621100",
        "shortName": "陇西",
        "letter": "L",
        "cityCode": "0932",
        "pinyin": "Longxi"
    },
    {
        "id": "621123",
        "name": "渭源县",
        "parentId": "621100",
        "shortName": "渭源",
        "letter": "W",
        "cityCode": "0932",
        "pinyin": "Weiyuan"
    },
    {
        "id": "621124",
        "name": "临洮县",
        "parentId": "621100",
        "shortName": "临洮",
        "letter": "L",
        "cityCode": "0932",
        "pinyin": "Lintao"
    },
    {
        "id": "621125",
        "name": "漳县",
        "parentId": "621100",
        "shortName": "漳县",
        "letter": "Z",
        "cityCode": "0932",
        "pinyin": "Zhangxian"
    },
    {
        "id": "621126",
        "name": "岷县",
        "parentId": "621100",
        "shortName": "岷县",
        "letter": "M",
        "cityCode": "0932",
        "pinyin": "Minxian"
    },
    {
        "id": "621200",
        "name": "陇南市",
        "parentId": "620000",
        "shortName": "陇南",
        "letter": "L",
        "cityCode": "0939",
        "pinyin": "Longnan"
    },
    {
        "id": "621202",
        "name": "武都区",
        "parentId": "621200",
        "shortName": "武都",
        "letter": "W",
        "cityCode": "0939",
        "pinyin": "Wudu"
    },
    {
        "id": "621221",
        "name": "成县",
        "parentId": "621200",
        "shortName": "成县",
        "letter": "C",
        "cityCode": "0939",
        "pinyin": "Chengxian"
    },
    {
        "id": "621222",
        "name": "文县",
        "parentId": "621200",
        "shortName": "文县",
        "letter": "W",
        "cityCode": "0939",
        "pinyin": "Wenxian"
    },
    {
        "id": "621223",
        "name": "宕昌县",
        "parentId": "621200",
        "shortName": "宕昌",
        "letter": "D",
        "cityCode": "0939",
        "pinyin": "Dangchang"
    },
    {
        "id": "621224",
        "name": "康县",
        "parentId": "621200",
        "shortName": "康县",
        "letter": "K",
        "cityCode": "0939",
        "pinyin": "Kangxian"
    },
    {
        "id": "621225",
        "name": "西和县",
        "parentId": "621200",
        "shortName": "西和",
        "letter": "X",
        "cityCode": "0939",
        "pinyin": "Xihe"
    },
    {
        "id": "621226",
        "name": "礼县",
        "parentId": "621200",
        "shortName": "礼县",
        "letter": "L",
        "cityCode": "0939",
        "pinyin": "Lixian"
    },
    {
        "id": "621227",
        "name": "徽县",
        "parentId": "621200",
        "shortName": "徽县",
        "letter": "H",
        "cityCode": "0939",
        "pinyin": "Huixian"
    },
    {
        "id": "621228",
        "name": "两当县",
        "parentId": "621200",
        "shortName": "两当",
        "letter": "L",
        "cityCode": "0939",
        "pinyin": "Liangdang"
    },
    {
        "id": "622900",
        "name": "临夏回族自治州",
        "parentId": "620000",
        "shortName": "临夏",
        "letter": "L",
        "cityCode": "0930",
        "pinyin": "Linxia"
    },
    {
        "id": "622901",
        "name": "临夏市",
        "parentId": "622900",
        "shortName": "临夏",
        "letter": "L",
        "cityCode": "0930",
        "pinyin": "Linxia"
    },
    {
        "id": "622921",
        "name": "临夏县",
        "parentId": "622900",
        "shortName": "临夏",
        "letter": "L",
        "cityCode": "0930",
        "pinyin": "Linxia"
    },
    {
        "id": "622922",
        "name": "康乐县",
        "parentId": "622900",
        "shortName": "康乐",
        "letter": "K",
        "cityCode": "0930",
        "pinyin": "Kangle"
    },
    {
        "id": "622923",
        "name": "永靖县",
        "parentId": "622900",
        "shortName": "永靖",
        "letter": "Y",
        "cityCode": "0930",
        "pinyin": "Yongjing"
    },
    {
        "id": "622924",
        "name": "广河县",
        "parentId": "622900",
        "shortName": "广河",
        "letter": "G",
        "cityCode": "0930",
        "pinyin": "Guanghe"
    },
    {
        "id": "622925",
        "name": "和政县",
        "parentId": "622900",
        "shortName": "和政",
        "letter": "H",
        "cityCode": "0930",
        "pinyin": "Hezheng"
    },
    {
        "id": "622926",
        "name": "东乡族自治县",
        "parentId": "622900",
        "shortName": "东乡族",
        "letter": "D",
        "cityCode": "0930",
        "pinyin": "Dongxiangzu"
    },
    {
        "id": "622927",
        "name": "积石山保安族东乡族撒拉族自治县",
        "parentId": "622900",
        "shortName": "积石山",
        "letter": "J",
        "cityCode": "0930",
        "pinyin": "Jishishan"
    },
    {
        "id": "623000",
        "name": "甘南藏族自治州",
        "parentId": "620000",
        "shortName": "甘南",
        "letter": "G",
        "cityCode": "0941",
        "pinyin": "Gannan"
    },
    {
        "id": "623001",
        "name": "合作市",
        "parentId": "623000",
        "shortName": "合作",
        "letter": "H",
        "cityCode": "0941",
        "pinyin": "Hezuo"
    },
    {
        "id": "623021",
        "name": "临潭县",
        "parentId": "623000",
        "shortName": "临潭",
        "letter": "L",
        "cityCode": "0941",
        "pinyin": "Lintan"
    },
    {
        "id": "623022",
        "name": "卓尼县",
        "parentId": "623000",
        "shortName": "卓尼",
        "letter": "Z",
        "cityCode": "0941",
        "pinyin": "Zhuoni"
    },
    {
        "id": "623023",
        "name": "舟曲县",
        "parentId": "623000",
        "shortName": "舟曲",
        "letter": "Z",
        "cityCode": "0941",
        "pinyin": "Zhouqu"
    },
    {
        "id": "623024",
        "name": "迭部县",
        "parentId": "623000",
        "shortName": "迭部",
        "letter": "D",
        "cityCode": "0941",
        "pinyin": "Diebu"
    },
    {
        "id": "623025",
        "name": "玛曲县",
        "parentId": "623000",
        "shortName": "玛曲",
        "letter": "M",
        "cityCode": "0941",
        "pinyin": "Maqu"
    },
    {
        "id": "623026",
        "name": "碌曲县",
        "parentId": "623000",
        "shortName": "碌曲",
        "letter": "L",
        "cityCode": "0941",
        "pinyin": "Luqu"
    },
    {
        "id": "623027",
        "name": "夏河县",
        "parentId": "623000",
        "shortName": "夏河",
        "letter": "X",
        "cityCode": "0941",
        "pinyin": "Xiahe"
    },
    {
        "id": "630000",
        "name": "青海省",
        "parentId": "100000",
        "shortName": "青海",
        "letter": "Q",
        "cityCode": "",
        "pinyin": "Qinghai"
    },
    {
        "id": "630100",
        "name": "西宁市",
        "parentId": "630000",
        "shortName": "西宁",
        "letter": "X",
        "cityCode": "0971",
        "pinyin": "Xining"
    },
    {
        "id": "630102",
        "name": "城东区",
        "parentId": "630100",
        "shortName": "城东",
        "letter": "C",
        "cityCode": "0971",
        "pinyin": "Chengdong"
    },
    {
        "id": "630103",
        "name": "城中区",
        "parentId": "630100",
        "shortName": "城中",
        "letter": "C",
        "cityCode": "0971",
        "pinyin": "Chengzhong"
    },
    {
        "id": "630104",
        "name": "城西区",
        "parentId": "630100",
        "shortName": "城西",
        "letter": "C",
        "cityCode": "0971",
        "pinyin": "Chengxi"
    },
    {
        "id": "630105",
        "name": "城北区",
        "parentId": "630100",
        "shortName": "城北",
        "letter": "C",
        "cityCode": "0971",
        "pinyin": "Chengbei"
    },
    {
        "id": "630121",
        "name": "大通回族土族自治县",
        "parentId": "630100",
        "shortName": "大通",
        "letter": "D",
        "cityCode": "0971",
        "pinyin": "Datong"
    },
    {
        "id": "630122",
        "name": "湟中县",
        "parentId": "630100",
        "shortName": "湟中",
        "letter": "H",
        "cityCode": "0971",
        "pinyin": "Huangzhong"
    },
    {
        "id": "630123",
        "name": "湟源县",
        "parentId": "630100",
        "shortName": "湟源",
        "letter": "H",
        "cityCode": "0971",
        "pinyin": "Huangyuan"
    },
    {
        "id": "630200",
        "name": "海东市",
        "parentId": "630000",
        "shortName": "海东",
        "letter": "H",
        "cityCode": "0972",
        "pinyin": "Haidong"
    },
    {
        "id": "630202",
        "name": "乐都区",
        "parentId": "630200",
        "shortName": "乐都",
        "letter": "L",
        "cityCode": "0972",
        "pinyin": "Ledu"
    },
    {
        "id": "630221",
        "name": "平安县",
        "parentId": "630200",
        "shortName": "平安",
        "letter": "P",
        "cityCode": "0972",
        "pinyin": "Ping'an"
    },
    {
        "id": "630222",
        "name": "民和回族土族自治县",
        "parentId": "630200",
        "shortName": "民和",
        "letter": "M",
        "cityCode": "0972",
        "pinyin": "Minhe"
    },
    {
        "id": "630223",
        "name": "互助土族自治县",
        "parentId": "630200",
        "shortName": "互助",
        "letter": "H",
        "cityCode": "0972",
        "pinyin": "Huzhu"
    },
    {
        "id": "630224",
        "name": "化隆回族自治县",
        "parentId": "630200",
        "shortName": "化隆",
        "letter": "H",
        "cityCode": "0972",
        "pinyin": "Hualong"
    },
    {
        "id": "630225",
        "name": "循化撒拉族自治县",
        "parentId": "630200",
        "shortName": "循化",
        "letter": "X",
        "cityCode": "0972",
        "pinyin": "Xunhua"
    },
    {
        "id": "632200",
        "name": "海北藏族自治州",
        "parentId": "630000",
        "shortName": "海北",
        "letter": "H",
        "cityCode": "0970",
        "pinyin": "Haibei"
    },
    {
        "id": "632221",
        "name": "门源回族自治县",
        "parentId": "632200",
        "shortName": "门源",
        "letter": "M",
        "cityCode": "0970",
        "pinyin": "Menyuan"
    },
    {
        "id": "632222",
        "name": "祁连县",
        "parentId": "632200",
        "shortName": "祁连",
        "letter": "Q",
        "cityCode": "0970",
        "pinyin": "Qilian"
    },
    {
        "id": "632223",
        "name": "海晏县",
        "parentId": "632200",
        "shortName": "海晏",
        "letter": "H",
        "cityCode": "0970",
        "pinyin": "Haiyan"
    },
    {
        "id": "632224",
        "name": "刚察县",
        "parentId": "632200",
        "shortName": "刚察",
        "letter": "G",
        "cityCode": "0970",
        "pinyin": "Gangcha"
    },
    {
        "id": "632300",
        "name": "黄南藏族自治州",
        "parentId": "630000",
        "shortName": "黄南",
        "letter": "H",
        "cityCode": "0973",
        "pinyin": "Huangnan"
    },
    {
        "id": "632321",
        "name": "同仁县",
        "parentId": "632300",
        "shortName": "同仁",
        "letter": "T",
        "cityCode": "0973",
        "pinyin": "Tongren"
    },
    {
        "id": "632322",
        "name": "尖扎县",
        "parentId": "632300",
        "shortName": "尖扎",
        "letter": "J",
        "cityCode": "0973",
        "pinyin": "Jianzha"
    },
    {
        "id": "632323",
        "name": "泽库县",
        "parentId": "632300",
        "shortName": "泽库",
        "letter": "Z",
        "cityCode": "0973",
        "pinyin": "Zeku"
    },
    {
        "id": "632324",
        "name": "河南蒙古族自治县",
        "parentId": "632300",
        "shortName": "河南",
        "letter": "H",
        "cityCode": "0973",
        "pinyin": "Henan"
    },
    {
        "id": "632500",
        "name": "海南藏族自治州",
        "parentId": "630000",
        "shortName": "海南",
        "letter": "H",
        "cityCode": "0974",
        "pinyin": "Hainan"
    },
    {
        "id": "632521",
        "name": "共和县",
        "parentId": "632500",
        "shortName": "共和",
        "letter": "G",
        "cityCode": "0974",
        "pinyin": "Gonghe"
    },
    {
        "id": "632522",
        "name": "同德县",
        "parentId": "632500",
        "shortName": "同德",
        "letter": "T",
        "cityCode": "0974",
        "pinyin": "Tongde"
    },
    {
        "id": "632523",
        "name": "贵德县",
        "parentId": "632500",
        "shortName": "贵德",
        "letter": "G",
        "cityCode": "0974",
        "pinyin": "Guide"
    },
    {
        "id": "632524",
        "name": "兴海县",
        "parentId": "632500",
        "shortName": "兴海",
        "letter": "X",
        "cityCode": "0974",
        "pinyin": "Xinghai"
    },
    {
        "id": "632525",
        "name": "贵南县",
        "parentId": "632500",
        "shortName": "贵南",
        "letter": "G",
        "cityCode": "0974",
        "pinyin": "Guinan"
    },
    {
        "id": "632600",
        "name": "果洛藏族自治州",
        "parentId": "630000",
        "shortName": "果洛",
        "letter": "G",
        "cityCode": "0975",
        "pinyin": "Golog"
    },
    {
        "id": "632621",
        "name": "玛沁县",
        "parentId": "632600",
        "shortName": "玛沁",
        "letter": "M",
        "cityCode": "0975",
        "pinyin": "Maqin"
    },
    {
        "id": "632622",
        "name": "班玛县",
        "parentId": "632600",
        "shortName": "班玛",
        "letter": "B",
        "cityCode": "0975",
        "pinyin": "Banma"
    },
    {
        "id": "632623",
        "name": "甘德县",
        "parentId": "632600",
        "shortName": "甘德",
        "letter": "G",
        "cityCode": "0975",
        "pinyin": "Gande"
    },
    {
        "id": "632624",
        "name": "达日县",
        "parentId": "632600",
        "shortName": "达日",
        "letter": "D",
        "cityCode": "0975",
        "pinyin": "Dari"
    },
    {
        "id": "632625",
        "name": "久治县",
        "parentId": "632600",
        "shortName": "久治",
        "letter": "J",
        "cityCode": "0975",
        "pinyin": "Jiuzhi"
    },
    {
        "id": "632626",
        "name": "玛多县",
        "parentId": "632600",
        "shortName": "玛多",
        "letter": "M",
        "cityCode": "0975",
        "pinyin": "Maduo"
    },
    {
        "id": "632700",
        "name": "玉树藏族自治州",
        "parentId": "630000",
        "shortName": "玉树",
        "letter": "Y",
        "cityCode": "0976",
        "pinyin": "Yushu"
    },
    {
        "id": "632701",
        "name": "玉树市",
        "parentId": "632700",
        "shortName": "玉树",
        "letter": "Y",
        "cityCode": "0976",
        "pinyin": "Yushu"
    },
    {
        "id": "632722",
        "name": "杂多县",
        "parentId": "632700",
        "shortName": "杂多",
        "letter": "Z",
        "cityCode": "0976",
        "pinyin": "Zaduo"
    },
    {
        "id": "632723",
        "name": "称多县",
        "parentId": "632700",
        "shortName": "称多",
        "letter": "C",
        "cityCode": "0976",
        "pinyin": "Chenduo"
    },
    {
        "id": "632724",
        "name": "治多县",
        "parentId": "632700",
        "shortName": "治多",
        "letter": "Z",
        "cityCode": "0976",
        "pinyin": "Zhiduo"
    },
    {
        "id": "632725",
        "name": "囊谦县",
        "parentId": "632700",
        "shortName": "囊谦",
        "letter": "N",
        "cityCode": "0976",
        "pinyin": "Nangqian"
    },
    {
        "id": "632726",
        "name": "曲麻莱县",
        "parentId": "632700",
        "shortName": "曲麻莱",
        "letter": "Q",
        "cityCode": "0976",
        "pinyin": "Qumalai"
    },
    {
        "id": "632800",
        "name": "海西蒙古族藏族自治州",
        "parentId": "630000",
        "shortName": "海西",
        "letter": "H",
        "cityCode": "0977",
        "pinyin": "Haixi"
    },
    {
        "id": "632801",
        "name": "格尔木市",
        "parentId": "632800",
        "shortName": "格尔木",
        "letter": "G",
        "cityCode": "0977",
        "pinyin": "Geermu"
    },
    {
        "id": "632802",
        "name": "德令哈市",
        "parentId": "632800",
        "shortName": "德令哈",
        "letter": "D",
        "cityCode": "0977",
        "pinyin": "Delingha"
    },
    {
        "id": "632821",
        "name": "乌兰县",
        "parentId": "632800",
        "shortName": "乌兰",
        "letter": "W",
        "cityCode": "0977",
        "pinyin": "Wulan"
    },
    {
        "id": "632822",
        "name": "都兰县",
        "parentId": "632800",
        "shortName": "都兰",
        "letter": "D",
        "cityCode": "0977",
        "pinyin": "Dulan"
    },
    {
        "id": "632823",
        "name": "天峻县",
        "parentId": "632800",
        "shortName": "天峻",
        "letter": "T",
        "cityCode": "0977",
        "pinyin": "Tianjun"
    },
    {
        "id": "640000",
        "name": "宁夏回族自治区",
        "parentId": "100000",
        "shortName": "宁夏",
        "letter": "N",
        "cityCode": "",
        "pinyin": "Ningxia"
    },
    {
        "id": "640100",
        "name": "银川市",
        "parentId": "640000",
        "shortName": "银川",
        "letter": "Y",
        "cityCode": "0951",
        "pinyin": "Yinchuan"
    },
    {
        "id": "640104",
        "name": "兴庆区",
        "parentId": "640100",
        "shortName": "兴庆",
        "letter": "X",
        "cityCode": "0951",
        "pinyin": "Xingqing"
    },
    {
        "id": "640105",
        "name": "西夏区",
        "parentId": "640100",
        "shortName": "西夏",
        "letter": "X",
        "cityCode": "0951",
        "pinyin": "Xixia"
    },
    {
        "id": "640106",
        "name": "金凤区",
        "parentId": "640100",
        "shortName": "金凤",
        "letter": "J",
        "cityCode": "0951",
        "pinyin": "Jinfeng"
    },
    {
        "id": "640121",
        "name": "永宁县",
        "parentId": "640100",
        "shortName": "永宁",
        "letter": "Y",
        "cityCode": "0951",
        "pinyin": "Yongning"
    },
    {
        "id": "640122",
        "name": "贺兰县",
        "parentId": "640100",
        "shortName": "贺兰",
        "letter": "H",
        "cityCode": "0951",
        "pinyin": "Helan"
    },
    {
        "id": "640181",
        "name": "灵武市",
        "parentId": "640100",
        "shortName": "灵武",
        "letter": "L",
        "cityCode": "0951",
        "pinyin": "Lingwu"
    },
    {
        "id": "640200",
        "name": "石嘴山市",
        "parentId": "640000",
        "shortName": "石嘴山",
        "letter": "S",
        "cityCode": "0952",
        "pinyin": "Shizuishan"
    },
    {
        "id": "640202",
        "name": "大武口区",
        "parentId": "640200",
        "shortName": "大武口",
        "letter": "D",
        "cityCode": "0952",
        "pinyin": "Dawukou"
    },
    {
        "id": "640205",
        "name": "惠农区",
        "parentId": "640200",
        "shortName": "惠农",
        "letter": "H",
        "cityCode": "0952",
        "pinyin": "Huinong"
    },
    {
        "id": "640221",
        "name": "平罗县",
        "parentId": "640200",
        "shortName": "平罗",
        "letter": "P",
        "cityCode": "0952",
        "pinyin": "Pingluo"
    },
    {
        "id": "640300",
        "name": "吴忠市",
        "parentId": "640000",
        "shortName": "吴忠",
        "letter": "W",
        "cityCode": "0953",
        "pinyin": "Wuzhong"
    },
    {
        "id": "640302",
        "name": "利通区",
        "parentId": "640300",
        "shortName": "利通",
        "letter": "L",
        "cityCode": "0953",
        "pinyin": "Litong"
    },
    {
        "id": "640303",
        "name": "红寺堡区",
        "parentId": "640300",
        "shortName": "红寺堡",
        "letter": "H",
        "cityCode": "0953",
        "pinyin": "Hongsibao"
    },
    {
        "id": "640323",
        "name": "盐池县",
        "parentId": "640300",
        "shortName": "盐池",
        "letter": "Y",
        "cityCode": "0953",
        "pinyin": "Yanchi"
    },
    {
        "id": "640324",
        "name": "同心县",
        "parentId": "640300",
        "shortName": "同心",
        "letter": "T",
        "cityCode": "0953",
        "pinyin": "Tongxin"
    },
    {
        "id": "640381",
        "name": "青铜峡市",
        "parentId": "640300",
        "shortName": "青铜峡",
        "letter": "Q",
        "cityCode": "0953",
        "pinyin": "Qingtongxia"
    },
    {
        "id": "640400",
        "name": "固原市",
        "parentId": "640000",
        "shortName": "固原",
        "letter": "G",
        "cityCode": "0954",
        "pinyin": "Guyuan"
    },
    {
        "id": "640402",
        "name": "原州区",
        "parentId": "640400",
        "shortName": "原州",
        "letter": "Y",
        "cityCode": "0954",
        "pinyin": "Yuanzhou"
    },
    {
        "id": "640422",
        "name": "西吉县",
        "parentId": "640400",
        "shortName": "西吉",
        "letter": "X",
        "cityCode": "0954",
        "pinyin": "Xiji"
    },
    {
        "id": "640423",
        "name": "隆德县",
        "parentId": "640400",
        "shortName": "隆德",
        "letter": "L",
        "cityCode": "0954",
        "pinyin": "Longde"
    },
    {
        "id": "640424",
        "name": "泾源县",
        "parentId": "640400",
        "shortName": "泾源",
        "letter": "J",
        "cityCode": "0954",
        "pinyin": "Jingyuan"
    },
    {
        "id": "640425",
        "name": "彭阳县",
        "parentId": "640400",
        "shortName": "彭阳",
        "letter": "P",
        "cityCode": "0954",
        "pinyin": "Pengyang"
    },
    {
        "id": "640500",
        "name": "中卫市",
        "parentId": "640000",
        "shortName": "中卫",
        "letter": "Z",
        "cityCode": "0955",
        "pinyin": "Zhongwei"
    },
    {
        "id": "640502",
        "name": "沙坡头区",
        "parentId": "640500",
        "shortName": "沙坡头",
        "letter": "S",
        "cityCode": "0955",
        "pinyin": "Shapotou"
    },
    {
        "id": "640521",
        "name": "中宁县",
        "parentId": "640500",
        "shortName": "中宁",
        "letter": "Z",
        "cityCode": "0955",
        "pinyin": "Zhongning"
    },
    {
        "id": "640522",
        "name": "海原县",
        "parentId": "640500",
        "shortName": "海原",
        "letter": "H",
        "cityCode": "0955",
        "pinyin": "Haiyuan"
    },
    {
        "id": "650000",
        "name": "新疆维吾尔自治区",
        "parentId": "100000",
        "shortName": "新疆",
        "letter": "X",
        "cityCode": "",
        "pinyin": "Xinjiang"
    },
    {
        "id": "650100",
        "name": "乌鲁木齐市",
        "parentId": "650000",
        "shortName": "乌鲁木齐",
        "letter": "U",
        "cityCode": "0991",
        "pinyin": "Urumqi"
    },
    {
        "id": "650102",
        "name": "天山区",
        "parentId": "650100",
        "shortName": "天山",
        "letter": "T",
        "cityCode": "0991",
        "pinyin": "Tianshan"
    },
    {
        "id": "650103",
        "name": "沙依巴克区",
        "parentId": "650100",
        "shortName": "沙依巴克",
        "letter": "S",
        "cityCode": "0991",
        "pinyin": "Shayibake"
    },
    {
        "id": "650104",
        "name": "新市区",
        "parentId": "650100",
        "shortName": "新市",
        "letter": "X",
        "cityCode": "0991",
        "pinyin": "Xinshi"
    },
    {
        "id": "650105",
        "name": "水磨沟区",
        "parentId": "650100",
        "shortName": "水磨沟",
        "letter": "S",
        "cityCode": "0991",
        "pinyin": "Shuimogou"
    },
    {
        "id": "650106",
        "name": "头屯河区",
        "parentId": "650100",
        "shortName": "头屯河",
        "letter": "T",
        "cityCode": "0991",
        "pinyin": "Toutunhe"
    },
    {
        "id": "650107",
        "name": "达坂城区",
        "parentId": "650100",
        "shortName": "达坂城",
        "letter": "D",
        "cityCode": "0991",
        "pinyin": "Dabancheng"
    },
    {
        "id": "650109",
        "name": "米东区",
        "parentId": "650100",
        "shortName": "米东",
        "letter": "M",
        "cityCode": "0991",
        "pinyin": "Midong"
    },
    {
        "id": "650121",
        "name": "乌鲁木齐县",
        "parentId": "650100",
        "shortName": "乌鲁木齐",
        "letter": "W",
        "cityCode": "0991",
        "pinyin": "Wulumuqi"
    },
    {
        "id": "650200",
        "name": "克拉玛依市",
        "parentId": "650000",
        "shortName": "克拉玛依",
        "letter": "K",
        "cityCode": "0990",
        "pinyin": "Karamay"
    },
    {
        "id": "650202",
        "name": "独山子区",
        "parentId": "650200",
        "shortName": "独山子",
        "letter": "D",
        "cityCode": "0992",
        "pinyin": "Dushanzi"
    },
    {
        "id": "650203",
        "name": "克拉玛依区",
        "parentId": "650200",
        "shortName": "克拉玛依",
        "letter": "K",
        "cityCode": "0990",
        "pinyin": "Kelamayi"
    },
    {
        "id": "650204",
        "name": "白碱滩区",
        "parentId": "650200",
        "shortName": "白碱滩",
        "letter": "B",
        "cityCode": "0990",
        "pinyin": "Baijiantan"
    },
    {
        "id": "650205",
        "name": "乌尔禾区",
        "parentId": "650200",
        "shortName": "乌尔禾",
        "letter": "W",
        "cityCode": "0990",
        "pinyin": "Wuerhe"
    },
    {
        "id": "652100",
        "name": "吐鲁番地区",
        "parentId": "650000",
        "shortName": "吐鲁番",
        "letter": "T",
        "cityCode": "0995",
        "pinyin": "Turpan"
    },
    {
        "id": "652101",
        "name": "吐鲁番市",
        "parentId": "652100",
        "shortName": "吐鲁番",
        "letter": "T",
        "cityCode": "0995",
        "pinyin": "Tulufan"
    },
    {
        "id": "652122",
        "name": "鄯善县",
        "parentId": "652100",
        "shortName": "鄯善",
        "letter": "S",
        "cityCode": "0995",
        "pinyin": "Shanshan"
    },
    {
        "id": "652123",
        "name": "托克逊县",
        "parentId": "652100",
        "shortName": "托克逊",
        "letter": "T",
        "cityCode": "0995",
        "pinyin": "Tuokexun"
    },
    {
        "id": "652200",
        "name": "哈密地区",
        "parentId": "650000",
        "shortName": "哈密",
        "letter": "H",
        "cityCode": "0902",
        "pinyin": "Hami"
    },
    {
        "id": "652201",
        "name": "哈密市",
        "parentId": "652200",
        "shortName": "哈密",
        "letter": "H",
        "cityCode": "0902",
        "pinyin": "Hami"
    },
    {
        "id": "652222",
        "name": "巴里坤哈萨克自治县",
        "parentId": "652200",
        "shortName": "巴里坤",
        "letter": "B",
        "cityCode": "0902",
        "pinyin": "Balikun"
    },
    {
        "id": "652223",
        "name": "伊吾县",
        "parentId": "652200",
        "shortName": "伊吾",
        "letter": "Y",
        "cityCode": "0902",
        "pinyin": "Yiwu"
    },
    {
        "id": "652300",
        "name": "昌吉回族自治州",
        "parentId": "650000",
        "shortName": "昌吉",
        "letter": "C",
        "cityCode": "0994",
        "pinyin": "Changji"
    },
    {
        "id": "652301",
        "name": "昌吉市",
        "parentId": "652300",
        "shortName": "昌吉",
        "letter": "C",
        "cityCode": "0994",
        "pinyin": "Changji"
    },
    {
        "id": "652302",
        "name": "阜康市",
        "parentId": "652300",
        "shortName": "阜康",
        "letter": "F",
        "cityCode": "0994",
        "pinyin": "Fukang"
    },
    {
        "id": "652323",
        "name": "呼图壁县",
        "parentId": "652300",
        "shortName": "呼图壁",
        "letter": "H",
        "cityCode": "0994",
        "pinyin": "Hutubi"
    },
    {
        "id": "652324",
        "name": "玛纳斯县",
        "parentId": "652300",
        "shortName": "玛纳斯",
        "letter": "M",
        "cityCode": "0994",
        "pinyin": "Manasi"
    },
    {
        "id": "652325",
        "name": "奇台县",
        "parentId": "652300",
        "shortName": "奇台",
        "letter": "Q",
        "cityCode": "0994",
        "pinyin": "Qitai"
    },
    {
        "id": "652327",
        "name": "吉木萨尔县",
        "parentId": "652300",
        "shortName": "吉木萨尔",
        "letter": "J",
        "cityCode": "0994",
        "pinyin": "Jimusaer"
    },
    {
        "id": "652328",
        "name": "木垒哈萨克自治县",
        "parentId": "652300",
        "shortName": "木垒",
        "letter": "M",
        "cityCode": "0994",
        "pinyin": "Mulei"
    },
    {
        "id": "652700",
        "name": "博尔塔拉蒙古自治州",
        "parentId": "650000",
        "shortName": "博尔塔拉",
        "letter": "B",
        "cityCode": "0909",
        "pinyin": "Bortala"
    },
    {
        "id": "652701",
        "name": "博乐市",
        "parentId": "652700",
        "shortName": "博乐",
        "letter": "B",
        "cityCode": "0909",
        "pinyin": "Bole"
    },
    {
        "id": "652702",
        "name": "阿拉山口市",
        "parentId": "652700",
        "shortName": "阿拉山口",
        "letter": "A",
        "cityCode": "0909",
        "pinyin": "Alashankou"
    },
    {
        "id": "652722",
        "name": "精河县",
        "parentId": "652700",
        "shortName": "精河",
        "letter": "J",
        "cityCode": "0909",
        "pinyin": "Jinghe"
    },
    {
        "id": "652723",
        "name": "温泉县",
        "parentId": "652700",
        "shortName": "温泉",
        "letter": "W",
        "cityCode": "0909",
        "pinyin": "Wenquan"
    },
    {
        "id": "652800",
        "name": "巴音郭楞蒙古自治州",
        "parentId": "650000",
        "shortName": "巴音郭楞",
        "letter": "B",
        "cityCode": "0996",
        "pinyin": "Bayingol"
    },
    {
        "id": "652801",
        "name": "库尔勒市",
        "parentId": "652800",
        "shortName": "库尔勒",
        "letter": "K",
        "cityCode": "0996",
        "pinyin": "Kuerle"
    },
    {
        "id": "652822",
        "name": "轮台县",
        "parentId": "652800",
        "shortName": "轮台",
        "letter": "L",
        "cityCode": "0996",
        "pinyin": "Luntai"
    },
    {
        "id": "652823",
        "name": "尉犁县",
        "parentId": "652800",
        "shortName": "尉犁",
        "letter": "Y",
        "cityCode": "0996",
        "pinyin": "Yuli"
    },
    {
        "id": "652824",
        "name": "若羌县",
        "parentId": "652800",
        "shortName": "若羌",
        "letter": "R",
        "cityCode": "0996",
        "pinyin": "Ruoqiang"
    },
    {
        "id": "652825",
        "name": "且末县",
        "parentId": "652800",
        "shortName": "且末",
        "letter": "Q",
        "cityCode": "0996",
        "pinyin": "Qiemo"
    },
    {
        "id": "652826",
        "name": "焉耆回族自治县",
        "parentId": "652800",
        "shortName": "焉耆",
        "letter": "Y",
        "cityCode": "0996",
        "pinyin": "Yanqi"
    },
    {
        "id": "652827",
        "name": "和静县",
        "parentId": "652800",
        "shortName": "和静",
        "letter": "H",
        "cityCode": "0996",
        "pinyin": "Hejing"
    },
    {
        "id": "652828",
        "name": "和硕县",
        "parentId": "652800",
        "shortName": "和硕",
        "letter": "H",
        "cityCode": "0996",
        "pinyin": "Heshuo"
    },
    {
        "id": "652829",
        "name": "博湖县",
        "parentId": "652800",
        "shortName": "博湖",
        "letter": "B",
        "cityCode": "0996",
        "pinyin": "Bohu"
    },
    {
        "id": "652900",
        "name": "阿克苏地区",
        "parentId": "650000",
        "shortName": "阿克苏",
        "letter": "A",
        "cityCode": "0997",
        "pinyin": "Aksu"
    },
    {
        "id": "652901",
        "name": "阿克苏市",
        "parentId": "652900",
        "shortName": "阿克苏",
        "letter": "A",
        "cityCode": "0997",
        "pinyin": "Akesu"
    },
    {
        "id": "652922",
        "name": "温宿县",
        "parentId": "652900",
        "shortName": "温宿",
        "letter": "W",
        "cityCode": "0997",
        "pinyin": "Wensu"
    },
    {
        "id": "652923",
        "name": "库车县",
        "parentId": "652900",
        "shortName": "库车",
        "letter": "K",
        "cityCode": "0997",
        "pinyin": "Kuche"
    },
    {
        "id": "652924",
        "name": "沙雅县",
        "parentId": "652900",
        "shortName": "沙雅",
        "letter": "S",
        "cityCode": "0997",
        "pinyin": "Shaya"
    },
    {
        "id": "652925",
        "name": "新和县",
        "parentId": "652900",
        "shortName": "新和",
        "letter": "X",
        "cityCode": "0997",
        "pinyin": "Xinhe"
    },
    {
        "id": "652926",
        "name": "拜城县",
        "parentId": "652900",
        "shortName": "拜城",
        "letter": "B",
        "cityCode": "0997",
        "pinyin": "Baicheng"
    },
    {
        "id": "652927",
        "name": "乌什县",
        "parentId": "652900",
        "shortName": "乌什",
        "letter": "W",
        "cityCode": "0997",
        "pinyin": "Wushi"
    },
    {
        "id": "652928",
        "name": "阿瓦提县",
        "parentId": "652900",
        "shortName": "阿瓦提",
        "letter": "A",
        "cityCode": "0997",
        "pinyin": "Awati"
    },
    {
        "id": "652929",
        "name": "柯坪县",
        "parentId": "652900",
        "shortName": "柯坪",
        "letter": "K",
        "cityCode": "0997",
        "pinyin": "Keping"
    },
    {
        "id": "653000",
        "name": "克孜勒苏柯尔克孜自治州",
        "parentId": "650000",
        "shortName": "克孜勒苏",
        "letter": "K",
        "cityCode": "0908",
        "pinyin": "Kizilsu"
    },
    {
        "id": "653001",
        "name": "阿图什市",
        "parentId": "653000",
        "shortName": "阿图什",
        "letter": "A",
        "cityCode": "0908",
        "pinyin": "Atushi"
    },
    {
        "id": "653022",
        "name": "阿克陶县",
        "parentId": "653000",
        "shortName": "阿克陶",
        "letter": "A",
        "cityCode": "0908",
        "pinyin": "Aketao"
    },
    {
        "id": "653023",
        "name": "阿合奇县",
        "parentId": "653000",
        "shortName": "阿合奇",
        "letter": "A",
        "cityCode": "0997",
        "pinyin": "Aheqi"
    },
    {
        "id": "653024",
        "name": "乌恰县",
        "parentId": "653000",
        "shortName": "乌恰",
        "letter": "W",
        "cityCode": "0908",
        "pinyin": "Wuqia"
    },
    {
        "id": "653100",
        "name": "喀什地区",
        "parentId": "650000",
        "shortName": "喀什",
        "letter": "K",
        "cityCode": "0998",
        "pinyin": "Kashgar"
    },
    {
        "id": "653101",
        "name": "喀什市",
        "parentId": "653100",
        "shortName": "喀什",
        "letter": "K",
        "cityCode": "0998",
        "pinyin": "Kashi"
    },
    {
        "id": "653121",
        "name": "疏附县",
        "parentId": "653100",
        "shortName": "疏附",
        "letter": "S",
        "cityCode": "0998",
        "pinyin": "Shufu"
    },
    {
        "id": "653122",
        "name": "疏勒县",
        "parentId": "653100",
        "shortName": "疏勒",
        "letter": "S",
        "cityCode": "0998",
        "pinyin": "Shule"
    },
    {
        "id": "653123",
        "name": "英吉沙县",
        "parentId": "653100",
        "shortName": "英吉沙",
        "letter": "Y",
        "cityCode": "0998",
        "pinyin": "Yingjisha"
    },
    {
        "id": "653124",
        "name": "泽普县",
        "parentId": "653100",
        "shortName": "泽普",
        "letter": "Z",
        "cityCode": "0998",
        "pinyin": "Zepu"
    },
    {
        "id": "653125",
        "name": "莎车县",
        "parentId": "653100",
        "shortName": "莎车",
        "letter": "S",
        "cityCode": "0998",
        "pinyin": "Shache"
    },
    {
        "id": "653126",
        "name": "叶城县",
        "parentId": "653100",
        "shortName": "叶城",
        "letter": "Y",
        "cityCode": "0998",
        "pinyin": "Yecheng"
    },
    {
        "id": "653127",
        "name": "麦盖提县",
        "parentId": "653100",
        "shortName": "麦盖提",
        "letter": "M",
        "cityCode": "0998",
        "pinyin": "Maigaiti"
    },
    {
        "id": "653128",
        "name": "岳普湖县",
        "parentId": "653100",
        "shortName": "岳普湖",
        "letter": "Y",
        "cityCode": "0998",
        "pinyin": "Yuepuhu"
    },
    {
        "id": "653129",
        "name": "伽师县",
        "parentId": "653100",
        "shortName": "伽师",
        "letter": "J",
        "cityCode": "0998",
        "pinyin": "Jiashi"
    },
    {
        "id": "653130",
        "name": "巴楚县",
        "parentId": "653100",
        "shortName": "巴楚",
        "letter": "B",
        "cityCode": "0998",
        "pinyin": "Bachu"
    },
    {
        "id": "653131",
        "name": "塔什库尔干塔吉克自治县",
        "parentId": "653100",
        "shortName": "塔什库尔干塔吉克",
        "letter": "T",
        "cityCode": "0998",
        "pinyin": "Tashikuergantajike"
    },
    {
        "id": "653200",
        "name": "和田地区",
        "parentId": "650000",
        "shortName": "和田",
        "letter": "H",
        "cityCode": "0903",
        "pinyin": "Hotan"
    },
    {
        "id": "653201",
        "name": "和田市",
        "parentId": "653200",
        "shortName": "和田市",
        "letter": "H",
        "cityCode": "0903",
        "pinyin": "Hetianshi"
    },
    {
        "id": "653221",
        "name": "和田县",
        "parentId": "653200",
        "shortName": "和田县",
        "letter": "H",
        "cityCode": "0903",
        "pinyin": "Hetianxian"
    },
    {
        "id": "653222",
        "name": "墨玉县",
        "parentId": "653200",
        "shortName": "墨玉",
        "letter": "M",
        "cityCode": "0903",
        "pinyin": "Moyu"
    },
    {
        "id": "653223",
        "name": "皮山县",
        "parentId": "653200",
        "shortName": "皮山",
        "letter": "P",
        "cityCode": "0903",
        "pinyin": "Pishan"
    },
    {
        "id": "653224",
        "name": "洛浦县",
        "parentId": "653200",
        "shortName": "洛浦",
        "letter": "L",
        "cityCode": "0903",
        "pinyin": "Luopu"
    },
    {
        "id": "653225",
        "name": "策勒县",
        "parentId": "653200",
        "shortName": "策勒",
        "letter": "C",
        "cityCode": "0903",
        "pinyin": "Cele"
    },
    {
        "id": "653226",
        "name": "于田县",
        "parentId": "653200",
        "shortName": "于田",
        "letter": "Y",
        "cityCode": "0903",
        "pinyin": "Yutian"
    },
    {
        "id": "653227",
        "name": "民丰县",
        "parentId": "653200",
        "shortName": "民丰",
        "letter": "M",
        "cityCode": "0903",
        "pinyin": "Minfeng"
    },
    {
        "id": "654000",
        "name": "伊犁哈萨克自治州",
        "parentId": "650000",
        "shortName": "伊犁",
        "letter": "I",
        "cityCode": "0999",
        "pinyin": "Ili"
    },
    {
        "id": "654002",
        "name": "伊宁市",
        "parentId": "654000",
        "shortName": "伊宁",
        "letter": "Y",
        "cityCode": "0999",
        "pinyin": "Yining"
    },
    {
        "id": "654003",
        "name": "奎屯市",
        "parentId": "654000",
        "shortName": "奎屯",
        "letter": "K",
        "cityCode": "0992",
        "pinyin": "Kuitun"
    },
    {
        "id": "654004",
        "name": "霍尔果斯市",
        "parentId": "654000",
        "shortName": "霍尔果斯",
        "letter": "H",
        "cityCode": "0999",
        "pinyin": "Huoerguosi"
    },
    {
        "id": "654021",
        "name": "伊宁县",
        "parentId": "654000",
        "shortName": "伊宁",
        "letter": "Y",
        "cityCode": "0999",
        "pinyin": "Yining"
    },
    {
        "id": "654022",
        "name": "察布查尔锡伯自治县",
        "parentId": "654000",
        "shortName": "察布查尔锡伯",
        "letter": "C",
        "cityCode": "0999",
        "pinyin": "Chabuchaerxibo"
    },
    {
        "id": "654023",
        "name": "霍城县",
        "parentId": "654000",
        "shortName": "霍城",
        "letter": "H",
        "cityCode": "0999",
        "pinyin": "Huocheng"
    },
    {
        "id": "654024",
        "name": "巩留县",
        "parentId": "654000",
        "shortName": "巩留",
        "letter": "G",
        "cityCode": "0999",
        "pinyin": "Gongliu"
    },
    {
        "id": "654025",
        "name": "新源县",
        "parentId": "654000",
        "shortName": "新源",
        "letter": "X",
        "cityCode": "0999",
        "pinyin": "Xinyuan"
    },
    {
        "id": "654026",
        "name": "昭苏县",
        "parentId": "654000",
        "shortName": "昭苏",
        "letter": "Z",
        "cityCode": "0999",
        "pinyin": "Zhaosu"
    },
    {
        "id": "654027",
        "name": "特克斯县",
        "parentId": "654000",
        "shortName": "特克斯",
        "letter": "T",
        "cityCode": "0999",
        "pinyin": "Tekesi"
    },
    {
        "id": "654028",
        "name": "尼勒克县",
        "parentId": "654000",
        "shortName": "尼勒克",
        "letter": "N",
        "cityCode": "0999",
        "pinyin": "Nileke"
    },
    {
        "id": "654200",
        "name": "塔城地区",
        "parentId": "650000",
        "shortName": "塔城",
        "letter": "Q",
        "cityCode": "0901",
        "pinyin": "Qoqek"
    },
    {
        "id": "654201",
        "name": "塔城市",
        "parentId": "654200",
        "shortName": "塔城",
        "letter": "T",
        "cityCode": "0901",
        "pinyin": "Tacheng"
    },
    {
        "id": "654202",
        "name": "乌苏市",
        "parentId": "654200",
        "shortName": "乌苏",
        "letter": "W",
        "cityCode": "0992",
        "pinyin": "Wusu"
    },
    {
        "id": "654221",
        "name": "额敏县",
        "parentId": "654200",
        "shortName": "额敏",
        "letter": "E",
        "cityCode": "0901",
        "pinyin": "Emin"
    },
    {
        "id": "654223",
        "name": "沙湾县",
        "parentId": "654200",
        "shortName": "沙湾",
        "letter": "S",
        "cityCode": "0993",
        "pinyin": "Shawan"
    },
    {
        "id": "654224",
        "name": "托里县",
        "parentId": "654200",
        "shortName": "托里",
        "letter": "T",
        "cityCode": "0901",
        "pinyin": "Tuoli"
    },
    {
        "id": "654225",
        "name": "裕民县",
        "parentId": "654200",
        "shortName": "裕民",
        "letter": "Y",
        "cityCode": "0901",
        "pinyin": "Yumin"
    },
    {
        "id": "654226",
        "name": "和布克赛尔蒙古自治县",
        "parentId": "654200",
        "shortName": "和布克赛尔",
        "letter": "H",
        "cityCode": "0990",
        "pinyin": "Hebukesaier"
    },
    {
        "id": "654300",
        "name": "阿勒泰地区",
        "parentId": "650000",
        "shortName": "阿勒泰",
        "letter": "A",
        "cityCode": "0906",
        "pinyin": "Altay"
    },
    {
        "id": "654301",
        "name": "阿勒泰市",
        "parentId": "654300",
        "shortName": "阿勒泰",
        "letter": "A",
        "cityCode": "0906",
        "pinyin": "Aletai"
    },
    {
        "id": "654321",
        "name": "布尔津县",
        "parentId": "654300",
        "shortName": "布尔津",
        "letter": "B",
        "cityCode": "0906",
        "pinyin": "Buerjin"
    },
    {
        "id": "654322",
        "name": "富蕴县",
        "parentId": "654300",
        "shortName": "富蕴",
        "letter": "F",
        "cityCode": "0906",
        "pinyin": "Fuyun"
    },
    {
        "id": "654323",
        "name": "福海县",
        "parentId": "654300",
        "shortName": "福海",
        "letter": "F",
        "cityCode": "0906",
        "pinyin": "Fuhai"
    },
    {
        "id": "654324",
        "name": "哈巴河县",
        "parentId": "654300",
        "shortName": "哈巴河",
        "letter": "H",
        "cityCode": "0906",
        "pinyin": "Habahe"
    },
    {
        "id": "654325",
        "name": "青河县",
        "parentId": "654300",
        "shortName": "青河",
        "letter": "Q",
        "cityCode": "0906",
        "pinyin": "Qinghe"
    },
    {
        "id": "654326",
        "name": "吉木乃县",
        "parentId": "654300",
        "shortName": "吉木乃",
        "letter": "J",
        "cityCode": "0906",
        "pinyin": "Jimunai"
    },
    {
        "id": "659000",
        "name": "直辖县级",
        "parentId": "650000",
        "shortName": "直辖县",
        "letter": "",
        "cityCode": "",
        "pinyin": ""
    },
    {
        "id": "659001",
        "name": "石河子市",
        "parentId": "659000",
        "shortName": "石河子",
        "letter": "S",
        "cityCode": "0993",
        "pinyin": "Shihezi"
    },
    {
        "id": "659002",
        "name": "阿拉尔市",
        "parentId": "659000",
        "shortName": "阿拉尔",
        "letter": "A",
        "cityCode": "0997",
        "pinyin": "Aral"
    },
    {
        "id": "659003",
        "name": "图木舒克市",
        "parentId": "659000",
        "shortName": "图木舒克",
        "letter": "T",
        "cityCode": "0998",
        "pinyin": "Tumxuk"
    },
    {
        "id": "659004",
        "name": "五家渠市",
        "parentId": "659000",
        "shortName": "五家渠",
        "letter": "W",
        "cityCode": "0994",
        "pinyin": "Wujiaqu"
    },
    {
        "id": "659005",
        "name": "北屯市",
        "parentId": "659000",
        "shortName": "北屯",
        "letter": "B",
        "cityCode": "0906",
        "pinyin": "Beitun"
    },
    {
        "id": "659006",
        "name": "铁门关市",
        "parentId": "659000",
        "shortName": "铁门关",
        "letter": "T",
        "cityCode": "0906",
        "pinyin": "Tiemenguan"
    },
    {
        "id": "659007",
        "name": "双河市",
        "parentId": "659000",
        "shortName": "双河",
        "letter": "S",
        "cityCode": "0909",
        "pinyin": "Shuanghe"
    },
    {
        "id": "710000",
        "name": "台湾省",
        "parentId": "100000",
        "shortName": "台湾",
        "letter": "T",
        "cityCode": "",
        "pinyin": "Taiwan"
    },
    {
        "id": "710100",
        "name": "台北市",
        "parentId": "710000",
        "shortName": "台北",
        "letter": "T",
        "cityCode": "02",
        "pinyin": "Taipei"
    },
    {
        "id": "710101",
        "name": "松山区",
        "parentId": "710100",
        "shortName": "松山",
        "letter": "S",
        "cityCode": "02",
        "pinyin": "Songshan"
    },
    {
        "id": "710102",
        "name": "信义区",
        "parentId": "710100",
        "shortName": "信义",
        "letter": "X",
        "cityCode": "02",
        "pinyin": "Xinyi"
    },
    {
        "id": "710103",
        "name": "大安区",
        "parentId": "710100",
        "shortName": "大安",
        "letter": "D",
        "cityCode": "02",
        "pinyin": "Da'an"
    },
    {
        "id": "710104",
        "name": "中山区",
        "parentId": "710100",
        "shortName": "中山",
        "letter": "Z",
        "cityCode": "02",
        "pinyin": "Zhongshan"
    },
    {
        "id": "710105",
        "name": "中正区",
        "parentId": "710100",
        "shortName": "中正",
        "letter": "Z",
        "cityCode": "02",
        "pinyin": "Zhongzheng"
    },
    {
        "id": "710106",
        "name": "大同区",
        "parentId": "710100",
        "shortName": "大同",
        "letter": "D",
        "cityCode": "02",
        "pinyin": "Datong"
    },
    {
        "id": "710107",
        "name": "万华区",
        "parentId": "710100",
        "shortName": "万华",
        "letter": "W",
        "cityCode": "02",
        "pinyin": "Wanhua"
    },
    {
        "id": "710108",
        "name": "文山区",
        "parentId": "710100",
        "shortName": "文山",
        "letter": "W",
        "cityCode": "02",
        "pinyin": "Wenshan"
    },
    {
        "id": "710109",
        "name": "南港区",
        "parentId": "710100",
        "shortName": "南港",
        "letter": "N",
        "cityCode": "02",
        "pinyin": "Nangang"
    },
    {
        "id": "710110",
        "name": "内湖区",
        "parentId": "710100",
        "shortName": "内湖",
        "letter": "N",
        "cityCode": "02",
        "pinyin": "Nahu"
    },
    {
        "id": "710111",
        "name": "士林区",
        "parentId": "710100",
        "shortName": "士林",
        "letter": "S",
        "cityCode": "02",
        "pinyin": "Shilin"
    },
    {
        "id": "710112",
        "name": "北投区",
        "parentId": "710100",
        "shortName": "北投",
        "letter": "B",
        "cityCode": "02",
        "pinyin": "Beitou"
    },
    {
        "id": "710200",
        "name": "高雄市",
        "parentId": "710000",
        "shortName": "高雄",
        "letter": "K",
        "cityCode": "07",
        "pinyin": "Kaohsiung"
    },
    {
        "id": "710201",
        "name": "盐埕区",
        "parentId": "710200",
        "shortName": "盐埕",
        "letter": "Y",
        "cityCode": "07",
        "pinyin": "Yancheng"
    },
    {
        "id": "710202",
        "name": "鼓山区",
        "parentId": "710200",
        "shortName": "鼓山",
        "letter": "G",
        "cityCode": "07",
        "pinyin": "Gushan"
    },
    {
        "id": "710203",
        "name": "左营区",
        "parentId": "710200",
        "shortName": "左营",
        "letter": "Z",
        "cityCode": "07",
        "pinyin": "Zuoying"
    },
    {
        "id": "710204",
        "name": "楠梓区",
        "parentId": "710200",
        "shortName": "楠梓",
        "letter": "N",
        "cityCode": "07",
        "pinyin": "Nanzi"
    },
    {
        "id": "710205",
        "name": "三民区",
        "parentId": "710200",
        "shortName": "三民",
        "letter": "S",
        "cityCode": "07",
        "pinyin": "Sanmin"
    },
    {
        "id": "710206",
        "name": "新兴区",
        "parentId": "710200",
        "shortName": "新兴",
        "letter": "X",
        "cityCode": "07",
        "pinyin": "Xinxing"
    },
    {
        "id": "710207",
        "name": "前金区",
        "parentId": "710200",
        "shortName": "前金",
        "letter": "Q",
        "cityCode": "07",
        "pinyin": "Qianjin"
    },
    {
        "id": "710208",
        "name": "苓雅区",
        "parentId": "710200",
        "shortName": "苓雅",
        "letter": "L",
        "cityCode": "07",
        "pinyin": "Lingya"
    },
    {
        "id": "710209",
        "name": "前镇区",
        "parentId": "710200",
        "shortName": "前镇",
        "letter": "Q",
        "cityCode": "07",
        "pinyin": "Qianzhen"
    },
    {
        "id": "710210",
        "name": "旗津区",
        "parentId": "710200",
        "shortName": "旗津",
        "letter": "Q",
        "cityCode": "07",
        "pinyin": "Qijin"
    },
    {
        "id": "710211",
        "name": "小港区",
        "parentId": "710200",
        "shortName": "小港",
        "letter": "X",
        "cityCode": "07",
        "pinyin": "Xiaogang"
    },
    {
        "id": "710212",
        "name": "凤山区",
        "parentId": "710200",
        "shortName": "凤山",
        "letter": "F",
        "cityCode": "07",
        "pinyin": "Fengshan"
    },
    {
        "id": "710213",
        "name": "林园区",
        "parentId": "710200",
        "shortName": "林园",
        "letter": "L",
        "cityCode": "07",
        "pinyin": "Linyuan"
    },
    {
        "id": "710214",
        "name": "大寮区",
        "parentId": "710200",
        "shortName": "大寮",
        "letter": "D",
        "cityCode": "07",
        "pinyin": "Daliao"
    },
    {
        "id": "710215",
        "name": "大树区",
        "parentId": "710200",
        "shortName": "大树",
        "letter": "D",
        "cityCode": "07",
        "pinyin": "Dashu"
    },
    {
        "id": "710216",
        "name": "大社区",
        "parentId": "710200",
        "shortName": "大社",
        "letter": "D",
        "cityCode": "07",
        "pinyin": "Dashe"
    },
    {
        "id": "710217",
        "name": "仁武区",
        "parentId": "710200",
        "shortName": "仁武",
        "letter": "R",
        "cityCode": "07",
        "pinyin": "Renwu"
    },
    {
        "id": "710218",
        "name": "鸟松区",
        "parentId": "710200",
        "shortName": "鸟松",
        "letter": "N",
        "cityCode": "07",
        "pinyin": "Niaosong"
    },
    {
        "id": "710219",
        "name": "冈山区",
        "parentId": "710200",
        "shortName": "冈山",
        "letter": "G",
        "cityCode": "07",
        "pinyin": "Gangshan"
    },
    {
        "id": "710220",
        "name": "桥头区",
        "parentId": "710200",
        "shortName": "桥头",
        "letter": "Q",
        "cityCode": "07",
        "pinyin": "Qiaotou"
    },
    {
        "id": "710221",
        "name": "燕巢区",
        "parentId": "710200",
        "shortName": "燕巢",
        "letter": "Y",
        "cityCode": "07",
        "pinyin": "Yanchao"
    },
    {
        "id": "710222",
        "name": "田寮区",
        "parentId": "710200",
        "shortName": "田寮",
        "letter": "T",
        "cityCode": "07",
        "pinyin": "Tianliao"
    },
    {
        "id": "710223",
        "name": "阿莲区",
        "parentId": "710200",
        "shortName": "阿莲",
        "letter": "A",
        "cityCode": "07",
        "pinyin": "Alian"
    },
    {
        "id": "710224",
        "name": "路竹区",
        "parentId": "710200",
        "shortName": "路竹",
        "letter": "L",
        "cityCode": "07",
        "pinyin": "Luzhu"
    },
    {
        "id": "710225",
        "name": "湖内区",
        "parentId": "710200",
        "shortName": "湖内",
        "letter": "H",
        "cityCode": "07",
        "pinyin": "Huna"
    },
    {
        "id": "710226",
        "name": "茄萣区",
        "parentId": "710200",
        "shortName": "茄萣",
        "letter": "Q",
        "cityCode": "07",
        "pinyin": "Qieding"
    },
    {
        "id": "710227",
        "name": "永安区",
        "parentId": "710200",
        "shortName": "永安",
        "letter": "Y",
        "cityCode": "07",
        "pinyin": "Yong'an"
    },
    {
        "id": "710228",
        "name": "弥陀区",
        "parentId": "710200",
        "shortName": "弥陀",
        "letter": "M",
        "cityCode": "07",
        "pinyin": "Mituo"
    },
    {
        "id": "710229",
        "name": "梓官区",
        "parentId": "710200",
        "shortName": "梓官",
        "letter": "Z",
        "cityCode": "07",
        "pinyin": "Ziguan"
    },
    {
        "id": "710230",
        "name": "旗山区",
        "parentId": "710200",
        "shortName": "旗山",
        "letter": "Q",
        "cityCode": "07",
        "pinyin": "Qishan"
    },
    {
        "id": "710231",
        "name": "美浓区",
        "parentId": "710200",
        "shortName": "美浓",
        "letter": "M",
        "cityCode": "07",
        "pinyin": "Meinong"
    },
    {
        "id": "710232",
        "name": "六龟区",
        "parentId": "710200",
        "shortName": "六龟",
        "letter": "L",
        "cityCode": "07",
        "pinyin": "Liugui"
    },
    {
        "id": "710233",
        "name": "甲仙区",
        "parentId": "710200",
        "shortName": "甲仙",
        "letter": "J",
        "cityCode": "07",
        "pinyin": "Jiaxian"
    },
    {
        "id": "710234",
        "name": "杉林区",
        "parentId": "710200",
        "shortName": "杉林",
        "letter": "S",
        "cityCode": "07",
        "pinyin": "Shanlin"
    },
    {
        "id": "710235",
        "name": "内门区",
        "parentId": "710200",
        "shortName": "内门",
        "letter": "N",
        "cityCode": "07",
        "pinyin": "Namen"
    },
    {
        "id": "710236",
        "name": "茂林区",
        "parentId": "710200",
        "shortName": "茂林",
        "letter": "M",
        "cityCode": "07",
        "pinyin": "Maolin"
    },
    {
        "id": "710237",
        "name": "桃源区",
        "parentId": "710200",
        "shortName": "桃源",
        "letter": "T",
        "cityCode": "07",
        "pinyin": "Taoyuan"
    },
    {
        "id": "710238",
        "name": "那玛夏区",
        "parentId": "710200",
        "shortName": "那玛夏",
        "letter": "N",
        "cityCode": "07",
        "pinyin": "Namaxia"
    },
    {
        "id": "710300",
        "name": "基隆市",
        "parentId": "710000",
        "shortName": "基隆",
        "letter": "K",
        "cityCode": "02",
        "pinyin": "Keelung"
    },
    {
        "id": "710301",
        "name": "中正区",
        "parentId": "710300",
        "shortName": "中正",
        "letter": "Z",
        "cityCode": "02",
        "pinyin": "Zhongzheng"
    },
    {
        "id": "710302",
        "name": "七堵区",
        "parentId": "710300",
        "shortName": "七堵",
        "letter": "Q",
        "cityCode": "02",
        "pinyin": "Qidu"
    },
    {
        "id": "710303",
        "name": "暖暖区",
        "parentId": "710300",
        "shortName": "暖暖",
        "letter": "N",
        "cityCode": "02",
        "pinyin": "Nuannuan"
    },
    {
        "id": "710304",
        "name": "仁爱区",
        "parentId": "710300",
        "shortName": "仁爱",
        "letter": "R",
        "cityCode": "02",
        "pinyin": "Renai"
    },
    {
        "id": "710305",
        "name": "中山区",
        "parentId": "710300",
        "shortName": "中山",
        "letter": "Z",
        "cityCode": "02",
        "pinyin": "Zhongshan"
    },
    {
        "id": "710306",
        "name": "安乐区",
        "parentId": "710300",
        "shortName": "安乐",
        "letter": "A",
        "cityCode": "02",
        "pinyin": "Anle"
    },
    {
        "id": "710307",
        "name": "信义区",
        "parentId": "710300",
        "shortName": "信义",
        "letter": "X",
        "cityCode": "02",
        "pinyin": "Xinyi"
    },
    {
        "id": "710400",
        "name": "台中市",
        "parentId": "710000",
        "shortName": "台中",
        "letter": "T",
        "cityCode": "04",
        "pinyin": "Taichung"
    },
    {
        "id": "710401",
        "name": "中区",
        "parentId": "710400",
        "shortName": "中区",
        "letter": "Z",
        "cityCode": "04",
        "pinyin": "Zhongqu"
    },
    {
        "id": "710402",
        "name": "东区",
        "parentId": "710400",
        "shortName": "东区",
        "letter": "D",
        "cityCode": "04",
        "pinyin": "Dongqu"
    },
    {
        "id": "710403",
        "name": "南区",
        "parentId": "710400",
        "shortName": "南区",
        "letter": "N",
        "cityCode": "04",
        "pinyin": "Nanqu"
    },
    {
        "id": "710404",
        "name": "西区",
        "parentId": "710400",
        "shortName": "西区",
        "letter": "X",
        "cityCode": "04",
        "pinyin": "Xiqu"
    },
    {
        "id": "710405",
        "name": "北区",
        "parentId": "710400",
        "shortName": "北区",
        "letter": "B",
        "cityCode": "04",
        "pinyin": "Beiqu"
    },
    {
        "id": "710406",
        "name": "西屯区",
        "parentId": "710400",
        "shortName": "西屯",
        "letter": "X",
        "cityCode": "04",
        "pinyin": "Xitun"
    },
    {
        "id": "710407",
        "name": "南屯区",
        "parentId": "710400",
        "shortName": "南屯",
        "letter": "N",
        "cityCode": "04",
        "pinyin": "Nantun"
    },
    {
        "id": "710408",
        "name": "北屯区",
        "parentId": "710400",
        "shortName": "北屯",
        "letter": "B",
        "cityCode": "04",
        "pinyin": "Beitun"
    },
    {
        "id": "710409",
        "name": "丰原区",
        "parentId": "710400",
        "shortName": "丰原",
        "letter": "F",
        "cityCode": "04",
        "pinyin": "Fengyuan"
    },
    {
        "id": "710410",
        "name": "东势区",
        "parentId": "710400",
        "shortName": "东势",
        "letter": "D",
        "cityCode": "04",
        "pinyin": "Dongshi"
    },
    {
        "id": "710411",
        "name": "大甲区",
        "parentId": "710400",
        "shortName": "大甲",
        "letter": "D",
        "cityCode": "04",
        "pinyin": "Dajia"
    },
    {
        "id": "710412",
        "name": "清水区",
        "parentId": "710400",
        "shortName": "清水",
        "letter": "Q",
        "cityCode": "04",
        "pinyin": "Qingshui"
    },
    {
        "id": "710413",
        "name": "沙鹿区",
        "parentId": "710400",
        "shortName": "沙鹿",
        "letter": "S",
        "cityCode": "04",
        "pinyin": "Shalu"
    },
    {
        "id": "710414",
        "name": "梧栖区",
        "parentId": "710400",
        "shortName": "梧栖",
        "letter": "W",
        "cityCode": "04",
        "pinyin": "Wuqi"
    },
    {
        "id": "710415",
        "name": "后里区",
        "parentId": "710400",
        "shortName": "后里",
        "letter": "H",
        "cityCode": "04",
        "pinyin": "Houli"
    },
    {
        "id": "710416",
        "name": "神冈区",
        "parentId": "710400",
        "shortName": "神冈",
        "letter": "S",
        "cityCode": "04",
        "pinyin": "Shengang"
    },
    {
        "id": "710417",
        "name": "潭子区",
        "parentId": "710400",
        "shortName": "潭子",
        "letter": "T",
        "cityCode": "04",
        "pinyin": "Tanzi"
    },
    {
        "id": "710418",
        "name": "大雅区",
        "parentId": "710400",
        "shortName": "大雅",
        "letter": "D",
        "cityCode": "04",
        "pinyin": "Daya"
    },
    {
        "id": "710419",
        "name": "新社区",
        "parentId": "710400",
        "shortName": "新社",
        "letter": "X",
        "cityCode": "04",
        "pinyin": "Xinshe"
    },
    {
        "id": "710420",
        "name": "石冈区",
        "parentId": "710400",
        "shortName": "石冈",
        "letter": "S",
        "cityCode": "04",
        "pinyin": "Shigang"
    },
    {
        "id": "710421",
        "name": "外埔区",
        "parentId": "710400",
        "shortName": "外埔",
        "letter": "W",
        "cityCode": "04",
        "pinyin": "Waipu"
    },
    {
        "id": "710422",
        "name": "大安区",
        "parentId": "710400",
        "shortName": "大安",
        "letter": "D",
        "cityCode": "04",
        "pinyin": "Da'an"
    },
    {
        "id": "710423",
        "name": "乌日区",
        "parentId": "710400",
        "shortName": "乌日",
        "letter": "W",
        "cityCode": "04",
        "pinyin": "Wuri"
    },
    {
        "id": "710424",
        "name": "大肚区",
        "parentId": "710400",
        "shortName": "大肚",
        "letter": "D",
        "cityCode": "04",
        "pinyin": "Dadu"
    },
    {
        "id": "710425",
        "name": "龙井区",
        "parentId": "710400",
        "shortName": "龙井",
        "letter": "L",
        "cityCode": "04",
        "pinyin": "Longjing"
    },
    {
        "id": "710426",
        "name": "雾峰区",
        "parentId": "710400",
        "shortName": "雾峰",
        "letter": "W",
        "cityCode": "04",
        "pinyin": "Wufeng"
    },
    {
        "id": "710427",
        "name": "太平区",
        "parentId": "710400",
        "shortName": "太平",
        "letter": "T",
        "cityCode": "04",
        "pinyin": "Taiping"
    },
    {
        "id": "710428",
        "name": "大里区",
        "parentId": "710400",
        "shortName": "大里",
        "letter": "D",
        "cityCode": "04",
        "pinyin": "Dali"
    },
    {
        "id": "710429",
        "name": "和平区",
        "parentId": "710400",
        "shortName": "和平",
        "letter": "H",
        "cityCode": "04",
        "pinyin": "Heping"
    },
    {
        "id": "710500",
        "name": "台南市",
        "parentId": "710000",
        "shortName": "台南",
        "letter": "T",
        "cityCode": "06",
        "pinyin": "Tainan"
    },
    {
        "id": "710501",
        "name": "东区",
        "parentId": "710500",
        "shortName": "东区",
        "letter": "D",
        "cityCode": "06",
        "pinyin": "Dongqu"
    },
    {
        "id": "710502",
        "name": "南区",
        "parentId": "710500",
        "shortName": "南区",
        "letter": "N",
        "cityCode": "06",
        "pinyin": "Nanqu"
    },
    {
        "id": "710504",
        "name": "北区",
        "parentId": "710500",
        "shortName": "北区",
        "letter": "B",
        "cityCode": "06",
        "pinyin": "Beiqu"
    },
    {
        "id": "710506",
        "name": "安南区",
        "parentId": "710500",
        "shortName": "安南",
        "letter": "A",
        "cityCode": "06",
        "pinyin": "Annan"
    },
    {
        "id": "710507",
        "name": "安平区",
        "parentId": "710500",
        "shortName": "安平",
        "letter": "A",
        "cityCode": "06",
        "pinyin": "Anping"
    },
    {
        "id": "710508",
        "name": "中西区",
        "parentId": "710500",
        "shortName": "中西",
        "letter": "Z",
        "cityCode": "06",
        "pinyin": "Zhongxi"
    },
    {
        "id": "710509",
        "name": "新营区",
        "parentId": "710500",
        "shortName": "新营",
        "letter": "X",
        "cityCode": "06",
        "pinyin": "Xinying"
    },
    {
        "id": "710510",
        "name": "盐水区",
        "parentId": "710500",
        "shortName": "盐水",
        "letter": "Y",
        "cityCode": "06",
        "pinyin": "Yanshui"
    },
    {
        "id": "710511",
        "name": "白河区",
        "parentId": "710500",
        "shortName": "白河",
        "letter": "B",
        "cityCode": "06",
        "pinyin": "Baihe"
    },
    {
        "id": "710512",
        "name": "柳营区",
        "parentId": "710500",
        "shortName": "柳营",
        "letter": "L",
        "cityCode": "06",
        "pinyin": "Liuying"
    },
    {
        "id": "710513",
        "name": "后壁区",
        "parentId": "710500",
        "shortName": "后壁",
        "letter": "H",
        "cityCode": "06",
        "pinyin": "Houbi"
    },
    {
        "id": "710514",
        "name": "东山区",
        "parentId": "710500",
        "shortName": "东山",
        "letter": "D",
        "cityCode": "06",
        "pinyin": "Dongshan"
    },
    {
        "id": "710515",
        "name": "麻豆区",
        "parentId": "710500",
        "shortName": "麻豆",
        "letter": "M",
        "cityCode": "06",
        "pinyin": "Madou"
    },
    {
        "id": "710516",
        "name": "下营区",
        "parentId": "710500",
        "shortName": "下营",
        "letter": "X",
        "cityCode": "06",
        "pinyin": "Xiaying"
    },
    {
        "id": "710517",
        "name": "六甲区",
        "parentId": "710500",
        "shortName": "六甲",
        "letter": "L",
        "cityCode": "06",
        "pinyin": "Liujia"
    },
    {
        "id": "710518",
        "name": "官田区",
        "parentId": "710500",
        "shortName": "官田",
        "letter": "G",
        "cityCode": "06",
        "pinyin": "Guantian"
    },
    {
        "id": "710519",
        "name": "大内区",
        "parentId": "710500",
        "shortName": "大内",
        "letter": "D",
        "cityCode": "06",
        "pinyin": "Dana"
    },
    {
        "id": "710520",
        "name": "佳里区",
        "parentId": "710500",
        "shortName": "佳里",
        "letter": "J",
        "cityCode": "06",
        "pinyin": "Jiali"
    },
    {
        "id": "710521",
        "name": "学甲区",
        "parentId": "710500",
        "shortName": "学甲",
        "letter": "X",
        "cityCode": "06",
        "pinyin": "Xuejia"
    },
    {
        "id": "710522",
        "name": "西港区",
        "parentId": "710500",
        "shortName": "西港",
        "letter": "X",
        "cityCode": "06",
        "pinyin": "Xigang"
    },
    {
        "id": "710523",
        "name": "七股区",
        "parentId": "710500",
        "shortName": "七股",
        "letter": "Q",
        "cityCode": "06",
        "pinyin": "Qigu"
    },
    {
        "id": "710524",
        "name": "将军区",
        "parentId": "710500",
        "shortName": "将军",
        "letter": "J",
        "cityCode": "06",
        "pinyin": "Jiangjun"
    },
    {
        "id": "710525",
        "name": "北门区",
        "parentId": "710500",
        "shortName": "北门",
        "letter": "B",
        "cityCode": "06",
        "pinyin": "Beimen"
    },
    {
        "id": "710526",
        "name": "新化区",
        "parentId": "710500",
        "shortName": "新化",
        "letter": "X",
        "cityCode": "06",
        "pinyin": "Xinhua"
    },
    {
        "id": "710527",
        "name": "善化区",
        "parentId": "710500",
        "shortName": "善化",
        "letter": "S",
        "cityCode": "06",
        "pinyin": "Shanhua"
    },
    {
        "id": "710528",
        "name": "新市区",
        "parentId": "710500",
        "shortName": "新市",
        "letter": "X",
        "cityCode": "06",
        "pinyin": "Xinshi"
    },
    {
        "id": "710529",
        "name": "安定区",
        "parentId": "710500",
        "shortName": "安定",
        "letter": "A",
        "cityCode": "06",
        "pinyin": "Anding"
    },
    {
        "id": "710530",
        "name": "山上区",
        "parentId": "710500",
        "shortName": "山上",
        "letter": "S",
        "cityCode": "06",
        "pinyin": "Shanshang"
    },
    {
        "id": "710531",
        "name": "玉井区",
        "parentId": "710500",
        "shortName": "玉井",
        "letter": "Y",
        "cityCode": "06",
        "pinyin": "Yujing"
    },
    {
        "id": "710532",
        "name": "楠西区",
        "parentId": "710500",
        "shortName": "楠西",
        "letter": "N",
        "cityCode": "06",
        "pinyin": "Nanxi"
    },
    {
        "id": "710533",
        "name": "南化区",
        "parentId": "710500",
        "shortName": "南化",
        "letter": "N",
        "cityCode": "06",
        "pinyin": "Nanhua"
    },
    {
        "id": "710534",
        "name": "左镇区",
        "parentId": "710500",
        "shortName": "左镇",
        "letter": "Z",
        "cityCode": "06",
        "pinyin": "Zuozhen"
    },
    {
        "id": "710535",
        "name": "仁德区",
        "parentId": "710500",
        "shortName": "仁德",
        "letter": "R",
        "cityCode": "06",
        "pinyin": "Rende"
    },
    {
        "id": "710536",
        "name": "归仁区",
        "parentId": "710500",
        "shortName": "归仁",
        "letter": "G",
        "cityCode": "06",
        "pinyin": "Guiren"
    },
    {
        "id": "710537",
        "name": "关庙区",
        "parentId": "710500",
        "shortName": "关庙",
        "letter": "G",
        "cityCode": "06",
        "pinyin": "Guanmiao"
    },
    {
        "id": "710538",
        "name": "龙崎区",
        "parentId": "710500",
        "shortName": "龙崎",
        "letter": "L",
        "cityCode": "06",
        "pinyin": "Longqi"
    },
    {
        "id": "710539",
        "name": "永康区",
        "parentId": "710500",
        "shortName": "永康",
        "letter": "Y",
        "cityCode": "06",
        "pinyin": "Yongkang"
    },
    {
        "id": "710600",
        "name": "新竹市",
        "parentId": "710000",
        "shortName": "新竹",
        "letter": "H",
        "cityCode": "03",
        "pinyin": "Hsinchu"
    },
    {
        "id": "710601",
        "name": "东区",
        "parentId": "710600",
        "shortName": "东区",
        "letter": "D",
        "cityCode": "03",
        "pinyin": "Dongqu"
    },
    {
        "id": "710602",
        "name": "北区",
        "parentId": "710600",
        "shortName": "北区",
        "letter": "B",
        "cityCode": "03",
        "pinyin": "Beiqu"
    },
    {
        "id": "710603",
        "name": "香山区",
        "parentId": "710600",
        "shortName": "香山",
        "letter": "X",
        "cityCode": "03",
        "pinyin": "Xiangshan"
    },
    {
        "id": "710700",
        "name": "嘉义市",
        "parentId": "710000",
        "shortName": "嘉义",
        "letter": "C",
        "cityCode": "05",
        "pinyin": "Chiayi"
    },
    {
        "id": "710701",
        "name": "东区",
        "parentId": "710700",
        "shortName": "东区",
        "letter": "D",
        "cityCode": "05",
        "pinyin": "Dongqu"
    },
    {
        "id": "710702",
        "name": "西区",
        "parentId": "710700",
        "shortName": "西区",
        "letter": "X",
        "cityCode": "05",
        "pinyin": "Xiqu"
    },
    {
        "id": "710800",
        "name": "新北市",
        "parentId": "710000",
        "shortName": "新北",
        "letter": "N",
        "cityCode": "02",
        "pinyin": "New Taipei"
    },
    {
        "id": "710801",
        "name": "板桥区",
        "parentId": "710800",
        "shortName": "板桥",
        "letter": "B",
        "cityCode": "02",
        "pinyin": "Banqiao"
    },
    {
        "id": "710802",
        "name": "三重区",
        "parentId": "710800",
        "shortName": "三重",
        "letter": "S",
        "cityCode": "02",
        "pinyin": "Sanzhong"
    },
    {
        "id": "710803",
        "name": "中和区",
        "parentId": "710800",
        "shortName": "中和",
        "letter": "Z",
        "cityCode": "02",
        "pinyin": "Zhonghe"
    },
    {
        "id": "710804",
        "name": "永和区",
        "parentId": "710800",
        "shortName": "永和",
        "letter": "Y",
        "cityCode": "02",
        "pinyin": "Yonghe"
    },
    {
        "id": "710805",
        "name": "新庄区",
        "parentId": "710800",
        "shortName": "新庄",
        "letter": "X",
        "cityCode": "02",
        "pinyin": "Xinzhuang"
    },
    {
        "id": "710806",
        "name": "新店区",
        "parentId": "710800",
        "shortName": "新店",
        "letter": "X",
        "cityCode": "02",
        "pinyin": "Xindian"
    },
    {
        "id": "710807",
        "name": "树林区",
        "parentId": "710800",
        "shortName": "树林",
        "letter": "S",
        "cityCode": "02",
        "pinyin": "Shulin"
    },
    {
        "id": "710808",
        "name": "莺歌区",
        "parentId": "710800",
        "shortName": "莺歌",
        "letter": "Y",
        "cityCode": "02",
        "pinyin": "Yingge"
    },
    {
        "id": "710809",
        "name": "三峡区",
        "parentId": "710800",
        "shortName": "三峡",
        "letter": "S",
        "cityCode": "02",
        "pinyin": "Sanxia"
    },
    {
        "id": "710810",
        "name": "淡水区",
        "parentId": "710800",
        "shortName": "淡水",
        "letter": "D",
        "cityCode": "02",
        "pinyin": "Danshui"
    },
    {
        "id": "710811",
        "name": "汐止区",
        "parentId": "710800",
        "shortName": "汐止",
        "letter": "X",
        "cityCode": "02",
        "pinyin": "Xizhi"
    },
    {
        "id": "710812",
        "name": "瑞芳区",
        "parentId": "710800",
        "shortName": "瑞芳",
        "letter": "R",
        "cityCode": "02",
        "pinyin": "Ruifang"
    },
    {
        "id": "710813",
        "name": "土城区",
        "parentId": "710800",
        "shortName": "土城",
        "letter": "T",
        "cityCode": "02",
        "pinyin": "Tucheng"
    },
    {
        "id": "710814",
        "name": "芦洲区",
        "parentId": "710800",
        "shortName": "芦洲",
        "letter": "L",
        "cityCode": "02",
        "pinyin": "Luzhou"
    },
    {
        "id": "710815",
        "name": "五股区",
        "parentId": "710800",
        "shortName": "五股",
        "letter": "W",
        "cityCode": "02",
        "pinyin": "Wugu"
    },
    {
        "id": "710816",
        "name": "泰山区",
        "parentId": "710800",
        "shortName": "泰山",
        "letter": "T",
        "cityCode": "02",
        "pinyin": "Taishan"
    },
    {
        "id": "710817",
        "name": "林口区",
        "parentId": "710800",
        "shortName": "林口",
        "letter": "L",
        "cityCode": "02",
        "pinyin": "Linkou"
    },
    {
        "id": "710818",
        "name": "深坑区",
        "parentId": "710800",
        "shortName": "深坑",
        "letter": "S",
        "cityCode": "02",
        "pinyin": "Shenkeng"
    },
    {
        "id": "710819",
        "name": "石碇区",
        "parentId": "710800",
        "shortName": "石碇",
        "letter": "S",
        "cityCode": "02",
        "pinyin": "Shiding"
    },
    {
        "id": "710820",
        "name": "坪林区",
        "parentId": "710800",
        "shortName": "坪林",
        "letter": "P",
        "cityCode": "02",
        "pinyin": "Pinglin"
    },
    {
        "id": "710821",
        "name": "三芝区",
        "parentId": "710800",
        "shortName": "三芝",
        "letter": "S",
        "cityCode": "02",
        "pinyin": "Sanzhi"
    },
    {
        "id": "710822",
        "name": "石门区",
        "parentId": "710800",
        "shortName": "石门",
        "letter": "S",
        "cityCode": "02",
        "pinyin": "Shimen"
    },
    {
        "id": "710823",
        "name": "八里区",
        "parentId": "710800",
        "shortName": "八里",
        "letter": "B",
        "cityCode": "02",
        "pinyin": "Bali"
    },
    {
        "id": "710824",
        "name": "平溪区",
        "parentId": "710800",
        "shortName": "平溪",
        "letter": "P",
        "cityCode": "02",
        "pinyin": "Pingxi"
    },
    {
        "id": "710825",
        "name": "双溪区",
        "parentId": "710800",
        "shortName": "双溪",
        "letter": "S",
        "cityCode": "02",
        "pinyin": "Shuangxi"
    },
    {
        "id": "710826",
        "name": "贡寮区",
        "parentId": "710800",
        "shortName": "贡寮",
        "letter": "G",
        "cityCode": "02",
        "pinyin": "Gongliao"
    },
    {
        "id": "710827",
        "name": "金山区",
        "parentId": "710800",
        "shortName": "金山",
        "letter": "J",
        "cityCode": "02",
        "pinyin": "Jinshan"
    },
    {
        "id": "710828",
        "name": "万里区",
        "parentId": "710800",
        "shortName": "万里",
        "letter": "W",
        "cityCode": "02",
        "pinyin": "Wanli"
    },
    {
        "id": "710829",
        "name": "乌来区",
        "parentId": "710800",
        "shortName": "乌来",
        "letter": "W",
        "cityCode": "02",
        "pinyin": "Wulai"
    },
    {
        "id": "712200",
        "name": "宜兰县",
        "parentId": "710000",
        "shortName": "宜兰",
        "letter": "Y",
        "cityCode": "03",
        "pinyin": "Yilan"
    },
    {
        "id": "712201",
        "name": "宜兰市",
        "parentId": "712200",
        "shortName": "宜兰",
        "letter": "Y",
        "cityCode": "03",
        "pinyin": "Yilan"
    },
    {
        "id": "712221",
        "name": "罗东镇",
        "parentId": "712200",
        "shortName": "罗东",
        "letter": "L",
        "cityCode": "03",
        "pinyin": "Luodong"
    },
    {
        "id": "712222",
        "name": "苏澳镇",
        "parentId": "712200",
        "shortName": "苏澳",
        "letter": "S",
        "cityCode": "03",
        "pinyin": "Suao"
    },
    {
        "id": "712223",
        "name": "头城镇",
        "parentId": "712200",
        "shortName": "头城",
        "letter": "T",
        "cityCode": "03",
        "pinyin": "Toucheng"
    },
    {
        "id": "712224",
        "name": "礁溪乡",
        "parentId": "712200",
        "shortName": "礁溪",
        "letter": "J",
        "cityCode": "03",
        "pinyin": "Jiaoxi"
    },
    {
        "id": "712225",
        "name": "壮围乡",
        "parentId": "712200",
        "shortName": "壮围",
        "letter": "Z",
        "cityCode": "03",
        "pinyin": "Zhuangwei"
    },
    {
        "id": "712226",
        "name": "员山乡",
        "parentId": "712200",
        "shortName": "员山",
        "letter": "Y",
        "cityCode": "03",
        "pinyin": "Yuanshan"
    },
    {
        "id": "712227",
        "name": "冬山乡",
        "parentId": "712200",
        "shortName": "冬山",
        "letter": "D",
        "cityCode": "03",
        "pinyin": "Dongshan"
    },
    {
        "id": "712228",
        "name": "五结乡",
        "parentId": "712200",
        "shortName": "五结",
        "letter": "W",
        "cityCode": "03",
        "pinyin": "Wujie"
    },
    {
        "id": "712229",
        "name": "三星乡",
        "parentId": "712200",
        "shortName": "三星",
        "letter": "S",
        "cityCode": "03",
        "pinyin": "Sanxing"
    },
    {
        "id": "712230",
        "name": "大同乡",
        "parentId": "712200",
        "shortName": "大同",
        "letter": "D",
        "cityCode": "03",
        "pinyin": "Datong"
    },
    {
        "id": "712231",
        "name": "南澳乡",
        "parentId": "712200",
        "shortName": "南澳",
        "letter": "N",
        "cityCode": "03",
        "pinyin": "Nanao"
    },
    {
        "id": "712300",
        "name": "桃园县",
        "parentId": "710000",
        "shortName": "桃园",
        "letter": "T",
        "cityCode": "03",
        "pinyin": "Taoyuan"
    },
    {
        "id": "712301",
        "name": "桃园市",
        "parentId": "712300",
        "shortName": "桃园",
        "letter": "T",
        "cityCode": "03",
        "pinyin": "Taoyuan"
    },
    {
        "id": "712302",
        "name": "中坜市",
        "parentId": "712300",
        "shortName": "中坜",
        "letter": "Z",
        "cityCode": "03",
        "pinyin": "Zhongli"
    },
    {
        "id": "712303",
        "name": "平镇市",
        "parentId": "712300",
        "shortName": "平镇",
        "letter": "P",
        "cityCode": "03",
        "pinyin": "Pingzhen"
    },
    {
        "id": "712304",
        "name": "八德市",
        "parentId": "712300",
        "shortName": "八德",
        "letter": "B",
        "cityCode": "03",
        "pinyin": "Bade"
    },
    {
        "id": "712305",
        "name": "杨梅市",
        "parentId": "712300",
        "shortName": "杨梅",
        "letter": "Y",
        "cityCode": "03",
        "pinyin": "Yangmei"
    },
    {
        "id": "712306",
        "name": "芦竹市",
        "parentId": "712300",
        "shortName": "芦竹",
        "letter": "L",
        "cityCode": "03",
        "pinyin": "Luzhu"
    },
    {
        "id": "712321",
        "name": "大溪镇",
        "parentId": "712300",
        "shortName": "大溪",
        "letter": "D",
        "cityCode": "03",
        "pinyin": "Daxi"
    },
    {
        "id": "712324",
        "name": "大园乡",
        "parentId": "712300",
        "shortName": "大园",
        "letter": "D",
        "cityCode": "03",
        "pinyin": "Dayuan"
    },
    {
        "id": "712325",
        "name": "龟山乡",
        "parentId": "712300",
        "shortName": "龟山",
        "letter": "G",
        "cityCode": "03",
        "pinyin": "Guishan"
    },
    {
        "id": "712327",
        "name": "龙潭乡",
        "parentId": "712300",
        "shortName": "龙潭",
        "letter": "L",
        "cityCode": "03",
        "pinyin": "Longtan"
    },
    {
        "id": "712329",
        "name": "新屋乡",
        "parentId": "712300",
        "shortName": "新屋",
        "letter": "X",
        "cityCode": "03",
        "pinyin": "Xinwu"
    },
    {
        "id": "712330",
        "name": "观音乡",
        "parentId": "712300",
        "shortName": "观音",
        "letter": "G",
        "cityCode": "03",
        "pinyin": "Guanyin"
    },
    {
        "id": "712331",
        "name": "复兴乡",
        "parentId": "712300",
        "shortName": "复兴",
        "letter": "F",
        "cityCode": "03",
        "pinyin": "Fuxing"
    },
    {
        "id": "712400",
        "name": "新竹县",
        "parentId": "710000",
        "shortName": "新竹",
        "letter": "H",
        "cityCode": "03",
        "pinyin": "Hsinchu"
    },
    {
        "id": "712401",
        "name": "竹北市",
        "parentId": "712400",
        "shortName": "竹北",
        "letter": "Z",
        "cityCode": "03",
        "pinyin": "Zhubei"
    },
    {
        "id": "712421",
        "name": "竹东镇",
        "parentId": "712400",
        "shortName": "竹东",
        "letter": "Z",
        "cityCode": "03",
        "pinyin": "Zhudong"
    },
    {
        "id": "712422",
        "name": "新埔镇",
        "parentId": "712400",
        "shortName": "新埔",
        "letter": "X",
        "cityCode": "03",
        "pinyin": "Xinpu"
    },
    {
        "id": "712423",
        "name": "关西镇",
        "parentId": "712400",
        "shortName": "关西",
        "letter": "G",
        "cityCode": "03",
        "pinyin": "Guanxi"
    },
    {
        "id": "712424",
        "name": "湖口乡",
        "parentId": "712400",
        "shortName": "湖口",
        "letter": "H",
        "cityCode": "03",
        "pinyin": "Hukou"
    },
    {
        "id": "712425",
        "name": "新丰乡",
        "parentId": "712400",
        "shortName": "新丰",
        "letter": "X",
        "cityCode": "03",
        "pinyin": "Xinfeng"
    },
    {
        "id": "712426",
        "name": "芎林乡",
        "parentId": "712400",
        "shortName": "芎林",
        "letter": "X",
        "cityCode": "03",
        "pinyin": "Xionglin"
    },
    {
        "id": "712427",
        "name": "横山乡",
        "parentId": "712400",
        "shortName": "横山",
        "letter": "H",
        "cityCode": "03",
        "pinyin": "Hengshan"
    },
    {
        "id": "712428",
        "name": "北埔乡",
        "parentId": "712400",
        "shortName": "北埔",
        "letter": "B",
        "cityCode": "03",
        "pinyin": "Beipu"
    },
    {
        "id": "712429",
        "name": "宝山乡",
        "parentId": "712400",
        "shortName": "宝山",
        "letter": "B",
        "cityCode": "03",
        "pinyin": "Baoshan"
    },
    {
        "id": "712430",
        "name": "峨眉乡",
        "parentId": "712400",
        "shortName": "峨眉",
        "letter": "E",
        "cityCode": "03",
        "pinyin": "Emei"
    },
    {
        "id": "712431",
        "name": "尖石乡",
        "parentId": "712400",
        "shortName": "尖石",
        "letter": "J",
        "cityCode": "03",
        "pinyin": "Jianshi"
    },
    {
        "id": "712432",
        "name": "五峰乡",
        "parentId": "712400",
        "shortName": "五峰",
        "letter": "W",
        "cityCode": "03",
        "pinyin": "Wufeng"
    },
    {
        "id": "712500",
        "name": "苗栗县",
        "parentId": "710000",
        "shortName": "苗栗",
        "letter": "M",
        "cityCode": "037",
        "pinyin": "Miaoli"
    },
    {
        "id": "712501",
        "name": "苗栗市",
        "parentId": "712500",
        "shortName": "苗栗",
        "letter": "M",
        "cityCode": "037",
        "pinyin": "Miaoli"
    },
    {
        "id": "712521",
        "name": "苑里镇",
        "parentId": "712500",
        "shortName": "苑里",
        "letter": "Y",
        "cityCode": "037",
        "pinyin": "Yuanli"
    },
    {
        "id": "712522",
        "name": "通霄镇",
        "parentId": "712500",
        "shortName": "通霄",
        "letter": "T",
        "cityCode": "037",
        "pinyin": "Tongxiao"
    },
    {
        "id": "712523",
        "name": "竹南镇",
        "parentId": "712500",
        "shortName": "竹南",
        "letter": "Z",
        "cityCode": "037",
        "pinyin": "Zhunan"
    },
    {
        "id": "712524",
        "name": "头份镇",
        "parentId": "712500",
        "shortName": "头份",
        "letter": "T",
        "cityCode": "037",
        "pinyin": "Toufen"
    },
    {
        "id": "712525",
        "name": "后龙镇",
        "parentId": "712500",
        "shortName": "后龙",
        "letter": "H",
        "cityCode": "037",
        "pinyin": "Houlong"
    },
    {
        "id": "712526",
        "name": "卓兰镇",
        "parentId": "712500",
        "shortName": "卓兰",
        "letter": "Z",
        "cityCode": "037",
        "pinyin": "Zhuolan"
    },
    {
        "id": "712527",
        "name": "大湖乡",
        "parentId": "712500",
        "shortName": "大湖",
        "letter": "D",
        "cityCode": "037",
        "pinyin": "Dahu"
    },
    {
        "id": "712528",
        "name": "公馆乡",
        "parentId": "712500",
        "shortName": "公馆",
        "letter": "G",
        "cityCode": "037",
        "pinyin": "Gongguan"
    },
    {
        "id": "712529",
        "name": "铜锣乡",
        "parentId": "712500",
        "shortName": "铜锣",
        "letter": "T",
        "cityCode": "037",
        "pinyin": "Tongluo"
    },
    {
        "id": "712530",
        "name": "南庄乡",
        "parentId": "712500",
        "shortName": "南庄",
        "letter": "N",
        "cityCode": "037",
        "pinyin": "Nanzhuang"
    },
    {
        "id": "712531",
        "name": "头屋乡",
        "parentId": "712500",
        "shortName": "头屋",
        "letter": "T",
        "cityCode": "037",
        "pinyin": "Touwu"
    },
    {
        "id": "712532",
        "name": "三义乡",
        "parentId": "712500",
        "shortName": "三义",
        "letter": "S",
        "cityCode": "037",
        "pinyin": "Sanyi"
    },
    {
        "id": "712533",
        "name": "西湖乡",
        "parentId": "712500",
        "shortName": "西湖",
        "letter": "X",
        "cityCode": "037",
        "pinyin": "Xihu"
    },
    {
        "id": "712534",
        "name": "造桥乡",
        "parentId": "712500",
        "shortName": "造桥",
        "letter": "Z",
        "cityCode": "037",
        "pinyin": "Zaoqiao"
    },
    {
        "id": "712535",
        "name": "三湾乡",
        "parentId": "712500",
        "shortName": "三湾",
        "letter": "S",
        "cityCode": "037",
        "pinyin": "Sanwan"
    },
    {
        "id": "712536",
        "name": "狮潭乡",
        "parentId": "712500",
        "shortName": "狮潭",
        "letter": "S",
        "cityCode": "037",
        "pinyin": "Shitan"
    },
    {
        "id": "712537",
        "name": "泰安乡",
        "parentId": "712500",
        "shortName": "泰安",
        "letter": "T",
        "cityCode": "037",
        "pinyin": "Tai'an"
    },
    {
        "id": "712700",
        "name": "彰化县",
        "parentId": "710000",
        "shortName": "彰化",
        "letter": "C",
        "cityCode": "04",
        "pinyin": "Changhua"
    },
    {
        "id": "712701",
        "name": "彰化市",
        "parentId": "712700",
        "shortName": "彰化市",
        "letter": "Z",
        "cityCode": "04",
        "pinyin": "Zhanghuashi"
    },
    {
        "id": "712721",
        "name": "鹿港镇",
        "parentId": "712700",
        "shortName": "鹿港",
        "letter": "L",
        "cityCode": "04",
        "pinyin": "Lugang"
    },
    {
        "id": "712722",
        "name": "和美镇",
        "parentId": "712700",
        "shortName": "和美",
        "letter": "H",
        "cityCode": "04",
        "pinyin": "Hemei"
    },
    {
        "id": "712723",
        "name": "线西乡",
        "parentId": "712700",
        "shortName": "线西",
        "letter": "X",
        "cityCode": "04",
        "pinyin": "Xianxi"
    },
    {
        "id": "712724",
        "name": "伸港乡",
        "parentId": "712700",
        "shortName": "伸港",
        "letter": "S",
        "cityCode": "04",
        "pinyin": "Shengang"
    },
    {
        "id": "712725",
        "name": "福兴乡",
        "parentId": "712700",
        "shortName": "福兴",
        "letter": "F",
        "cityCode": "04",
        "pinyin": "Fuxing"
    },
    {
        "id": "712726",
        "name": "秀水乡",
        "parentId": "712700",
        "shortName": "秀水",
        "letter": "X",
        "cityCode": "04",
        "pinyin": "Xiushui"
    },
    {
        "id": "712727",
        "name": "花坛乡",
        "parentId": "712700",
        "shortName": "花坛",
        "letter": "H",
        "cityCode": "04",
        "pinyin": "Huatan"
    },
    {
        "id": "712728",
        "name": "芬园乡",
        "parentId": "712700",
        "shortName": "芬园",
        "letter": "F",
        "cityCode": "04",
        "pinyin": "Fenyuan"
    },
    {
        "id": "712729",
        "name": "员林镇",
        "parentId": "712700",
        "shortName": "员林",
        "letter": "Y",
        "cityCode": "04",
        "pinyin": "Yuanlin"
    },
    {
        "id": "712730",
        "name": "溪湖镇",
        "parentId": "712700",
        "shortName": "溪湖",
        "letter": "X",
        "cityCode": "04",
        "pinyin": "Xihu"
    },
    {
        "id": "712731",
        "name": "田中镇",
        "parentId": "712700",
        "shortName": "田中",
        "letter": "T",
        "cityCode": "04",
        "pinyin": "Tianzhong"
    },
    {
        "id": "712732",
        "name": "大村乡",
        "parentId": "712700",
        "shortName": "大村",
        "letter": "D",
        "cityCode": "04",
        "pinyin": "Dacun"
    },
    {
        "id": "712733",
        "name": "埔盐乡",
        "parentId": "712700",
        "shortName": "埔盐",
        "letter": "P",
        "cityCode": "04",
        "pinyin": "Puyan"
    },
    {
        "id": "712734",
        "name": "埔心乡",
        "parentId": "712700",
        "shortName": "埔心",
        "letter": "P",
        "cityCode": "04",
        "pinyin": "Puxin"
    },
    {
        "id": "712735",
        "name": "永靖乡",
        "parentId": "712700",
        "shortName": "永靖",
        "letter": "Y",
        "cityCode": "04",
        "pinyin": "Yongjing"
    },
    {
        "id": "712736",
        "name": "社头乡",
        "parentId": "712700",
        "shortName": "社头",
        "letter": "S",
        "cityCode": "04",
        "pinyin": "Shetou"
    },
    {
        "id": "712737",
        "name": "二水乡",
        "parentId": "712700",
        "shortName": "二水",
        "letter": "E",
        "cityCode": "04",
        "pinyin": "Ershui"
    },
    {
        "id": "712738",
        "name": "北斗镇",
        "parentId": "712700",
        "shortName": "北斗",
        "letter": "B",
        "cityCode": "04",
        "pinyin": "Beidou"
    },
    {
        "id": "712739",
        "name": "二林镇",
        "parentId": "712700",
        "shortName": "二林",
        "letter": "E",
        "cityCode": "04",
        "pinyin": "Erlin"
    },
    {
        "id": "712740",
        "name": "田尾乡",
        "parentId": "712700",
        "shortName": "田尾",
        "letter": "T",
        "cityCode": "04",
        "pinyin": "Tianwei"
    },
    {
        "id": "712741",
        "name": "埤头乡",
        "parentId": "712700",
        "shortName": "埤头",
        "letter": "P",
        "cityCode": "04",
        "pinyin": "Pitou"
    },
    {
        "id": "712742",
        "name": "芳苑乡",
        "parentId": "712700",
        "shortName": "芳苑",
        "letter": "F",
        "cityCode": "04",
        "pinyin": "Fangyuan"
    },
    {
        "id": "712743",
        "name": "大城乡",
        "parentId": "712700",
        "shortName": "大城",
        "letter": "D",
        "cityCode": "04",
        "pinyin": "Dacheng"
    },
    {
        "id": "712744",
        "name": "竹塘乡",
        "parentId": "712700",
        "shortName": "竹塘",
        "letter": "Z",
        "cityCode": "04",
        "pinyin": "Zhutang"
    },
    {
        "id": "712745",
        "name": "溪州乡",
        "parentId": "712700",
        "shortName": "溪州",
        "letter": "X",
        "cityCode": "04",
        "pinyin": "Xizhou"
    },
    {
        "id": "712800",
        "name": "南投县",
        "parentId": "710000",
        "shortName": "南投",
        "letter": "N",
        "cityCode": "049",
        "pinyin": "Nantou"
    },
    {
        "id": "712801",
        "name": "南投市",
        "parentId": "712800",
        "shortName": "南投市",
        "letter": "N",
        "cityCode": "049",
        "pinyin": "Nantoushi"
    },
    {
        "id": "712821",
        "name": "埔里镇",
        "parentId": "712800",
        "shortName": "埔里",
        "letter": "P",
        "cityCode": "049",
        "pinyin": "Puli"
    },
    {
        "id": "712822",
        "name": "草屯镇",
        "parentId": "712800",
        "shortName": "草屯",
        "letter": "C",
        "cityCode": "049",
        "pinyin": "Caotun"
    },
    {
        "id": "712823",
        "name": "竹山镇",
        "parentId": "712800",
        "shortName": "竹山",
        "letter": "Z",
        "cityCode": "049",
        "pinyin": "Zhushan"
    },
    {
        "id": "712824",
        "name": "集集镇",
        "parentId": "712800",
        "shortName": "集集",
        "letter": "J",
        "cityCode": "049",
        "pinyin": "Jiji"
    },
    {
        "id": "712825",
        "name": "名间乡",
        "parentId": "712800",
        "shortName": "名间",
        "letter": "M",
        "cityCode": "049",
        "pinyin": "Mingjian"
    },
    {
        "id": "712826",
        "name": "鹿谷乡",
        "parentId": "712800",
        "shortName": "鹿谷",
        "letter": "L",
        "cityCode": "049",
        "pinyin": "Lugu"
    },
    {
        "id": "712827",
        "name": "中寮乡",
        "parentId": "712800",
        "shortName": "中寮",
        "letter": "Z",
        "cityCode": "049",
        "pinyin": "Zhongliao"
    },
    {
        "id": "712828",
        "name": "鱼池乡",
        "parentId": "712800",
        "shortName": "鱼池",
        "letter": "Y",
        "cityCode": "049",
        "pinyin": "Yuchi"
    },
    {
        "id": "712829",
        "name": "国姓乡",
        "parentId": "712800",
        "shortName": "国姓",
        "letter": "G",
        "cityCode": "049",
        "pinyin": "Guoxing"
    },
    {
        "id": "712830",
        "name": "水里乡",
        "parentId": "712800",
        "shortName": "水里",
        "letter": "S",
        "cityCode": "049",
        "pinyin": "Shuili"
    },
    {
        "id": "712831",
        "name": "信义乡",
        "parentId": "712800",
        "shortName": "信义",
        "letter": "X",
        "cityCode": "049",
        "pinyin": "Xinyi"
    },
    {
        "id": "712832",
        "name": "仁爱乡",
        "parentId": "712800",
        "shortName": "仁爱",
        "letter": "R",
        "cityCode": "049",
        "pinyin": "Renai"
    },
    {
        "id": "712900",
        "name": "云林县",
        "parentId": "710000",
        "shortName": "云林",
        "letter": "Y",
        "cityCode": "05",
        "pinyin": "Yunlin"
    },
    {
        "id": "712901",
        "name": "斗六市",
        "parentId": "712900",
        "shortName": "斗六",
        "letter": "D",
        "cityCode": "05",
        "pinyin": "Douliu"
    },
    {
        "id": "712921",
        "name": "斗南镇",
        "parentId": "712900",
        "shortName": "斗南",
        "letter": "D",
        "cityCode": "05",
        "pinyin": "Dounan"
    },
    {
        "id": "712922",
        "name": "虎尾镇",
        "parentId": "712900",
        "shortName": "虎尾",
        "letter": "H",
        "cityCode": "05",
        "pinyin": "Huwei"
    },
    {
        "id": "712923",
        "name": "西螺镇",
        "parentId": "712900",
        "shortName": "西螺",
        "letter": "X",
        "cityCode": "05",
        "pinyin": "Xiluo"
    },
    {
        "id": "712924",
        "name": "土库镇",
        "parentId": "712900",
        "shortName": "土库",
        "letter": "T",
        "cityCode": "05",
        "pinyin": "Tuku"
    },
    {
        "id": "712925",
        "name": "北港镇",
        "parentId": "712900",
        "shortName": "北港",
        "letter": "B",
        "cityCode": "05",
        "pinyin": "Beigang"
    },
    {
        "id": "712926",
        "name": "古坑乡",
        "parentId": "712900",
        "shortName": "古坑",
        "letter": "G",
        "cityCode": "05",
        "pinyin": "Gukeng"
    },
    {
        "id": "712927",
        "name": "大埤乡",
        "parentId": "712900",
        "shortName": "大埤",
        "letter": "D",
        "cityCode": "05",
        "pinyin": "Dapi"
    },
    {
        "id": "712928",
        "name": "莿桐乡",
        "parentId": "712900",
        "shortName": "莿桐",
        "letter": "C",
        "cityCode": "05",
        "pinyin": "Citong"
    },
    {
        "id": "712929",
        "name": "林内乡",
        "parentId": "712900",
        "shortName": "林内",
        "letter": "L",
        "cityCode": "05",
        "pinyin": "Linna"
    },
    {
        "id": "712930",
        "name": "二仑乡",
        "parentId": "712900",
        "shortName": "二仑",
        "letter": "E",
        "cityCode": "05",
        "pinyin": "Erlun"
    },
    {
        "id": "712931",
        "name": "仑背乡",
        "parentId": "712900",
        "shortName": "仑背",
        "letter": "L",
        "cityCode": "05",
        "pinyin": "Lunbei"
    },
    {
        "id": "712932",
        "name": "麦寮乡",
        "parentId": "712900",
        "shortName": "麦寮",
        "letter": "M",
        "cityCode": "05",
        "pinyin": "Mailiao"
    },
    {
        "id": "712933",
        "name": "东势乡",
        "parentId": "712900",
        "shortName": "东势",
        "letter": "D",
        "cityCode": "05",
        "pinyin": "Dongshi"
    },
    {
        "id": "712934",
        "name": "褒忠乡",
        "parentId": "712900",
        "shortName": "褒忠",
        "letter": "B",
        "cityCode": "05",
        "pinyin": "Baozhong"
    },
    {
        "id": "712935",
        "name": "台西乡",
        "parentId": "712900",
        "shortName": "台西",
        "letter": "T",
        "cityCode": "05",
        "pinyin": "Taixi"
    },
    {
        "id": "712936",
        "name": "元长乡",
        "parentId": "712900",
        "shortName": "元长",
        "letter": "Y",
        "cityCode": "05",
        "pinyin": "Yuanchang"
    },
    {
        "id": "712937",
        "name": "四湖乡",
        "parentId": "712900",
        "shortName": "四湖",
        "letter": "S",
        "cityCode": "05",
        "pinyin": "Sihu"
    },
    {
        "id": "712938",
        "name": "口湖乡",
        "parentId": "712900",
        "shortName": "口湖",
        "letter": "K",
        "cityCode": "05",
        "pinyin": "Kouhu"
    },
    {
        "id": "712939",
        "name": "水林乡",
        "parentId": "712900",
        "shortName": "水林",
        "letter": "S",
        "cityCode": "05",
        "pinyin": "Shuilin"
    },
    {
        "id": "713000",
        "name": "嘉义县",
        "parentId": "710000",
        "shortName": "嘉义",
        "letter": "C",
        "cityCode": "05",
        "pinyin": "Chiayi"
    },
    {
        "id": "713001",
        "name": "太保市",
        "parentId": "713000",
        "shortName": "太保",
        "letter": "T",
        "cityCode": "05",
        "pinyin": "Taibao"
    },
    {
        "id": "713002",
        "name": "朴子市",
        "parentId": "713000",
        "shortName": "朴子",
        "letter": "P",
        "cityCode": "05",
        "pinyin": "Puzi"
    },
    {
        "id": "713023",
        "name": "布袋镇",
        "parentId": "713000",
        "shortName": "布袋",
        "letter": "B",
        "cityCode": "05",
        "pinyin": "Budai"
    },
    {
        "id": "713024",
        "name": "大林镇",
        "parentId": "713000",
        "shortName": "大林",
        "letter": "D",
        "cityCode": "05",
        "pinyin": "Dalin"
    },
    {
        "id": "713025",
        "name": "民雄乡",
        "parentId": "713000",
        "shortName": "民雄",
        "letter": "M",
        "cityCode": "05",
        "pinyin": "Minxiong"
    },
    {
        "id": "713026",
        "name": "溪口乡",
        "parentId": "713000",
        "shortName": "溪口",
        "letter": "X",
        "cityCode": "05",
        "pinyin": "Xikou"
    },
    {
        "id": "713027",
        "name": "新港乡",
        "parentId": "713000",
        "shortName": "新港",
        "letter": "X",
        "cityCode": "05",
        "pinyin": "Xingang"
    },
    {
        "id": "713028",
        "name": "六脚乡",
        "parentId": "713000",
        "shortName": "六脚",
        "letter": "L",
        "cityCode": "05",
        "pinyin": "Liujiao"
    },
    {
        "id": "713029",
        "name": "东石乡",
        "parentId": "713000",
        "shortName": "东石",
        "letter": "D",
        "cityCode": "05",
        "pinyin": "Dongshi"
    },
    {
        "id": "713030",
        "name": "义竹乡",
        "parentId": "713000",
        "shortName": "义竹",
        "letter": "Y",
        "cityCode": "05",
        "pinyin": "Yizhu"
    },
    {
        "id": "713031",
        "name": "鹿草乡",
        "parentId": "713000",
        "shortName": "鹿草",
        "letter": "L",
        "cityCode": "05",
        "pinyin": "Lucao"
    },
    {
        "id": "713032",
        "name": "水上乡",
        "parentId": "713000",
        "shortName": "水上",
        "letter": "S",
        "cityCode": "05",
        "pinyin": "Shuishang"
    },
    {
        "id": "713033",
        "name": "中埔乡",
        "parentId": "713000",
        "shortName": "中埔",
        "letter": "Z",
        "cityCode": "05",
        "pinyin": "Zhongpu"
    },
    {
        "id": "713034",
        "name": "竹崎乡",
        "parentId": "713000",
        "shortName": "竹崎",
        "letter": "Z",
        "cityCode": "05",
        "pinyin": "Zhuqi"
    },
    {
        "id": "713035",
        "name": "梅山乡",
        "parentId": "713000",
        "shortName": "梅山",
        "letter": "M",
        "cityCode": "05",
        "pinyin": "Meishan"
    },
    {
        "id": "713036",
        "name": "番路乡",
        "parentId": "713000",
        "shortName": "番路",
        "letter": "F",
        "cityCode": "05",
        "pinyin": "Fanlu"
    },
    {
        "id": "713037",
        "name": "大埔乡",
        "parentId": "713000",
        "shortName": "大埔",
        "letter": "D",
        "cityCode": "05",
        "pinyin": "Dapu"
    },
    {
        "id": "713038",
        "name": "阿里山乡",
        "parentId": "713000",
        "shortName": "阿里山",
        "letter": "A",
        "cityCode": "05",
        "pinyin": "Alishan"
    },
    {
        "id": "713300",
        "name": "屏东县",
        "parentId": "710000",
        "shortName": "屏东",
        "letter": "P",
        "cityCode": "08",
        "pinyin": "Pingtung"
    },
    {
        "id": "713301",
        "name": "屏东市",
        "parentId": "713300",
        "shortName": "屏东",
        "letter": "P",
        "cityCode": "08",
        "pinyin": "Pingdong"
    },
    {
        "id": "713321",
        "name": "潮州镇",
        "parentId": "713300",
        "shortName": "潮州",
        "letter": "C",
        "cityCode": "08",
        "pinyin": "Chaozhou"
    },
    {
        "id": "713322",
        "name": "东港镇",
        "parentId": "713300",
        "shortName": "东港",
        "letter": "D",
        "cityCode": "08",
        "pinyin": "Donggang"
    },
    {
        "id": "713323",
        "name": "恒春镇",
        "parentId": "713300",
        "shortName": "恒春",
        "letter": "H",
        "cityCode": "08",
        "pinyin": "Hengchun"
    },
    {
        "id": "713324",
        "name": "万丹乡",
        "parentId": "713300",
        "shortName": "万丹",
        "letter": "W",
        "cityCode": "08",
        "pinyin": "Wandan"
    },
    {
        "id": "713325",
        "name": "长治乡",
        "parentId": "713300",
        "shortName": "长治",
        "letter": "C",
        "cityCode": "08",
        "pinyin": "Changzhi"
    },
    {
        "id": "713326",
        "name": "麟洛乡",
        "parentId": "713300",
        "shortName": "麟洛",
        "letter": "L",
        "cityCode": "08",
        "pinyin": "Linluo"
    },
    {
        "id": "713327",
        "name": "九如乡",
        "parentId": "713300",
        "shortName": "九如",
        "letter": "J",
        "cityCode": "08",
        "pinyin": "Jiuru"
    },
    {
        "id": "713328",
        "name": "里港乡",
        "parentId": "713300",
        "shortName": "里港",
        "letter": "L",
        "cityCode": "08",
        "pinyin": "Ligang"
    },
    {
        "id": "713329",
        "name": "盐埔乡",
        "parentId": "713300",
        "shortName": "盐埔",
        "letter": "Y",
        "cityCode": "08",
        "pinyin": "Yanpu"
    },
    {
        "id": "713330",
        "name": "高树乡",
        "parentId": "713300",
        "shortName": "高树",
        "letter": "G",
        "cityCode": "08",
        "pinyin": "Gaoshu"
    },
    {
        "id": "713331",
        "name": "万峦乡",
        "parentId": "713300",
        "shortName": "万峦",
        "letter": "W",
        "cityCode": "08",
        "pinyin": "Wanluan"
    },
    {
        "id": "713332",
        "name": "内埔乡",
        "parentId": "713300",
        "shortName": "内埔",
        "letter": "N",
        "cityCode": "08",
        "pinyin": "Napu"
    },
    {
        "id": "713333",
        "name": "竹田乡",
        "parentId": "713300",
        "shortName": "竹田",
        "letter": "Z",
        "cityCode": "08",
        "pinyin": "Zhutian"
    },
    {
        "id": "713334",
        "name": "新埤乡",
        "parentId": "713300",
        "shortName": "新埤",
        "letter": "X",
        "cityCode": "08",
        "pinyin": "Xinpi"
    },
    {
        "id": "713335",
        "name": "枋寮乡",
        "parentId": "713300",
        "shortName": "枋寮",
        "letter": "F",
        "cityCode": "08",
        "pinyin": "Fangliao"
    },
    {
        "id": "713336",
        "name": "新园乡",
        "parentId": "713300",
        "shortName": "新园",
        "letter": "X",
        "cityCode": "08",
        "pinyin": "Xinyuan"
    },
    {
        "id": "713337",
        "name": "崁顶乡",
        "parentId": "713300",
        "shortName": "崁顶",
        "letter": "K",
        "cityCode": "08",
        "pinyin": "Kanding"
    },
    {
        "id": "713338",
        "name": "林边乡",
        "parentId": "713300",
        "shortName": "林边",
        "letter": "L",
        "cityCode": "08",
        "pinyin": "Linbian"
    },
    {
        "id": "713339",
        "name": "南州乡",
        "parentId": "713300",
        "shortName": "南州",
        "letter": "N",
        "cityCode": "08",
        "pinyin": "Nanzhou"
    },
    {
        "id": "713340",
        "name": "佳冬乡",
        "parentId": "713300",
        "shortName": "佳冬",
        "letter": "J",
        "cityCode": "08",
        "pinyin": "Jiadong"
    },
    {
        "id": "713341",
        "name": "琉球乡",
        "parentId": "713300",
        "shortName": "琉球",
        "letter": "L",
        "cityCode": "08",
        "pinyin": "Liuqiu"
    },
    {
        "id": "713342",
        "name": "车城乡",
        "parentId": "713300",
        "shortName": "车城",
        "letter": "C",
        "cityCode": "08",
        "pinyin": "Checheng"
    },
    {
        "id": "713343",
        "name": "满州乡",
        "parentId": "713300",
        "shortName": "满州",
        "letter": "M",
        "cityCode": "08",
        "pinyin": "Manzhou"
    },
    {
        "id": "713344",
        "name": "枋山乡",
        "parentId": "713300",
        "shortName": "枋山",
        "letter": "F",
        "cityCode": "08",
        "pinyin": "Fangshan"
    },
    {
        "id": "713345",
        "name": "三地门乡",
        "parentId": "713300",
        "shortName": "三地门",
        "letter": "S",
        "cityCode": "08",
        "pinyin": "Sandimen"
    },
    {
        "id": "713346",
        "name": "雾台乡",
        "parentId": "713300",
        "shortName": "雾台",
        "letter": "W",
        "cityCode": "08",
        "pinyin": "Wutai"
    },
    {
        "id": "713347",
        "name": "玛家乡",
        "parentId": "713300",
        "shortName": "玛家",
        "letter": "M",
        "cityCode": "08",
        "pinyin": "Majia"
    },
    {
        "id": "713348",
        "name": "泰武乡",
        "parentId": "713300",
        "shortName": "泰武",
        "letter": "T",
        "cityCode": "08",
        "pinyin": "Taiwu"
    },
    {
        "id": "713349",
        "name": "来义乡",
        "parentId": "713300",
        "shortName": "来义",
        "letter": "L",
        "cityCode": "08",
        "pinyin": "Laiyi"
    },
    {
        "id": "713350",
        "name": "春日乡",
        "parentId": "713300",
        "shortName": "春日",
        "letter": "C",
        "cityCode": "08",
        "pinyin": "Chunri"
    },
    {
        "id": "713351",
        "name": "狮子乡",
        "parentId": "713300",
        "shortName": "狮子",
        "letter": "S",
        "cityCode": "08",
        "pinyin": "Shizi"
    },
    {
        "id": "713352",
        "name": "牡丹乡",
        "parentId": "713300",
        "shortName": "牡丹",
        "letter": "M",
        "cityCode": "08",
        "pinyin": "Mudan"
    },
    {
        "id": "713400",
        "name": "台东县",
        "parentId": "710000",
        "shortName": "台东",
        "letter": "T",
        "cityCode": "089",
        "pinyin": "Taitung"
    },
    {
        "id": "713401",
        "name": "台东市",
        "parentId": "713400",
        "shortName": "台东",
        "letter": "T",
        "cityCode": "089",
        "pinyin": "Taidong"
    },
    {
        "id": "713421",
        "name": "成功镇",
        "parentId": "713400",
        "shortName": "成功",
        "letter": "C",
        "cityCode": "089",
        "pinyin": "Chenggong"
    },
    {
        "id": "713422",
        "name": "关山镇",
        "parentId": "713400",
        "shortName": "关山",
        "letter": "G",
        "cityCode": "089",
        "pinyin": "Guanshan"
    },
    {
        "id": "713423",
        "name": "卑南乡",
        "parentId": "713400",
        "shortName": "卑南",
        "letter": "B",
        "cityCode": "089",
        "pinyin": "Beinan"
    },
    {
        "id": "713424",
        "name": "鹿野乡",
        "parentId": "713400",
        "shortName": "鹿野",
        "letter": "L",
        "cityCode": "089",
        "pinyin": "Luye"
    },
    {
        "id": "713425",
        "name": "池上乡",
        "parentId": "713400",
        "shortName": "池上",
        "letter": "C",
        "cityCode": "089",
        "pinyin": "Chishang"
    },
    {
        "id": "713426",
        "name": "东河乡",
        "parentId": "713400",
        "shortName": "东河",
        "letter": "D",
        "cityCode": "089",
        "pinyin": "Donghe"
    },
    {
        "id": "713427",
        "name": "长滨乡",
        "parentId": "713400",
        "shortName": "长滨",
        "letter": "C",
        "cityCode": "089",
        "pinyin": "Changbin"
    },
    {
        "id": "713428",
        "name": "太麻里乡",
        "parentId": "713400",
        "shortName": "太麻里",
        "letter": "T",
        "cityCode": "089",
        "pinyin": "Taimali"
    },
    {
        "id": "713429",
        "name": "大武乡",
        "parentId": "713400",
        "shortName": "大武",
        "letter": "D",
        "cityCode": "089",
        "pinyin": "Dawu"
    },
    {
        "id": "713430",
        "name": "绿岛乡",
        "parentId": "713400",
        "shortName": "绿岛",
        "letter": "L",
        "cityCode": "089",
        "pinyin": "Lvdao"
    },
    {
        "id": "713431",
        "name": "海端乡",
        "parentId": "713400",
        "shortName": "海端",
        "letter": "H",
        "cityCode": "089",
        "pinyin": "Haiduan"
    },
    {
        "id": "713432",
        "name": "延平乡",
        "parentId": "713400",
        "shortName": "延平",
        "letter": "Y",
        "cityCode": "089",
        "pinyin": "Yanping"
    },
    {
        "id": "713433",
        "name": "金峰乡",
        "parentId": "713400",
        "shortName": "金峰",
        "letter": "J",
        "cityCode": "089",
        "pinyin": "Jinfeng"
    },
    {
        "id": "713434",
        "name": "达仁乡",
        "parentId": "713400",
        "shortName": "达仁",
        "letter": "D",
        "cityCode": "089",
        "pinyin": "Daren"
    },
    {
        "id": "713435",
        "name": "兰屿乡",
        "parentId": "713400",
        "shortName": "兰屿",
        "letter": "L",
        "cityCode": "089",
        "pinyin": "Lanyu"
    },
    {
        "id": "713500",
        "name": "花莲县",
        "parentId": "710000",
        "shortName": "花莲",
        "letter": "H",
        "cityCode": "03",
        "pinyin": "Hualien"
    },
    {
        "id": "713501",
        "name": "花莲市",
        "parentId": "713500",
        "shortName": "花莲",
        "letter": "H",
        "cityCode": "03",
        "pinyin": "Hualian"
    },
    {
        "id": "713521",
        "name": "凤林镇",
        "parentId": "713500",
        "shortName": "凤林",
        "letter": "F",
        "cityCode": "03",
        "pinyin": "Fenglin"
    },
    {
        "id": "713522",
        "name": "玉里镇",
        "parentId": "713500",
        "shortName": "玉里",
        "letter": "Y",
        "cityCode": "03",
        "pinyin": "Yuli"
    },
    {
        "id": "713523",
        "name": "新城乡",
        "parentId": "713500",
        "shortName": "新城",
        "letter": "X",
        "cityCode": "03",
        "pinyin": "Xincheng"
    },
    {
        "id": "713524",
        "name": "吉安乡",
        "parentId": "713500",
        "shortName": "吉安",
        "letter": "J",
        "cityCode": "03",
        "pinyin": "Ji'an"
    },
    {
        "id": "713525",
        "name": "寿丰乡",
        "parentId": "713500",
        "shortName": "寿丰",
        "letter": "S",
        "cityCode": "03",
        "pinyin": "Shoufeng"
    },
    {
        "id": "713526",
        "name": "光复乡",
        "parentId": "713500",
        "shortName": "光复",
        "letter": "G",
        "cityCode": "03",
        "pinyin": "Guangfu"
    },
    {
        "id": "713527",
        "name": "丰滨乡",
        "parentId": "713500",
        "shortName": "丰滨",
        "letter": "F",
        "cityCode": "03",
        "pinyin": "Fengbin"
    },
    {
        "id": "713528",
        "name": "瑞穗乡",
        "parentId": "713500",
        "shortName": "瑞穗",
        "letter": "R",
        "cityCode": "03",
        "pinyin": "Ruisui"
    },
    {
        "id": "713529",
        "name": "富里乡",
        "parentId": "713500",
        "shortName": "富里",
        "letter": "F",
        "cityCode": "03",
        "pinyin": "Fuli"
    },
    {
        "id": "713530",
        "name": "秀林乡",
        "parentId": "713500",
        "shortName": "秀林",
        "letter": "X",
        "cityCode": "03",
        "pinyin": "Xiulin"
    },
    {
        "id": "713531",
        "name": "万荣乡",
        "parentId": "713500",
        "shortName": "万荣",
        "letter": "W",
        "cityCode": "03",
        "pinyin": "Wanrong"
    },
    {
        "id": "713532",
        "name": "卓溪乡",
        "parentId": "713500",
        "shortName": "卓溪",
        "letter": "Z",
        "cityCode": "03",
        "pinyin": "Zhuoxi"
    },
    {
        "id": "713600",
        "name": "澎湖县",
        "parentId": "710000",
        "shortName": "澎湖",
        "letter": "P",
        "cityCode": "06",
        "pinyin": "Penghu"
    },
    {
        "id": "713601",
        "name": "马公市",
        "parentId": "713600",
        "shortName": "马公",
        "letter": "M",
        "cityCode": "06",
        "pinyin": "Magong"
    },
    {
        "id": "713621",
        "name": "湖西乡",
        "parentId": "713600",
        "shortName": "湖西",
        "letter": "H",
        "cityCode": "06",
        "pinyin": "Huxi"
    },
    {
        "id": "713622",
        "name": "白沙乡",
        "parentId": "713600",
        "shortName": "白沙",
        "letter": "B",
        "cityCode": "06",
        "pinyin": "Baisha"
    },
    {
        "id": "713623",
        "name": "西屿乡",
        "parentId": "713600",
        "shortName": "西屿",
        "letter": "X",
        "cityCode": "06",
        "pinyin": "Xiyu"
    },
    {
        "id": "713624",
        "name": "望安乡",
        "parentId": "713600",
        "shortName": "望安",
        "letter": "W",
        "cityCode": "06",
        "pinyin": "Wang'an"
    },
    {
        "id": "713625",
        "name": "七美乡",
        "parentId": "713600",
        "shortName": "七美",
        "letter": "Q",
        "cityCode": "06",
        "pinyin": "Qimei"
    },
    {
        "id": "713700",
        "name": "金门县",
        "parentId": "710000",
        "shortName": "金门",
        "letter": "J",
        "cityCode": "082",
        "pinyin": "Jinmen"
    },
    {
        "id": "713701",
        "name": "金城镇",
        "parentId": "713700",
        "shortName": "金城",
        "letter": "J",
        "cityCode": "082",
        "pinyin": "Jincheng"
    },
    {
        "id": "713702",
        "name": "金湖镇",
        "parentId": "713700",
        "shortName": "金湖",
        "letter": "J",
        "cityCode": "082",
        "pinyin": "Jinhu"
    },
    {
        "id": "713703",
        "name": "金沙镇",
        "parentId": "713700",
        "shortName": "金沙",
        "letter": "J",
        "cityCode": "082",
        "pinyin": "Jinsha"
    },
    {
        "id": "713704",
        "name": "金宁乡",
        "parentId": "713700",
        "shortName": "金宁",
        "letter": "J",
        "cityCode": "082",
        "pinyin": "Jinning"
    },
    {
        "id": "713705",
        "name": "烈屿乡",
        "parentId": "713700",
        "shortName": "烈屿",
        "letter": "L",
        "cityCode": "082",
        "pinyin": "Lieyu"
    },
    {
        "id": "713706",
        "name": "乌丘乡",
        "parentId": "713700",
        "shortName": "乌丘",
        "letter": "W",
        "cityCode": "082",
        "pinyin": "Wuqiu"
    },
    {
        "id": "713800",
        "name": "连江县",
        "parentId": "710000",
        "shortName": "连江",
        "letter": "L",
        "cityCode": "0836",
        "pinyin": "Lienchiang"
    },
    {
        "id": "713801",
        "name": "南竿乡",
        "parentId": "713800",
        "shortName": "南竿",
        "letter": "N",
        "cityCode": "0836",
        "pinyin": "Nangan"
    },
    {
        "id": "713802",
        "name": "北竿乡",
        "parentId": "713800",
        "shortName": "北竿",
        "letter": "B",
        "cityCode": "0836",
        "pinyin": "Beigan"
    },
    {
        "id": "713803",
        "name": "莒光乡",
        "parentId": "713800",
        "shortName": "莒光",
        "letter": "J",
        "cityCode": "0836",
        "pinyin": "Juguang"
    },
    {
        "id": "713804",
        "name": "东引乡",
        "parentId": "713800",
        "shortName": "东引",
        "letter": "D",
        "cityCode": "0836",
        "pinyin": "Dongyin"
    },
    {
        "id": "810000",
        "name": "香港特别行政区",
        "parentId": "100000",
        "shortName": "香港",
        "letter": "H",
        "cityCode": "",
        "pinyin": "Hong Kong"
    },
    {
        "id": "810100",
        "name": "香港岛",
        "parentId": "810000",
        "shortName": "香港岛",
        "letter": "H",
        "cityCode": "00852",
        "pinyin": "Hong Kong Island"
    },
    {
        "id": "810101",
        "name": "中西区",
        "parentId": "810100",
        "shortName": "中西区",
        "letter": "C",
        "cityCode": "00852",
        "pinyin": "Central and Western District"
    },
    {
        "id": "810102",
        "name": "湾仔区",
        "parentId": "810100",
        "shortName": "湾仔区",
        "letter": "W",
        "cityCode": "00852",
        "pinyin": "Wan Chai District"
    },
    {
        "id": "810103",
        "name": "东区",
        "parentId": "810100",
        "shortName": "东区",
        "letter": "E",
        "cityCode": "00852",
        "pinyin": "Eastern District"
    },
    {
        "id": "810104",
        "name": "南区",
        "parentId": "810100",
        "shortName": "南区",
        "letter": "S",
        "cityCode": "00852",
        "pinyin": "Southern District"
    },
    {
        "id": "810200",
        "name": "九龙",
        "parentId": "810000",
        "shortName": "九龙",
        "letter": "K",
        "cityCode": "00852",
        "pinyin": "Kowloon"
    },
    {
        "id": "810201",
        "name": "油尖旺区",
        "parentId": "810200",
        "shortName": "油尖旺",
        "letter": "Y",
        "cityCode": "00852",
        "pinyin": "Yau Tsim Mong"
    },
    {
        "id": "810202",
        "name": "深水埗区",
        "parentId": "810200",
        "shortName": "深水埗",
        "letter": "S",
        "cityCode": "00852",
        "pinyin": "Sham Shui Po"
    },
    {
        "id": "810203",
        "name": "九龙城区",
        "parentId": "810200",
        "shortName": "九龙城",
        "letter": "J",
        "cityCode": "00852",
        "pinyin": "Jiulongcheng"
    },
    {
        "id": "810204",
        "name": "黄大仙区",
        "parentId": "810200",
        "shortName": "黄大仙",
        "letter": "W",
        "cityCode": "00852",
        "pinyin": "Wong Tai Sin"
    },
    {
        "id": "810205",
        "name": "观塘区",
        "parentId": "810200",
        "shortName": "观塘",
        "letter": "K",
        "cityCode": "00852",
        "pinyin": "Kwun Tong"
    },
    {
        "id": "810300",
        "name": "新界",
        "parentId": "810000",
        "shortName": "新界",
        "letter": "N",
        "cityCode": "00852",
        "pinyin": "New Territories"
    },
    {
        "id": "810301",
        "name": "荃湾区",
        "parentId": "810300",
        "shortName": "荃湾",
        "letter": "T",
        "cityCode": "00852",
        "pinyin": "Tsuen Wan"
    },
    {
        "id": "810302",
        "name": "屯门区",
        "parentId": "810300",
        "shortName": "屯门",
        "letter": "T",
        "cityCode": "00852",
        "pinyin": "Tuen Mun"
    },
    {
        "id": "810303",
        "name": "元朗区",
        "parentId": "810300",
        "shortName": "元朗",
        "letter": "Y",
        "cityCode": "00852",
        "pinyin": "Yuen Long"
    },
    {
        "id": "810304",
        "name": "北区",
        "parentId": "810300",
        "shortName": "北区",
        "letter": "N",
        "cityCode": "00852",
        "pinyin": "North District"
    },
    {
        "id": "810305",
        "name": "大埔区",
        "parentId": "810300",
        "shortName": "大埔",
        "letter": "T",
        "cityCode": "00852",
        "pinyin": "Tai Po"
    },
    {
        "id": "810306",
        "name": "西贡区",
        "parentId": "810300",
        "shortName": "西贡",
        "letter": "S",
        "cityCode": "00852",
        "pinyin": "Sai Kung"
    },
    {
        "id": "810307",
        "name": "沙田区",
        "parentId": "810300",
        "shortName": "沙田",
        "letter": "S",
        "cityCode": "00852",
        "pinyin": "Sha Tin"
    },
    {
        "id": "810308",
        "name": "葵青区",
        "parentId": "810300",
        "shortName": "葵青",
        "letter": "K",
        "cityCode": "00852",
        "pinyin": "Kwai Tsing"
    },
    {
        "id": "810309",
        "name": "离岛区",
        "parentId": "810300",
        "shortName": "离岛",
        "letter": "O",
        "cityCode": "00852",
        "pinyin": "Outlying Islands"
    },
    {
        "id": "820000",
        "name": "澳门特别行政区",
        "parentId": "100000",
        "shortName": "澳门",
        "letter": "M",
        "cityCode": "",
        "pinyin": "Macau"
    },
    {
        "id": "820100",
        "name": "澳门半岛",
        "parentId": "820000",
        "shortName": "澳门半岛",
        "letter": "M",
        "cityCode": "00853",
        "pinyin": "MacauPeninsula"
    },
    {
        "id": "820101",
        "name": "花地玛堂区",
        "parentId": "820100",
        "shortName": "花地玛堂区",
        "letter": "N",
        "cityCode": "00853",
        "pinyin": "Nossa Senhora de Fatima"
    },
    {
        "id": "820102",
        "name": "圣安多尼堂区",
        "parentId": "820100",
        "shortName": "圣安多尼堂区",
        "letter": "S",
        "cityCode": "00853",
        "pinyin": "Santo Antonio"
    },
    {
        "id": "820103",
        "name": "大堂区",
        "parentId": "820100",
        "shortName": "大堂",
        "letter": "S",
        "cityCode": "00853",
        "pinyin": "Sé"
    },
    {
        "id": "820104",
        "name": "望德堂区",
        "parentId": "820100",
        "shortName": "望德堂区",
        "letter": "S",
        "cityCode": "00853",
        "pinyin": "Sao Lazaro"
    },
    {
        "id": "820105",
        "name": "风顺堂区",
        "parentId": "820100",
        "shortName": "风顺堂区",
        "letter": "S",
        "cityCode": "00853",
        "pinyin": "Sao Lourenco"
    },
    {
        "id": "820200",
        "name": "氹仔岛",
        "parentId": "820000",
        "shortName": "氹仔岛",
        "letter": "T",
        "cityCode": "00853",
        "pinyin": "Taipa"
    },
    {
        "id": "820201",
        "name": "嘉模堂区",
        "parentId": "820200",
        "shortName": "嘉模堂区",
        "letter": "O",
        "cityCode": "00853",
        "pinyin": "Our Lady Of Carmel's Parish"
    },
    {
        "id": "820300",
        "name": "路环岛",
        "parentId": "820000",
        "shortName": "路环岛",
        "letter": "C",
        "cityCode": "00853",
        "pinyin": "Coloane"
    },
    {
        "id": "820301",
        "name": "圣方济各堂区",
        "parentId": "820300",
        "shortName": "圣方济各堂区",
        "letter": "S",
        "cityCode": "00853",
        "pinyin": "St Francis Xavier's Parish"
    }
];