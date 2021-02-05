;(function ($) {
    var contains = document.compareDocumentPosition ? function (a, b) {
        return !!(a.compareDocumentPosition(b) & 16);
    } : function (a, b) {
        return a !== b && (a.contains ? a.contains(b) : true);
    };
    Array.prototype.unique = function () {
        this.sort();
        var re = [this[0]];
        for (var i = 1; i < this.length; i++) {
            if (this[i] !== re[re.length - 1]) {
                re.push(this[i]);
            }
        }
        return re;
    }
    var dateFormat = function () {
        var token = /d{1,4}|m{1,4}|yy(?:yy)?|([HhMsTt])\1?|[LloSZ]|"[^"]*"|'[^']*'/g,
            timezone = /\b(?:[PMCEA][SDP]T|(?:Pacific|Mountain|Central|Eastern|Atlantic) (?:Standard|Daylight|Prevailing) Time|(?:GMT|UTC)(?:[-+]\d{4})?)\b/g,
            timezoneClip = /[^-+\dA-Z]/g,
            pad = function (val, len) {
                val = String(val);
                len = len || 2;
                while (val.length < len) val = "0" + val;
                return val;
            };

        return function (date, mask, utc) {
            var dF = dateFormat;
            if (arguments.length == 1 && Object.prototype.toString.call(date) == "[object String]" && !/\d/.test(date)) {
                mask = date;
                date = undefined;
            }
            date = date ? new Date(date) : new Date;
            if (isNaN(date)) throw SyntaxError("invalid date");

            mask = String(dF.masks[mask] || mask || dF.masks["default"]);

            if (mask.slice(0, 4) == "UTC:") {
                mask = mask.slice(4);
                utc = true;
            }

            var _ = utc ? "getUTC" : "get",
                d = date[_ + "Date"](),
                D = date[_ + "Day"](),
                m = date[_ + "Month"](),
                y = date[_ + "FullYear"](),
                H = date[_ + "Hours"](),
                M = date[_ + "Minutes"](),
                s = date[_ + "Seconds"](),
                L = date[_ + "Milliseconds"](),
                o = utc ? 0 : date.getTimezoneOffset(),
                flags = {
                    d: d,
                    dd: pad(d),
                    ddd: dF.i18n.dayNames[D],
                    dddd: dF.i18n.dayNames[D + 7],
                    m: m + 1,
                    mm: pad(m + 1),
                    mmm: dF.i18n.monthNames[m],
                    mmmm: dF.i18n.monthNames[m + 12],
                    yy: String(y).slice(2),
                    yyyy: y,
                    h: H % 12 || 12,
                    hh: pad(H % 12 || 12),
                    H: H,
                    HH: pad(H),
                    M: M,
                    MM: pad(M),
                    s: s,
                    ss: pad(s),
                    l: pad(L, 3),
                    L: pad(L > 99 ? Math.round(L / 10) : L),
                    t: H < 12 ? "a" : "p",
                    tt: H < 12 ? "am" : "pm",
                    T: H < 12 ? "A" : "P",
                    TT: H < 12 ? "AM" : "PM",
                    Z: utc ? "UTC" : (String(date).match(timezone) || [""]).pop().replace(timezoneClip, ""),
                    o: (o > 0 ? "-" : "+") + pad(Math.floor(Math.abs(o) / 60) * 100 + Math.abs(o) % 60, 4),
                    S: ["th", "st", "nd", "rd"][d % 10 > 3 ? 0 : (d % 100 - d % 10 != 10) * d % 10]
                };

            return mask.replace(token, function ($0) {
                return $0 in flags ? flags[$0] : $0.slice(1, $0.length - 1);
            });
        };
    } ();

    dateFormat.masks = {
        "default": "ddd mmm dd yyyy HH:MM:ss",
        shortDate: "m/d/yy",
        mediumDate: "mmm d, yyyy",
        longDate: "mmmm d, yyyy",
        fullDate: "dddd, mmmm d, yyyy",
        shortTime: "h:MM TT",
        mediumTime: "h:MM:ss TT",
        longTime: "h:MM:ss TT Z",
        isoDate: "yyyy-mm-dd",
        isoTime: "HH:MM:ss",
        isoDateTime: "yyyy-mm-dd'T'HH:MM:ss",
        isoUtcDateTime: "UTC:yyyy-mm-dd'T'HH:MM:ss'Z'"
    };

    dateFormat.i18n = {
        dayNames: [
            "Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat",
            "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"
        ],
        monthNames: [
            "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec",
            "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"
        ]
    };
    Date.prototype.format = function (mask, utc) {
        return dateFormat(this, mask, utc);
    };
    String.prototype.pad = function () {
        var day = 0;
        var month = 0;
        var year = 0;
        var today = "";

        var times = this.split("-");

        var myyear = parseInt(times[0], 10);
        var mymonth = parseInt(times[1], 10);
        var myday = parseInt(times[2], 10);
        year = (myyear > 200) ? myyear : 1900 + myyear;
        if (mymonth >= 10) {
            mymonth = mymonth;
        } else {
            mymonth = "0" + mymonth;
        }
        if (myday >= 10) {
            myday = myday;
        } else {
            myday = "0" + myday;
        }
        today = year + '-' + mymonth + '-' + myday;
        return today;
    };

    cQuery.extend($.fn, {
        hide: function () {
            for (var i = 0; i < this.length; i++) {
                this[i].style.display = 'none';
            }
        },
        show: function () {
            for (var i = 0; i < this.length; i++) {
                this[i].style.display = '';
            }
        },
        append: function (el) {
            this.each(function (item, i) {
                item[0].appendChild(el);
            });
        },
        outerHeight: function () {

            return this[0].offsetHeight;
        },
        prev: function () {
            var obj = this[0].previousSibling;
            while (obj.nodeType != 1) {
                obj = obj.previousSibling;
            }
            return obj;
        },
        next: function () {
            var obj = this[0].nextSibling;
            while (obj && obj.nodeType != 1) {
                obj = obj.nextSibling;
            }
            return obj;
        },
        parents: function (str) {
            // if(this[0].tagName==str.toUpperCase()){
            // return [this];
            // }
            try {
                var tempNode = this[0].parentNode;
                while (tempNode && tempNode.tagName != arguments[0].toUpperCase()) {
                    tempNode = tempNode.parentNode;
                }
                return [tempNode];
            } catch (err) {
                return [];
            }
        },
        triggerEvent: function () {

            if (document.createEvent) {
                var evt = document.createEvent("MouseEvents");
                evt.initEvent(arguments[0], true, true);
                this[0].dispatchEvent(evt);
            } else {

                this[0].fireEvent('on' + arguments[0]);

            }

        }
    });
    var Calendar = function (opts) {
        var defaults = {
            date: new Date(),
            dayTagName: "a",
            monthTagName: "a",
            defaultClass: "calendar",
            tipText: "yyyy-mm-dd",
            classNames: {
                select: "select",
                nothismonth: "day_over",
                blankdate: 'day_no',
                today: "today",
                tomorrow: "",
                aftertomorrow: "",
                none: "none",
                type: "left"
            },
            typeList: { "month_prev": "-1", "month_next": "+1" },
            template: {
                head: '<div class="calendar_title"><a class="{$type}"></a>{$data}</div>',
                shead: '<div class="calendar_title"><a class="{$typel}"></a>{$data}<a class="{$typer}"></a></div>',
                body:  '<dl class="calendar_day"><dt class="weekend">日</dt><dt>一</dt><dt>二</dt><dt>三</dt><dt>四</dt><dt>五</dt><dt class="weekend">六</dt><dd>{$dates}</dd></dl>',
                foot: '',
                day: '<a href="javascript:void(0);" {$id} {$Class} {$Style}>{$day}</a>',
                festival: '<span class="c_day_festival">{$day}</span>'
            },
            showPrev: true,
            showNext: false,
            todayInfos: ["", "", ""],
            weekText: ["pic_sun", "pic_mon", "pic_tue", "pic_wed", "pic_thu", "pic_fir", "pic_sat"],
            todayText: ["pic_today", "pic_tomorrow", "pic_aftertomorrow"],
            type: "",
            rangeColor: "#F0F5FB",
            hoverColor: "#d9e5f4",
            festival: (function(){
                var charset = $.config("charset");
                var ret = {
                    '2017-01-27': ['c_chuxi', '除夕'],
                    '2016-02-07': ['c_chuxi', '除夕'],
                    '2015-02-18': ['c_chuxi', '除夕'],

                    '2017-01-28': ['c_chunjie', '春节'],
                    '2016-02-08': ['c_chunjie', '春节'],
                    '2015-02-19': ['c_chunjie', '春节'],

                    '2017-02-11': ['c_yuanxiao', '元宵'],
                    '2016-02-22': ['c_yuanxiao', '元宵'],
                    '2015-03-05': ['c_yuanxiao', '元宵'],

                    '2017-04-04': ['c_qingming', '清明'],
                    '2016-04-04': ['c_qingming', '清明'],
                    '2015-04-05': ['c_qingming', '清明'],

                    '2017-05-30': ['c_duanwu', '端午'],
                    '2016-06-09': ['c_duanwu', '端午'],
                    '2015-06-20': ['c_duanwu', '端午'],

                    '2017-10-04': ['c_zhongqiu', '中秋'],
                    '2016-09-15': ['c_zhongqiu', '中秋'],
                    '2015-09-27': ['c_zhongqiu', '中秋'],

                    '2017-01-01': ['c_yuandan', '元旦'],
                    '2016-01-01': ['c_yuandan', '元旦'],
                    '2015-01-01': ['c_yuandan', '元旦'],

                    '2017-05-01': ['c_wuyi', '劳动'],
                    '2016-05-01': ['c_wuyi', '劳动'],
                    '2015-05-01': ['c_wuyi', '劳动'],

                    '2017-12-25': ['c_shengdan', '圣诞'],
                    '2016-12-25': ['c_shengdan', '圣诞'],
                    '2015-12-25': ['c_shengdan', '圣诞'],

                    '2017-10-01': ['c_guoqing', '国庆'],
                    '2016-10-01': ['c_guoqing', '国庆'],
                    '2015-10-01': ['c_guoqing', '国庆']
                }
                if(charset=="gb2312"){
                    return ret;
                }else if(charset=="utf-8"){
                    return {};
                }else if(charset=="big5"){
                    return ret;
                }else{
                    return ret;
                }
            })()
        };

        $.extend(true,defaults, opts);
        this.initialize(defaults);
    };
    Calendar.prototype = {
        initialize: function (opts) {
            this.setOptions(opts);
            this.bindEvent();
            if (this.autoRender) {
                this.render(this.date);
            }
        },
        setOptions: function (opts) {
            $.extend(true,this, opts);
            this.target = $(this.calendarWin.document.getElementById(opts.target));
        },
        bindEvent: function () {
            this.bindAddNumEvent();
            this.bindMoveEvent();
            this.setToday();
        },
        hide: function () {
            this.target.css('display', 'none');
        },
        show: function (date) {
            this.target.css('display', '');
        },
        setToday: function () {
            this.target.bind('selectstart', function () {
                return false;
            });
        },
        getOptByType: function (type) {
            return this.typeList[type];
        },
        bindAddNumEvent: function () {
            $(this.target).bind("mousedown", function (e) {
                var tag = e.target;
                var hasClass = false;
                for (var b in this.typeList) {
                    if ($(tag).hasClass(b)) {
                        hasClass = true;
                        break;
                    }
                };
                if (tag.tagName == this.monthTagName.toUpperCase() && hasClass) {
                    this.changeMonth(this, this.getOptByType(tag.className));
                    return false;
                };
                tag = (tag.tagName == this.dayTagName.toUpperCase() ?
                    tag :
                    $(tag).parents(this.dayTagName)[0]);
                if (tag) {
                    if (tag.tagName == this.dayTagName.toUpperCase()) {
                        this.clickEvent(this, tag);
                        return false
                    }
                }
                return false
            } .bind(this));
        },
        /**
         *点击事件响应函数
         @param {Object} calobj 日历对象
         @param {HTMLElement} tag 拖动的HTMLElement
         */
        clickEvent: function (obj, tag) {
            if (!tag.id) {
                return;
            };
        },
        strToDate: function (str) {
            if (str) {
                return str.toDate();
            }
        },
        chkHoverColor: function (startDate, endDate, tag) {
            var datStartDate = null;
            var dateEndDate = null;

            if (startDate && (tag.tagName == 'A' || tag.parentNode.tagName == 'A') && !$(tag).hasClass('day_over') && !$(tag).hasClass('day_no')) {

                datStartDate = this.strToDate(startDate);
                dateEndDate = this.strToDate(endDate);
                this.setHoverColor(datStartDate, dateEndDate, tag);
                return;
            }
        },
        setHoverColor: function (startDate, endDate, tag) {
            tag = tag.tagName == "A" ? tag : tag.parentNode;
            var date = this.getDateById(tag.id);
            endDate = endDate ? endDate : date;
            var tags = this.target[0].parentNode.getElementsByTagName(tag.tagName);
            for (var i = 0; i < tags.length; i++) {
                var strClass = !$(tags[i]).hasClass('day_over') && !$(tags[i]).hasClass('day_no');
                if (tags[i].id && strClass) {
                    var tempDate = this.getDateById(tags[i].id);
                    if (tempDate < date && tempDate > startDate) {
                        tags[i].style.backgroundColor = this.hoverColor;
                    } else if (tempDate < startDate || tempDate > endDate) {
                        tags[i].style.backgroundColor = "";
                    } else {
                        tags[i].style.backgroundColor = this.rangeColor;
                    }
                }
            }
        },
        clearHoverColor: function (startDate, endDate) {
            var tags = this.target[0].parentNode.getElementsByTagName('a');

            for (var i = 0; i < tags.length; i++) {
                var strClass = !$(tags[i]).hasClass('day_over') && !$(tags[i]).hasClass('day_no')
                if (tags[i].id) {
                    var tempDate = this.getDateById(tags[i].id);
                    if (tempDate < startDate || tempDate > endDate) {
                        tags[i].style.backgroundColor = "";
                    }
                }
            }
        },
        /**
         *绑定移动事件
         */
        bindMoveEvent: function () {
            var startDate = null;
            var endDate = null;
            var datStartDate = null;
            var dateEndDate = null;
            var self = this;
            this.target.bind("mouseover", function (e) {
                if (self.input) {
                    startDate = $(self.input).data('startDate') || self.startDate ;
                    endDate = $(self.input).data('endDate') || self.endDate ;
                }

                self.chkHoverColor(startDate, endDate, e.target);
            } .bind(this));
            this.target.bind("mouseout", function (e) {
                var toElement = e.relatedTarget || e.toElement;
                if (toElement && self.input && !contains(self.target[0].parentNode, toElement) && startDate && endDate) {
                    datStartDate = this.strToDate(startDate);
                    dateEndDate = this.strToDate(endDate);
                    self.clearHoverColor(datStartDate, dateEndDate);
                }
            } .bind(this));
        },
        /**
         *日期对象转为日期字符串用于日期Id
         @param {Date} date 日期
         @returns {String}
         */
        getDateString: function (date) {
            return date.format("yyyy-mm-dd");
            // var tempArr = [date.getFullYear(), date.getMonth() + 1, date.getDate()];
            // return tempArr.join("_");
        },
        /**
         *日期Id转为日期对象
         @param {String} id 日期字符串
         @returns {Date}
         */
        getDateById: function (id) {
            var temp = id.replace(/_.*/, '').split('-');
            var newDate = new Date(temp[0], (temp[1] - 1), (temp[2] * 1));
            return newDate;
        },
        /**
         *交互渲染日历
         @param {Date} beginDate 开始日期
         @param {Date} endDate 结束日期
         */
        renderSelect: function (beginDate, endDate) {
            this.render(this.date);
        },
        /**
         *创建日历头
         @param {Date} date 日期
         */
        createHead: function (date) {
            var headHtml = "";
            date = new Date(date);
            var  year = date.getFullYear();
            var  month =date.getMonth() + 1;
            var data=""
            if(this.template.formatHead){
                data = this.template.formatHead(year,month);
            }else{
                data = year+"年"+month+"月"
            }
            if (this.type) {
                headHtml = this.template.head.replaceWith({
                    type: this.type == "left" ? 'month_prev' : 'month_next',
                    data:data
                });
            } else {
                headHtml = this.template.shead.replaceWith({
                    typel: "month_prev",
                    typer: "month_next",
                    data:data
                });
            };
            return headHtml;
        },
        /**
         *计算日期的样式
         @param {Date} date 日期
         @returns {String} 计算得到的Class
         */
        getClass: function (date, tempDateStr, input) {

            var classList = [
                this.classNames.today,
                this.classNames.tomorrow,
                this.classNames.aftertomorrow
            ];
            var nowDate = new Date(
                new Date().getFullYear(),
                new Date().getMonth(),
                new Date().getDate()
            );
            var tempDay = (date - nowDate) / (24 * 60 * 60 * 1000);
            var returnValue = classList[tempDay] || "";
            if ((date - this.beginDate) / (24 * 60 * 60 * 1000) === 0) {
                returnValue += " " + this.classNames.select;
            }
            if (this.beginDate && this.endDate) {
                if (date > this.beginDate && date <= this.endDate) {
                    returnValue += " " + this.classNames.select;
                }
            }

            if (tempDay < 0 || this.closeDate[tempDateStr]) {
                returnValue += " " + this.classNames.nothismonth;
            }

            var startDate = this.input ? input.data('startDate') ? input.data('startDate') : this.input.value : this.startDate;
            var endDate = this.input ? input.data('endDate') ? input.data('endDate') : "" : this.endDate;
            var minDate = this.input ? input.data('minDate') ? input.data('minDate') : "" : this.minDate;
            var maxDate = this.input ? input.data('maxDate') ? input.data('maxDate') : "" : this.maxDate;
            if (startDate) startDate = startDate.pad();
            if (endDate) endDate = endDate.pad();
            if (minDate) minDate = minDate.pad();
            if (maxDate) maxDate = maxDate.pad();

            var temp1 = tempDateStr;

            var checkStart = ((startDate) == temp1) ? 1 : 0;
            if (checkStart) {
                returnValue += " " + "day_selected";
            }
            var checkEnd = (endDate == temp1) ? 1 : 0;
            if (checkEnd) {
                returnValue += " " + "day_selected";
            };
            if (minDate && this.strToDate(temp1) < this.strToDate(minDate)) {

                returnValue = this.classNames.nothismonth;
            }
            if (maxDate && this.strToDate(temp1) > this.strToDate(maxDate)) {
                returnValue = this.classNames.nothismonth;
            }
            if(input.data('prohibit')&&((input.data('prohibit').join("|") + "|").indexOf(temp1+"|") !== -1)){
                returnValue = this.classNames.nothismonth;
            }
            returnValue = returnValue.trim().split(' ').unique().join(' ');

            var tempFestival = this.festival[temp1] || "";

            tempFestival = tempFestival ? tempFestival[0] : "";
            var temptoday = $(this.input).data("today");

            if (tempFestival || temp1 == temptoday) {
                returnValue = returnValue.replace('day_selected', 'c_festival_select');

            }
            return {
                'class': returnValue,
                'start': checkStart,
                'end': checkEnd
            };
        },
        /**
         *计算间隔天数
         @param {Date} date 日期
         @returns {String} 计算得到的间隔天数
         */
        getAddValue: function (date) {
            if (this.beginDate) {
                var nowDate = new Date(
                    this.beginDate.getFullYear(),
                    this.beginDate.getMonth(),
                    this.beginDate.getDate()
                );
                var tempValue = (date - nowDate) / (24 * 60 * 60 * 1000);

                if (tempValue > 0) {
                    if (this.endDate && date <= this.endDate) {
                        return "+" + tempValue;
                    } else if (!this.endDate) {
                        return "+" + tempValue;
                    } else {
                        return "";
                    }
                } else {
                    return "";
                }
            } else {
                return "";
            }
        },
        chkRange: function (startDate, endDate, date, tempId) {
            if (startDate && endDate && date && tempId) {
                startDate = startDate.toDate();
                endDate = endDate.toDate();
                if (date > startDate && date < endDate) {
                    return "style='background-color: " + $(this.input).data('rangeColor') + ";'";
                }
            }
            return '';
        },
        /**
         *生成日历的每一天逻辑函数
         @param {Date} date 日期
         @returns {String} 日历的每一天HTML
         */
        getDates: function (date) {
            var returnValue = [];
            var day = date.getDate(); //今天几号
            var beginDay = new Date(date.getFullYear(), date.getMonth(), 1).getDay(); //当月的第一天从几开始
            var nDays = new Date(date.getFullYear(), date.getMonth() + 1, 0).getDate(); //总天数
            var startDate = null, endDate = null, minDate = null, maxDate = null;
            var input = null;
            if (this.input) {
                input = $(this.input);
                startDate = input.data('startDate');
                endDate = input.data('endDate');
                minDate = input.data('minDate');
                maxDate = input.data('maxDate');
            }

            for (var i = 1; i < 43; i++) {
                var tempDate = new Date(
                    date.getFullYear(),
                    date.getMonth(),
                    (i - beginDay)
                );
                var tempDateStr = this.getDateString(tempDate);
                var tempId = tempDateStr + "_" + this.target[0].id;
                var tempClass = this.getClass(tempDate, tempDateStr, input);
                var tempFestival = tempDate <= new Date() ? "" : (this.festival[tempDateStr] || "");
                tempFestival = tempFestival ? tempFestival[0] : "";
                var strDay = this.setToday(tempDate);
                if (i > beginDay && i <= nDays + beginDay) {//当前月
                    var strCls = ([tempClass['class'], tempFestival].join(' ').trim() ? "class='" + [tempClass['class'], tempFestival].join(' ').trim() + "'" : "");
                    returnValue.push(this.template.day.replaceWith({
                        id: "id=" + tempId,
                        day: tempFestival ? this.template.festival.replaceWith({
                            day: strDay + (i - beginDay),
                            festival: tempFestival
                        }) : strDay + (i - beginDay),
                        Style: this.chkRange(startDate, endDate, tempDate, tempId),
                        Class: strCls
                    }));
                } else if (i > nDays) {//下月
                    returnValue.push(this.template.day.replaceWith({
                        id: this.showNext ? "id=" + tempId : "",
                        day: this.showNext ? strDay + tempDate.getDate() : "",
                        festival: this.showNext ? tempFestival : "",
                        Style: this.chkRange(startDate, endDate, tempDate, ""),
                        Class: this.showNext ? "class=" + [(tempClass['class'] || this.classNames.nothismonth), tempFestival].join(' ') : "class=" + [this.classNames.blankdate, tempFestival].join(' ')
                    }));
                } else {//上月
                    returnValue.push(this.template.day.replaceWith({
                        id: this.showPrev ? "id=" + tempId : "",
                        day: this.showPrev ? strDay + tempDate.getDate() : "",
                        festival: this.showPrev ? tempFestival : "",
                        Style: this.chkRange(startDate, endDate, tempDate, ""),
                        Class: this.showPrev ? "class=" + [(tempClass['class'] || this.classNames.nothismonth), tempFestival].join(' ') : "class=" + [this.classNames.blankdate, tempFestival].join(' ')
                    }));
                }
            }
            return returnValue.join("");

        },
        /**
         *生成日历的日期部分
         @param {Date} date 日期
         @returns {String} 日历的主体HTML
         */
        createBody: function (date) {
            date = new Date(date);
            var bodyHtml = this.template.body.replaceWith({
                months: date.getMonth() + 1,
                dates: this.getDates(date)
            });

            return bodyHtml;
        },
        /**
         *计算今明后
         @param {Date} date 日期
         @returns {String} 今明后HTML
         */
        setToday: function (date) {
            var classList = [
                this.classNames.today,
                this.classNames.tomorrow,
                this.classNames.aftertomorrow
            ];
            var nowDate = new Date(
                new Date().getFullYear(),
                new Date().getMonth(),
                new Date().getDate()
            );

            return this.todayInfos[(date - nowDate) / (24 * 60 * 60 * 1000)] || "";
        },
        createFoot: function () {
            var footHtml = this.template.foot;
            return footHtml;
        },
        createTempEl: function (str) {
            var tempDiv = this.calendarWin.document.createElement('div');
            tempDiv.innerHTML = str;
            return tempDiv.firstChild;
        },
        /**
         *绘制日历
         @param {Date} date 日期
         */
        render: function (date) {
            this.target.html("");
            this.target.append(this.createTempEl(this.createHead(date)));
            this.target.append(this.createTempEl(this.createBody(date)));
            this.target.show();

        },
        /**
         *换月
         @param {Date} date 日期
         @param {String} op 操作符
         */
        changeMonth: function (obj, op) {
            obj.date = new Date(
                obj.date.getFullYear(),
                obj.date.getMonth() + eval("(" + op + ")"),
                1
            );
            this.render(this.date);
        }
    };
    var CalendarManage = function (opts) {

        var defaults = {
            options: {
                items: [],
                container: null,
                step: 2,
                date: new Date(),
                startDate: null,
                endDate: null,
                showWeek: false,
                reference: null,
                nextEl: null,
                today:null,
                todayClass:"",
                prevEl: null,
                rangeColor: "#F0F5FB",
                hoverColor: "#d9e5f4",
                classNames: {
                    select: "select",
                    nothismonth: "day_over",
                    blankdate: 'day_no',
                    today: "today",
                    tomorrow: "",
                    aftertomorrow: "",
                    none: "none",
                    type: "left"
                },
                template: {
                    wrap: '<div class="calendar_wrap" id="calendars" style="position:absolute;display:none;" >{$calendars}</div>',
                    calendar: '<div id="{$calendarid}" hidefocus="true" class="calendar_month"></div>'
                },
                styles: ".calendar_wrap{width:363px;background: #fff; padding: 5px 5px 0;border: solid 1px #999;overflow: hidden;font-size:12px;font-family:tahoma,Arial,Helvetica,simsun,sans-serif;-moz-box-shadow:0 3px 5px #ccc;-webkit-box-shadow:0 3px 5px #ccc;box-shadow:0 3px 5px #ccc;}.calendar_wrap a{ color: #0053aa; text-decoration: none !important; }.calendar_wrap a:hover{text-decoration: underline;}#calendar0{width: 180px;}#calendar1{width: 182px;}.calendar_month{float: left;padding-bottom:5px;text-align: center;}.calendar_title{ height: 23px; line-height: 23px; font-weight: bold; color: #fff; background-color: #004fb8; text-align: center; }.month_prev,.month_next{ width: 23px; height: 23px; color: #fff; background: #2d7ce7 url(//pic.c-ctrip.com/cquery/un_calender_index.png) no-repeat; cursor: pointer; }.month_prev{float: left;background-position: 0 0;}.month_next{float: right;background-position: 100% 0;}.month_prev:hover{background-color: #62adf1; background-position: 0 -26px;}.month_next:hover{background-color: #62adf1; background-position: 100% -26px;}.calendar_day{ overflow:hidden; margin: 0; padding-top:5px; }.calendar_day dd { margin: 0; padding: 0; }#calendar1 dl{border-left: 2px solid #aaa;padding-left: 5px;padding-bottom:30px;margin-bottom: -30px;}.calendar_month dt{ float: left; width: 25px; height: 22px; line-height: 20px; color: #666; background-color: #ececec; margin-bottom: 2px; }.calendar_month .weekend{font-weight: bold;color: #f90;}.calendar_day a{ float: left; width: 24px; height: 24px; line-height: 24px; margin-bottom: 1px; padding-right: 1px; font-size: 11px; font-weight: bold; color: #005ead; background-color: #fff; cursor: pointer; }.calendar_day a:hover,.calendar_day .today,.calendar_day .day_selected,.calendar_day .c_festival_select,.calendar_day .c_festival_select:hover{background: #e6f4ff url(//pic.c-ctrip.com/cquery/un_calender_index.png) no-repeat;}.calendar_day a:hover{background-color: #e6f4ff;background-position: -26px -53px;text-decoration: none;}.calendar_day .today{background-color: #fff5d1;background-position: 0 -82px;}.calendar_day .day_over,.calendar_day .day_no{font-weight: normal;color: #dbdbdb;outline: none;cursor: default;}.calendar_day .day_over:hover,.calendar_day .day_no:hover{background: #fff;}.calendar_day .day_selected,.calendar_day .day_selected:hover{background-color: #629be0;background-position: 0 -53px;color: #fff;}.calendar_day .c_festival_select,.calendar_day .c_festival_select:hover{ background-color: #ffe6a6; background-image: url(//pic.c-ctrip.com/cquery/un_calender_index.png); background-position: 0 -111px; }.c_yuandan span,.c_chuxi span,.c_chunjie span,.c_yuanxiao span,.c_qingming span,.c_wuyi span,.c_duanwu span,.c_zhongqiu span,.c_guoqing span,.c_jintian span{ width: 24px; height: 24px; background-image: url(//pic.c-ctrip.com/cquery/un_festivals.png); background-repeat: no-repeat; text-indent: -9999em; overflow: hidden; display: block; }.c_yuandan span{background-position: 0 0;}.c_chuxi span{background-position: 0 -32px;}.c_chunjie span{background-position: 0 -64px;}.c_yuanxiao span{background-position: 0 -96px;}.c_qingming span{background-position: 0 -128px;}.c_wuyi span{background-position: 0 -160px;}.c_duanwu span{background-position: 0 -192px;}.c_zhongqiu span{background-position: 0 -224px;}.c_guoqing span{background-position: 0 -256px;}.c_jintian span{ background-position: 0 -288px;}.c_calender_date{ display: inline-block; color: #666; text-align: right; position: absolute; z-index: 1; }",
                weekText: ["pic_sun", "pic_mon", "pic_tue", "pic_wed", "pic_thu", "pic_fir", "pic_sat"],
                todayText: ["pic_today", "pic_tomorrow", "pic_aftertomorrow"],
                closeDate: {

                },
                festival: {
                    '2011-02-02': ['c_chuxi', '除夕'],
                    '2012-01-22': ['c_chuxi', '除夕'],
                    '2013-02-09': ['c_chuxi', '除夕'],
                    '2011-02-03': ['c_chunjie', '春节'],
                    '2012-01-23': ['c_chunjie', '春节'],
                    '2013-02-10': ['c_chunjie', '春节'],
                    '2011-02-04': ['c_chuer', '初二'],
                    '2012-01-24': ['c_chuer', '初二'],
                    '2013-02-11': ['c_chuer', '初二'],
                    '2011-02-05': ['c_chusan', '初三'],
                    '2012-01-25': ['c_chusan', '初三'],
                    '2013-02-12': ['c_chusan', '初三'],
                    '2011-02-06': ['c_chusi', '初四'],
                    '2012-01-26': ['c_chusi', '初四'],
                    '2013-02-13': ['c_chusi', '初四'],
                    '2011-02-07': ['c_chuwu', '初五'],
                    '2012-01-27': ['c_chuwu', '初五'],
                    '2013-02-14': ['c_chuwu', '初五'],
                    '2011-02-08': ['c_chuliu', '初六'],
                    '2012-01-28': ['c_chuliu', '初六'],
                    '2013-02-15': ['c_chuliu', '初六'],
                    '2011-02-09': ['c_chuqi', '初七'],
                    '2012-01-29': ['c_chuqi', '初七'],
                    '2013-02-16': ['c_chuqi', '初七'],
                    '2011-02-10': ['c_chuba', '初八'],
                    '2012-01-30': ['c_chuba', '初八'],
                    '2013-02-17': ['c_chuba', '初八'],
                    '2011-01-01': ['c_yuandan', '元旦'],
                    '2012-01-01': ['c_yuandan', '元旦'],
                    '2013-01-01': ['c_yuandan', '元旦'],
                    '2011-04-05': ['c_qingming', '清明节'],
                    '2012-04-04': ['c_qingming', '清明节'],
                    '2013-04-04': ['c_qingming', '清明节'],
                    '2011-06-06': ['c_duanwu', '端午节'],
                    '2012-06-23': ['c_duanwu', '端午节'],
                    '2013-06-12': ['c_duanwu', '端午节'],
                    '2011-05-01': ['c_wuyi', '劳动节'],
                    '2012-05-01': ['c_wuyi', '劳动节'],
                    '2013-05-01': ['c_wuyi', '劳动节'],
                    '2011-10-01': ['c_guoqing', '国庆节'],
                    '2012-10-01': ['c_guoqing', '国庆节'],
                    '2013-10-01': ['c_guoqing', '国庆节'],
                    '2011-09-12': ['c_zhongqiu', '中秋节'],
                    '2012-09-30': ['c_zhongqiu', '中秋节'],
                    '2013-09-19': ['c_zhongqiu', '中秋节'],
                    '2011-02-17': ['c_yuanxiao', '元宵节'],
                    '2012-02-06': ['c_yuanxiao', '元宵节'],
                    '2013-02-24': ['c_yuanxiao', '元宵节']
                }
            }
        };

        defaults = $.extend(true,defaults.options, opts);

        this.initialize(defaults);
        return this;
    };
    CalendarManage.prototype = {
        initialize: function (opts) {
            this.setOptions(opts);
            this.createStyle();
        },
        setOptions: function (opts) {
            $.extend(true,this, opts);

        },
        clearWeek: function (input) {
            if (input) {
                $(input).css({
                    "background-image": ""
                });
            }
        },
        setWeek: function (input) {

            var tips = $(input);
            if (tips && tips.value().isDate()) {
                var txt = this.getDay(this.getDateById(tips.value(), "-"), null);
                var charset = $.config("charset");
                function weekpng (){

                    $(input).css({
                        "background-image": "url(//pic.c-ctrip.com/cquery/" + txt + ".png)",
                        "background-position": "right center",
                        "background-repeat": "no-repeat"
                    })
                }
                if (txt && tips.offset().width >= 105) {
                    if(charset=="gb2312"){
                        weekpng ()
                    }else if(charset=="utf-8"){

                    }else if(charset=="big5"){
                        weekpng ()
                    }else {
                        weekpng ()
                    }
                }
            }
        },
        /**
         *初始化创建日历
         *@param {HTMLElement} el 日历HTML对象
         */
        createEl: function (el) {
            var tmpEl = this.calendarWin.document.getElementById('calendars')
            if (tmpEl) {
                return $(tmpEl);
            }

            if (el && $(el).length) {
                return $(el)
            } else {
                var tempDiv = this.calendarWin.document.createElement('div');
                tempDiv.innerHTML = this.template.wrap.replaceWith({
                    calendars: this.createCalendar()
                });
                return $(tempDiv.firstChild).appendTo(this.container || this.calendarWin.document.body);
            }
        },
        /**
         *初始化创建日历的HTML
         */
        createCalendar: function () {
            var self = this;
            var retVal = [];

            this.items.each(function (item, i) {
                retVal.push(self.template.calendar.replaceWith({
                    calendarid: "calendar" + i
                }));
            });
            return retVal.join('');
        },
        createStyle: function () {
            if ($.browser.isIE) {
                sty = this.calendarWin.document.createStyleSheet();
                sty.cssText = this.styles
            } else {
                sty = this.calendarWin.document.createElement('style');
                sty.type = "text/css";
                sty.textContent = this.styles;
                this.calendarWin.document.getElementsByTagName('head')[0].appendChild(sty)
            }
        },
        change: function (input) {
            $input = $(this.input);
            if ($input.data('startDate')) {
                $input.data('endDate', this.input.value);
            }
            var nextEl = $($input.data('nextEl'));

            if (nextEl.length) {
                nextEl.data("startDate", this.input.value);
                nextEl[0].focus();
            }
            if (typeof this.input.onChange != "undefined") {
                this.input.onChange.call(this, input, input.value, false);
            }
            if ($(this.input).data('showWeek')) {
                this.setWeek(input);
            }
        },
        hide: function () {
            for (var i = 0; i < this.items.length; i++) {
                if (this.items[i].input && !this.items[i].input.value.isDate()) {
                    this.clearWeek(this.items[i].input);
                }
                this.items[i].hide();
            };
            this.el.hide();
            this.el.uncover();
            if (this.calendarIframe) {
                this.calendarIframe.style.display = "none";
            }
        },
        /**
         *显示日历
         @param {HTMLElement} input 文本框
         */
        show: function (input) {
            if (!this.el) {
                this.el = this.createEl(this.el);
                this.el[0].style.zIndex = this.zIndex;
                this.override();
            }

            if (this.calendarIframe) {
                this.calendarIframe.style.display = "";
                this.calendarIframe.style.zIndex = this.zIndex;
            }
            var date = new Date();

            if (!input.value.isDate()) {
                date = new Date();
                $(input).data('endDate', "");
                this.enddate = "";
            } else {
                date = input.value;
            }
            this.input = input;

            this.input.onBeforeShow.call(this);

            for (var i = 0; i < this.items.length; i++) {
                var now = new Date();

                if (date.length) {
                    var _date = date.toDate();
                    var Year = _date.getFullYear();
                    var Month = _date.getMonth() + i;
                    ddate = new Date(Year, Month, 1);
                } else {

                    ddate = new Date(now.getFullYear(),now.getMonth() + i, 1)
                }

                this.items[i].input = this.input;
                var $input = $(this.input);
                if (!input.value.isDate() && $input.data('reference')) {
                    var reference = $($input.data('reference')).value();
                    if (reference.isDate()) {
                        var _date = reference.toDate();
                        $input.data('startDate',reference)
                        $input.data('minDate', reference)
                        var Year = _date.getFullYear();
                        var Month = _date.getMonth() + i;
                        ddate = new Date(Year, Month, 1);
                    }
                };
                this.items[i].date = ddate;
                this.items[i].render(this.items[i].date);
            };
            this.el.show();
            this.setPosition(this.input, this.el);
        },
        /**
         *日历定位
         @param {HTMLElement} input 文本框
         @param {HTMLElement} calendar 日历浮出层
         */
        setPosition: function (input, calendar) {
            if (this.calendarIframe) {
                $(this.calendarIframe).offsetA(input);
            } else {
                $(calendar).offsetA(input);
                $(calendar).cover();
            }


            this.input.onShow.call(this);

            this.setToday();
        },
        setToday:function() {

            var self = this;
            var todayClass = (function(){
                return self.input?$(self.input).data('todayClass'):"";
            })();
            if(todayClass){
                $(this.el).find("."+this.classNames.today).removeClass(this.classNames.today);
                for(var i=0;i<this.items.length;i++){
                    var todayEl = this.items[i].target.find('#'+this.today.pad(2)+"_"+this.items[i].target[0].id);
                    if(todayEl.length){
                        $(todayEl).addClass(todayClass).html('<span class="c_day_festival">'+(todayEl.text())+'</span>');
                        break;
                    }
                }
            }
        },
        /**
         *渲染日历
         */
        render: function () {

            for (var i = 0; i < this.items.length; i++) {
                this.items[i].render(this.items[i].date);
            };
        },
        /**
         *重写单日历类的方法
         */
        override: function () {
            var calendarWin = this.calendarWin;
            var inputWin = this.inputWin;

            for (var i = 0; i < this.items.length; i++) {
                var opt = this.items[i];
                opt.calendarWin = calendarWin;
                opt.inputWin = inputWin;

                opt.template = this.template;
                this.items[i] = new Calendar(opt);
                this.items[i].changeMonth = this.changeMonth.bind(this);
                this.items[i].clickEvent = this.clickEvent.bind(this);
                // var date = this.date ?
                // new Date(this.date.toDate()).setMonth(new Date(this.date.toDate()).getMonth() + i) :
                // new Date(new Date().setMonth(new Date().getMonth() + i));

                //this.items[i].date = date;
                // this.items[i].startDate = this.startDate;
                // this.items[i].endDate = this.endDate;
                // this.items[i].minDate = this.minDate;
                // this.items[i].maxDate = this.maxDate;
                this.items[i].classNames = this.classNames;
                this.items[i].closeDate = this.closeDate;

                //this.items[i].render(this.items[i].date);
            }
        },
        /**
         *换月
         @param {Calendar} calobj 日历类
         */
        changeMonth: function (calobj) {

            var opt = { "left": "-" + this.step, "right": "+" + this.step };
            this.items.each(function (item, i) {
                this.items[i].date =
                    new Date(
                        this.items[i].date.getFullYear(),
                        this.items[i].date.getMonth() + eval("(" + opt[calobj.type] + ")"),
                        1
                    );
                this.items[i].render(this.items[i].date);
            } .bind(this));
            this.input.onShow.call(this);
            this.setToday();
        },
        setValue: function (val) {
            if ($(this.input).data("startDate")) {
                $(this.input).data("endDate", val);
                return;
            }
        },
        /**
         *获取提示信息
         @param {String} val 日历值
         @param {Calendar} obj 日历对象
         */
        getDay: function (val, obj) {
            obj = obj || this;
            var nowDate = new Date(
                new Date().getFullYear(),
                new Date().getMonth(),
                new Date().getDate()
            );

            var festival = obj.festival[val.format("yyyy-mm-dd")] || "";
            if (festival) {
                return festival[0].replace('c_', "pic_");
            }
            var retVal = Math.abs((parseInt((new Date(val) - nowDate) / (24 * 60 * 60 * 1000))));
            if (parseInt((new Date(val) - nowDate))<0||retVal > 2) {
                //debugger;
                return obj.weekText[new Date(val).getDay()];
            } else {
                return obj.todayText[retVal];
            }
        },
        /**
         *日历管理类点击事件
         @param {Calendar} calobj 日历类
         @param {HTMLElement} tag 点击的HTML元素
         */
        clickEvent: function (obj, tag) {
            var self = this;
            if (this.input && !$(tag).hasClass(obj.classNames.nothismonth) && tag.id) {
                var val = dateFormat(obj.getDateById(tag.id), "yyyy-mm-dd");
                this.input.value = val;

                if ($(this.input).data('showWeek') * 1) {

                    var tips = $(this.input);
                    if (tips && this.input.value.isDate()) {
                        var txt = this.getDay(obj.getDateById(tag.id), obj);
                        if (txt && this.input.clientWidth >= 105) {
                            var charset = $.config("charset");
                            function weekpng (){
                                $(tips).css({
                                    "background-image": "url(//pic.c-ctrip.com/cquery/" + txt + ".png)",
                                    "background-position": "right center",
                                    "background-repeat": "no-repeat"

                                })
                            }
                            if(charset=="gb2312"){
                                weekpng ()
                            }else if(charset=="utf-8"){

                            }else if(charset=="big5"){
                                weekpng ()
                            }else {
                                weekpng ()
                            }
                        }

                    }
                }
                this.setValue(val);
                this.items.each(function (item, i) {
                    this.items[i].startDate = self.input.startDate;
                    this.items[i].endDate = self.input.endDate;

                } .bind(this));
                this.hide();
                this.input.blur();

                $input   = $(this.input);
                if ($input.data('startDate')) {
                    $input.data('endDate', this.input.value);
                }
                var nextEl = $($input.data('nextEl'));

                if (nextEl.length) {
                    nextEl.data("startDate", this.input.value);
                    nextEl[0].focus();
                }
                $input.triggerEvent('change');
                if (typeof this.input.onChange != "undefined") {
                    this.input.onChange.call(this, this.input, this.input.value, true);
                }
            }
        },
        /**
         *日期Id转为日期对象
         @param {String} id 日期字符串
         @returns {Date}
         */
        getDateById: function (id, split) {
            var temp = id.split(split || "_");
            var newDate = new Date(temp[0], (temp[1] - 1), (temp[2] * 1));

            return newDate;
        },
        /**
         *日历回调
         */
        _callbalck: function () {
            if (this.callbalck) {
                this.callbalck.call(this, this.beginDate, this.endDate, (this.endDate - this.beginDate) / (24 * 3600000));
            }
        },
        /**
         *设置开始日期
         @param {Date} date 日期
         */
        setBegin: function (date) {
            this.beginDate = date;
            this.renderSelect(this.beginDate, this.endDate);
        },
        /**
         *设置结束日期
         @param {Date} date 日期
         */
        setEnd: function (date) {
            this.endDate = date;
            this.renderSelect(this.beginDate, this.endDate);
        },
        /**
         *设置总共入住天数
         @param {Integer} day 日期
         */
        setTotalDay: function (day) {
            var newDate = new Date(
                this.beginDate.getFullYear(),
                this.beginDate.getMonth(),
                (this.beginDate.getDate() * 1 + day * 1)
            );

            this.endDate = newDate;
            this.renderSelect(this.beginDate, this.endDate);
        }
    };

    String.prototype.trim = function () {
        return this.replace(/(^\s*)|(\s*$)/g, "");
    };
    String.prototype.replaceWith = function (d) {
        return this.replace(/\{\$(\w+)\}/g, function (a, c) {
            if (c in d) {
                return d[c];
            } else {
                return a;
            }
        });
    };

    var cm = function (objs, options) {
        var defaults = {
            zIndex: 999,
            calendarWin: window,
            date: "",
            container: null,
            target: objs,
            rangeColor: "#F0F5FB",
            hoverColor: "#d9e5f4",
            inputs: this,
            showWeek: true,
            nextEl: null,
            today:(new Date()).toStdDateString(),
            prevEl: null,
            todayClass:"",
            minDate: null,
            reference: null,
            maxDate: null,
            startDate: null,
            endDate: null,
            items: [{
                target: "calendar0",
                type: 'left',
                autoRender: false,
                showPrev: false,
                showNext: false
            },
                {
                    target: "calendar1",
                    type: 'right',
                    autoRender: false,
                    showPrev: false
                }],
            listeners:{
                onBeforeShow:function(){

                },
                onShow:function(){

                },
                onChange:function(){

                }
            }

        };
        $.extend(true,defaults.listeners, options.listeners);
        $.extend(true,defaults, options.options);
        var $objs = $(objs);
        for(var b in defaults){
            if(b!="listeners"){
                $objs.data(b, defaults[b]);
            }
        }
        for(var b in defaults.listeners){
            objs[b] = defaults.listeners[b];
        }
        var inputWin = defaults.inputWin;
        var calendarWin = defaults.calendarWin;
        function doReleaseCapture() {
            if (CalendarManage['instance'].ctObj && CalendarManage['instance'].ctObj.releaseCapture) {
                CalendarManage['instance'].ctObj.releaseCapture();
                CalendarManage['instance'].ctObj = null;
            }
        }
        function doSetCapture(obj) {
            if (obj.setCapture) {
                doReleaseCapture();
                obj.setCapture();
                CalendarManage['instance'].ctObj = obj;
            }
        }

        if (!CalendarManage['instance']) {
            CalendarManage['instance'] = new CalendarManage(defaults);
            //cQuery.bindMethod(CalendarManage['instance'],CalendarManage['instance']);
            // this.clearWeek = CalendarManage['instance'].clearWeek;
            // this.setWeek = CalendarManage['instance'].setWeek;


        }
        if (defaults.showWeek) {
            CalendarManage['instance'].setWeek(objs);
        }
        $(objs).bind('focus', function () {
            CalendarManage['instance'].show(this);
            calendarWin.document.getElementById('calendars').onmousedown = function (e) {
                doSetCapture(objs);
                return false;
            };
        });
        $(objs).bind('mouseup', function () {
            doReleaseCapture();
        });
        $(objs).bind('change', function (e) {
            CalendarManage['instance'].change(this);
        });
        $(objs).bind('blur', function (e) {
            doReleaseCapture();
            CalendarManage['instance'].hide();
        });
        return CalendarManage['instance'];
    };
    var cls = {
        name: 'calendar',
        version: '3.0',
        init: function () { },
        uninit: function () { },
        module: cm
    };
    $.mod.reg(cls);
})(cQuery);