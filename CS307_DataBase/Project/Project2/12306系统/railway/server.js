var http=require("http");
var url=require("url");
var querystring=require("querystring");
var fs=require('fs');
const pg=require('pg');
var config=
{
    user:"guest",
    database:"railway",
    password:"123456",
    port:5432,
    max:20,
    idleTimeoutMillis:3000
};
var pool=new pg.Pool(config);
var admin_config=
{
	user:"administer",
    database:"railway",
    password:"123456",
    port:5432,
    max:20,
    idleTimeoutMillis:3000
};
var admin_pool=new pg.Pool(admin_config);
function write_query_result(response,data)
{
	var filedata=fs.readFileSync('html/Query_key_first.html');
	var start_end=filedata.toString().split("<!--replace-->");
	var second_filedata=fs.readFileSync('html/Query_key_second.html');
	var second_string=second_filedata.toString();
	for(var i=0;i<data.rows.length;++i)
	{
		var front_str=start_end[0];
		front_str=front_str.replace('entry_id_1','con_'+i);
		front_str=front_str.replace('entry_id_2','entry_'+i);
		front_str=front_str.replace('entry_id_1','con_'+i);
		front_str=front_str.replace('entry_id_2','entry_'+i);
		front_str=front_str.replace('train_no',data.rows[i].train_no);
		front_str=front_str.replace('dpttime',data.rows[i].dpttime);
		front_str=front_str.replace('dptstation_name',data.rows[i].dptstation_name);
		front_str=front_str.replace('excutiontime',data.rows[i].excutiontime);
		front_str=front_str.replace('arrtime',data.rows[i].arrtime);
		front_str=front_str.replace('arrstation_name',data.rows[i].arrstation_name);
		front_str=front_str.replace('first_price',data.rows[i].first_price);
		front_str=front_str.replace('second_price',data.rows[i].second_price);
		front_str=front_str.replace('first_remain',data.rows[i].first_remain);
		front_str=front_str.replace('second_remain',data.rows[i].second_remain);
		response.write(front_str);
		var far_ind=i;
		while(far_ind+1<data.rows.length&&data.rows[far_ind+1].train_id==data.rows[i].train_id)
		{
			++far_ind;
		}
		for(var j=i;j<=far_ind;++j)
		{
			var edit_string=second_string;
			edit_string=edit_string.replace('station_no',data.rows[j].station_no);
			edit_string=edit_string.replace('station_name',data.rows[j].station_name);
			if(j==i)
			{
				edit_string=edit_string.replace('arr_time','始发站');
			}
			else
			{
				edit_string=edit_string.replace('arr_time',data.rows[j].arr_time);
			}
			if(j==far_ind)
			{
				edit_string=edit_string.replace('start_time','终点站');
			}
			else
			{
				edit_string=edit_string.replace('start_time',data.rows[j].start_time);
			}
			if(j==i)
			{
				edit_string=edit_string.replace('time_diff','始发站');
			}
			else if(j==far_ind)
			{
				edit_string=edit_string.replace('time_diff','终点站');
			}
			else
			{
				edit_string=edit_string.replace('time_diff',data.rows[j].time_diff);
			}
			response.write(edit_string);
		}
		i=far_ind;
		response.write(start_end[1]);
	}
}
function query_data(user,response,pathname,query)
{
	var sql="select * from query('"+querystring.parse(query)["dptStation"]+"','"+querystring.parse(query)["arrStation"]+"',to_date('"+querystring.parse(query)["dptDate"]+"','YYYY-MM-DD'))";
	console.log("SQL: "+sql);
	user.connect(function(err,client,done)
	{
		if(err)
		{
			return console.log('Database connection error!',err);
		}
		client.query(sql,function(err,data)
		{
			done();
			if(err)
			{
				return console.log('Query error!',err);
			}
			var filedata=fs.readFileSync(pathname.substr(1));
			response.writeHead(200,{"Content-Type":"text/html"});
			var start_end=filedata.toString().split("<!--replace-->");
			response.write(start_end[0]);
			write_query_result(response,data);
			response.write(start_end[1]);
			response.end();
		});
	});
}
function train_query_data(user,response,pathname,query)
{
	var sql="select * from train_query('"+querystring.parse(query)["StationNo"]+"',to_date('"+querystring.parse(query)["dptDate"]+"','YYYY-MM-DD'))";
	console.log("SQL: "+sql);
	user.connect(function(err,client,done)
	{
		if(err)
		{
			return console.log('Database connection error!',err);
		}
		client.query(sql,function(err,data)
		{
			done();
			if(err)
			{
				return console.log('Query error!',err);
			}
			var filedata=fs.readFileSync(pathname.substr(1));
			response.writeHead(200,{"Content-Type":"text/html"});
			var start_end=filedata.toString().split("<!--replace-->");
			response.write(start_end[0]);
			write_query_result(response,data);
			response.write(start_end[1]);
			response.end();
		});
	});
}
function write_alert(alert_string)
{
	return "alert(\""+alert_string+"\");";
}
function edit_address(title,address)
{
	return "var stateObject={};var title=\""+title+"\";var newUrl=\""+address+"\";history.pushState(stateObject,title,newUrl);";
}
function buy_ticket(response,pathname,query)
{
	var sql="select * from buy_ticket('"+querystring.parse(query)["stationNo"]+"','"+querystring.parse(query)["dptStation"]+"','"+querystring.parse(query)["arrStation"]+"','"+querystring.parse(query)["dptDate"]+"','"+querystring.parse(query)["seat"]+"','"+querystring.parse(query)["peopleName"]+"','"+querystring.parse(query)["peopleId"]+"','"+querystring.parse(query)["peopleTel"]+"')";
	console.log("SQL: "+sql);
	pool.connect(function(err,client,done)
	{
		if(err)
		{
			return console.log('Database connection error!',err);
		}
		client.query(sql,function(err,data)
		{
			done();
			if(err)
			{
				return console.log('Query error!',err);
			}
			var filedata=fs.readFileSync(pathname.substr(1));
			var w_string=filedata.toString();
			response.writeHead(200,{"Content-Type":"text/html"});
			var alert_string=data.rows[0].buy_ticket;
			console.log(alert_string);
			w_string=w_string.replace('<!--alert-->',write_alert(alert_string)+edit_address('UserBuy',pathname));
			response.write(w_string);
			response.end();
		});
	});
}
function query_order(response,pathname,alert_string='')
{
	var sql="select * from order_query() order by ticket_id desc";
	console.log("SQL: "+sql);
	pool.connect(function(err,client,done)
	{
		if(err)
		{
			return console.log('Database connection error!',err);
		}
		client.query(sql,function(err,data)
		{
			done();
			if(err)
			{
				return console.log('Query error!',err);
			}
			var filedata=fs.readFileSync(pathname.substr(1));
			var start_end=filedata.toString().split("<!--replace-->");
			var w_string=start_end[0];
			if(alert_string!='')
			{
				w_string=w_string.replace('<!--alert-->',write_alert(alert_string)+edit_address('UserOrder',pathname));
			}
			response.write(w_string);
			var second_string=fs.readFileSync('html/Order_query.html').toString();
			for(var i=0;i<data.rows.length;++i)
			{
				var list_string=second_string;
				list_string=list_string.replace('entry_id','entry_'+i);
				list_string=list_string.replace('entry_id','entry_'+i);
				list_string=list_string.replace('start_train_station',data.rows[i].start_train_station);
				list_string=list_string.replace('end_train_station',data.rows[i].end_train_station);
				list_string=list_string.replace('ticket_id',data.rows[i].ticket_id);
				list_string=list_string.replace('ticket_id',data.rows[i].ticket_id);
				if(data.rows[i].state=='已支付')
				{
					list_string=list_string.replace(';visibility:hidden','')
				}
				list_string=list_string.replace('username',data.rows[i].username);
				list_string=list_string.replace('id_card_number',data.rows[i].id_card_number);
				list_string=list_string.replace('phone_number',data.rows[i].phone_number);
				list_string=list_string.replace('dpt_date',data.rows[i].dpt_date);
				list_string=list_string.replace('dpt_time',data.rows[i].dpt_time);
				list_string=list_string.replace('arr_time',data.rows[i].arr_time);
				list_string=list_string.replace('train_no',data.rows[i].train_no);
				list_string=list_string.replace('entrance',data.rows[i].entrance);
				list_string=list_string.replace('seat_type',data.rows[i].seat_type);
				list_string=list_string.replace('seat_info',data.rows[i].seat_info);
				list_string=list_string.replace('price',data.rows[i].price);
				list_string=list_string.replace('state',data.rows[i].state);
				response.write(list_string);
			}
			response.write(start_end[1]);
			response.end();
		});
	});
}
function query_order_by_id(query,response,pathname,alert_string='')
{
	var sql;
	if(querystring.parse(query)['userId']==null)
	{
		sql="select * from order_query() order by ticket_id desc";
	}
	else
	{
		sql="select * from query_order_by_id('"+querystring.parse(query)['userId']+"') order by ticket_id desc";
	}
	console.log("SQL: "+sql);
	admin_pool.connect(function(err,client,done)
	{
		if(err)
		{
			return console.log('Database connection error!',err);
		}
		client.query(sql,function(err,data)
		{
			done();
			if(err)
			{
				return console.log('Query error!',err);
			}
			var filedata=fs.readFileSync(pathname.substr(1));
			var start_end=filedata.toString().split("<!--replace-->");
			var w_string=start_end[0];
			if(alert_string!='')
			{
				w_string=w_string.replace('<!--alert-->',write_alert(alert_string)+edit_address('AdminOrderManage',pathname));
			}
			response.write(w_string);
			var second_string=fs.readFileSync('html/Admin_order_query.html').toString();
			for(var i=0;i<data.rows.length;++i)
			{
				var list_string=second_string;
				list_string=list_string.replace('entry_id','entry_'+i);
				list_string=list_string.replace('entry_id','entry_'+i);
				list_string=list_string.replace('start_train_station',data.rows[i].start_train_station);
				list_string=list_string.replace('end_train_station',data.rows[i].end_train_station);
				list_string=list_string.replace('ticket_id',data.rows[i].ticket_id);
				list_string=list_string.replace('ticket_id',data.rows[i].ticket_id);
				list_string=list_string.replace('username',data.rows[i].username);
				list_string=list_string.replace('id_card_number',data.rows[i].id_card_number);
				list_string=list_string.replace('phone_number',data.rows[i].phone_number);
				list_string=list_string.replace('dpt_date',data.rows[i].dpt_date);
				list_string=list_string.replace('dpt_time',data.rows[i].dpt_time);
				list_string=list_string.replace('arr_time',data.rows[i].arr_time);
				list_string=list_string.replace('train_no',data.rows[i].train_no);
				list_string=list_string.replace('entrance',data.rows[i].entrance);
				list_string=list_string.replace('seat_type',data.rows[i].seat_type);
				list_string=list_string.replace('seat_info',data.rows[i].seat_info);
				list_string=list_string.replace('price',data.rows[i].price);
				list_string=list_string.replace('state',data.rows[i].state);
				response.write(list_string);
			}
			response.write(start_end[1]);
			response.end();
		});
	});
}
function refund(response,pathname,query)
{
	var sql="select * from refund_ticket("+querystring.parse(query)["refund_ticket_id"]+")";
	console.log("SQL: "+sql);
	pool.connect(function(err,client,done)
	{
		if(err)
		{
			return console.log('Database connection error!',err);
		}
		client.query(sql,function(err,data)
		{
			done();
			if(err)
			{
				return console.log('Query error!',err);
			}
			var alert_string=data.rows[0].refund_ticket;
			console.log(alert_string);
			query_order(response,pathname,alert_string);
		});
	});
}
function delete_ticket(response,pathname,query)
{
	var sql="select * from del_ticket("+querystring.parse(query)["delete_ticket_id"]+")";
	console.log("SQL: "+sql);
	admin_pool.connect(function(err,client,done)
	{
		if(err)
		{
			return console.log('Database connection error!',err);
		}
		client.query(sql,function(err,data)
		{
			done();
			if(err)
			{
				return console.log('Query error!',err);
			}
			var alert_string=data.rows[0].del_ticket;
			console.log(alert_string);
			query_order_by_id(query,response,pathname,alert_string);
		});
	});
}
function write_manage_end(response,end_string)
{
	var sql="select * from edit_log order by edit_time desc";
	console.log("SQL: "+sql);
	admin_pool.connect(function(err,client,done)
	{
		if(err)
		{
			return console.log('Database connection error!',err);
		}
		client.query(sql,function(err,data)
		{
			done();
			if(err)
			{
				return console.log('Query error!',err);
			}
			var third_string=fs.readFileSync('html/Log_query.html').toString();
			for(var i=0;i<data.rows.length;++i)
			{
				var list_string=third_string;
				list_string=list_string.replace('edit_time',data.rows[i].edit_time);
				list_string=list_string.replace('table_name',data.rows[i].table_name);
				list_string=list_string.replace('primary_key',data.rows[i].primary_key);
				list_string=list_string.replace('column_name',data.rows[i].column_name);
				list_string=list_string.replace('from_value',data.rows[i].from_value);
				list_string=list_string.replace('to_value',data.rows[i].to_value);
				list_string=list_string.replace('operation_type',data.rows[i].operation_type);
				list_string=list_string.replace('editor',data.rows[i].editor);
				response.write(list_string);
			}
			response.write(end_string);
			response.end();
		});
	});
}
function data_manage(response,pathname,alert_string='')
{
	var sql="select * from user_info()";
	console.log("SQL: "+sql);
	admin_pool.connect(function(err,client,done)
	{
		if(err)
		{
			return console.log('Database connection error!',err);
		}
		client.query(sql,function(err,data)
		{
			done();
			if(err)
			{
				return console.log('Query error!',err);
			}
			var filedata=fs.readFileSync(pathname.substr(1));
			var start_end=filedata.toString().split("<!--replace-->");
			var w_string=start_end[0];
			if(alert_string!='')
			{
				w_string=w_string.replace('<!--alert-->',write_alert(alert_string)+edit_address('AdminDataManage',pathname));
			}
			response.write(w_string);
			var second_string=fs.readFileSync('html/User_query.html').toString();
			for(var i=0;i<data.rows.length;++i)
			{
				var list_string=second_string;
				list_string=list_string.replace('user_id',data.rows[i].user_id);
				list_string=list_string.replace('username',data.rows[i].username);
				list_string=list_string.replace('id_card_number',data.rows[i].id_card_number);
				list_string=list_string.replace('phone_number',data.rows[i].phone_number);
				response.write(list_string);
			}
			response.write(start_end[1]);
			write_manage_end(response,start_end[2]);
		});
	});
}
function edit_user_name(response,pathname,query)
{
	var sql="select * from update_username("+querystring.parse(query)['userid']+",'"+querystring.parse(query)['username']+"')";
	console.log("SQL: "+sql);
	admin_pool.connect(function(err,client,done)
	{
		if(err)
		{
			return console.log('Database connection error!',err);
		}
		client.query(sql,function(err,data)
		{
			done();
			var alert_string;
			if(err)
			{
				console.log('Query error!',err);
				alert_string='您要修改的信息不正确！';
			}
			else
			{
				alert_string=data.rows[0].update_username;
			}
			console.log(alert_string);
			data_manage(response,pathname,alert_string);
		});
	});
}
function edit_user_id_card(response,pathname,query)
{
	var sql="select * from update_id_card_number("+querystring.parse(query)['userid']+",'"+querystring.parse(query)['user_id_card_no']+"')";
	console.log("SQL: "+sql);
	admin_pool.connect(function(err,client,done)
	{
		if(err)
		{
			return console.log('Database connection error!',err);
		}
		client.query(sql,function(err,data)
		{
			done();
			var alert_string;
			if(err)
			{
				console.log('Query error!',err);
				alert_string='您要修改的信息不正确！';
			}
			else
			{
				alert_string=data.rows[0].update_id_card_number;
			}
			console.log(alert_string);
			data_manage(response,pathname,alert_string);
		});
	});
}
function edit_user_phone_no(response,pathname,query)
{
	var sql="select * from update_phone("+querystring.parse(query)['userid']+",'"+querystring.parse(query)['phone_number']+"')";
	console.log("SQL: "+sql);
	admin_pool.connect(function(err,client,done)
	{
		if(err)
		{
			return console.log('Database connection error!',err);
		}
		client.query(sql,function(err,data)
		{
			done();
			var alert_string;
			if(err)
			{
				console.log('Query error!',err);
				alert_string='您要修改的信息不正确！';
			}
			else
			{
				alert_string=data.rows[0].update_phone;
			}
			console.log(alert_string);
			data_manage(response,pathname,alert_string);
		});
	});
}
function del_user(response,pathname,query)
{
	var sql="select * from del_user("+querystring.parse(query)['userid']+")";
	console.log("SQL: "+sql);
	admin_pool.connect(function(err,client,done)
	{
		if(err)
		{
			return console.log('Database connection error!',err);
		}
		client.query(sql,function(err,data)
		{
			done();
			var alert_string;
			if(err)
			{
				console.log('Query error!',err);
				alert_string='您要修改的信息不正确！';
			}
			else
			{
				alert_string=data.rows[0].del_user;
			}
			console.log(alert_string);
			data_manage(response,pathname,alert_string);
		});
	});
}
function add_station_to_js(name)
{
	var current_file=fs.readFileSync('library/citySelect/js/citydata.min.js').toString();
	var new_file=current_file.substr(0,current_file.length-1);
	new_file=new_file+",{'id': '100010', 'parentId': '100010', 'shortName': '"+name+"', 'name': '"+name+"', 'cityCode': 'KVQ', 'pinyin': 'new_station', 'letter': 'n'}";
	new_file=new_file+"]";
	fs.writeFileSync('library/citySelect/js/citydata.min.js',new_file);
}
function add_station(response,pathname,query)
{
	var sql="select * from add_station('"+querystring.parse(query)['add_station_name']+"')";
	console.log("SQL: "+sql);
	admin_pool.connect(function(err,client,done)
	{
		if(err)
		{
			return console.log('Database connection error!',err);
		}
		client.query(sql,function(err,data)
		{
			done();
			var alert_string;
			if(err)
			{
				console.log('Query error!',err);
				alert_string='您要修改的信息不正确！';
			}
			else
			{
				alert_string=data.rows[0].add_station;
				add_station_to_js(querystring.parse(query)['add_station_name']);
			}
			console.log(alert_string);
			data_manage(response,pathname,alert_string);
		});
	});
}
function del_station(response,pathname,query)
{
	var sql="select * from del_station('"+querystring.parse(query)['del_station_name']+"')";
	console.log("SQL: "+sql);
	admin_pool.connect(function(err,client,done)
	{
		if(err)
		{
			return console.log('Database connection error!',err);
		}
		client.query(sql,function(err,data)
		{
			done();
			var alert_string;
			if(err)
			{
				console.log('Query error!',err);
				alert_string='您要修改的信息不正确！';
			}
			else
			{
				alert_string=data.rows[0].del_station;
			}
			console.log(alert_string);
			data_manage(response,pathname,alert_string);
		});
	});
}
function add_train(response,pathname,query)
{
	var sql="select * from add_train('"
		+querystring.parse(query)['train_no']+"','"
		+querystring.parse(query)['start_date']+"','"
		+querystring.parse(query)['station_name']+"','"
		+querystring.parse(query)['arr_time']+"','"
		+querystring.parse(query)['start_time']+"',"
		+querystring.parse(query)['arr_day']+",'"
		+querystring.parse(query)['entrance']+"','"
		+querystring.parse(query)['interval_mile']+"','"
		+querystring.parse(query)['first_price']+"',"
		+querystring.parse(query)['first_remain']+",'"
		+querystring.parse(query)['second_price']+"',"
		+querystring.parse(query)['second_remain']
	+")";
	console.log("SQL: "+sql);
	admin_pool.connect(function(err,client,done)
	{
		if(err)
		{
			return console.log('Database connection error!',err);
		}
		client.query(sql,function(err,data)
		{
			done();
			var alert_string;
			if(err)
			{
				console.log('Query error!',err);
				alert_string='您要修改的信息不正确！';
			}
			else
			{
				alert_string=data.rows[0].add_train;
			}
			console.log(alert_string);
			data_manage(response,pathname,alert_string);
		});
	});
}
function del_train(response,pathname,query)
{
	var sql="select * from del_train('"+querystring.parse(query)['train_no']+"','"+querystring.parse(query)['start_date']+"')";
	console.log("SQL: "+sql);
	admin_pool.connect(function(err,client,done)
	{
		if(err)
		{
			return console.log('Database connection error!',err);
		}
		client.query(sql,function(err,data)
		{
			done();
			var alert_string;
			if(err)
			{
				console.log('Query error!',err);
				alert_string='您要修改的信息不正确！';
			}
			else
			{
				alert_string=data.rows[0].del_train;
			}
			console.log(alert_string);
			data_manage(response,pathname,alert_string);
		});
	});
}
function update_add_station(response,pathname,query)
{
	var sql="select * from update_add_station('"
		+querystring.parse(query)['train_no']+"','"
		+querystring.parse(query)['start_date']+"','"
		+querystring.parse(query)['station_name']+"',"
		+querystring.parse(query)['station_no']+",'"
		+querystring.parse(query)['arr_time']+"','"
		+querystring.parse(query)['start_time']+"',"
		+querystring.parse(query)['arr_day']+",'"
		+querystring.parse(query)['entrance']+"','"
		+querystring.parse(query)['interval_mile']+"','"
		+querystring.parse(query)['first_price']+"',"
		+querystring.parse(query)['first_remain']+",'"
		+querystring.parse(query)['second_price']+"',"
		+querystring.parse(query)['second_remain']
	+")";
	console.log("SQL: "+sql);
	admin_pool.connect(function(err,client,done)
	{
		if(err)
		{
			return console.log('Database connection error!',err);
		}
		client.query(sql,function(err,data)
		{
			done();
			var alert_string;
			if(err)
			{
				console.log('Query error!',err);
				alert_string='您要修改的信息不正确！';
			}
			else
			{
				alert_string=data.rows[0].update_add_station;
			}
			console.log(alert_string);
			data_manage(response,pathname,alert_string);
		});
	});
}
function update_del_station(response,pathname,query)
{
	var sql="select * from update_del_station('"+querystring.parse(query)['train_no']+"','"+querystring.parse(query)['start_date']+"',"+querystring.parse(query)['del_station_no']+")";
	console.log("SQL: "+sql);
	admin_pool.connect(function(err,client,done)
	{
		if(err)
		{
			return console.log('Database connection error!',err);
		}
		client.query(sql,function(err,data)
		{
			done();
			var alert_string;
			if(err)
			{
				console.log('Query error!',err);
				alert_string='您要修改的信息不正确！';
			}
			else
			{
				alert_string=data.rows[0].update_del_station;
			}
			console.log(alert_string);
			data_manage(response,pathname,alert_string);
		});
	});
}
function update_seat_price(response,pathname,query)
{
	var sql="select * from update_seat_price('"+querystring.parse(query)['train_no']+"','"+querystring.parse(query)['start_date']+"',"+querystring.parse(query)['station_no']+",'"+querystring.parse(query)['seat_type']+"','"+querystring.parse(query)['price']+"')";
	console.log("SQL: "+sql);
	admin_pool.connect(function(err,client,done)
	{
		if(err)
		{
			return console.log('Database connection error!',err);
		}
		client.query(sql,function(err,data)
		{
			done();
			var alert_string;
			if(err)
			{
				console.log('Query error!',err);
				alert_string='您要修改的信息不正确！';
			}
			else
			{
				alert_string=data.rows[0].update_seat_price;
			}
			console.log(alert_string);
			data_manage(response,pathname,alert_string);
		});
	});
}
function update_time(response,pathname,query)
{
	var sql="select * from update_time('"+querystring.parse(query)['train_no']+"','"+querystring.parse(query)['start_date']+"',"+querystring.parse(query)['arr_station_no']+","+querystring.parse(query)['arr_day']+",'"+querystring.parse(query)['arr_time']+"','"+querystring.parse(query)['dpt_time']+"')";
	console.log("SQL: "+sql);
	admin_pool.connect(function(err,client,done)
	{
		if(err)
		{
			return console.log('Database connection error!',err);
		}
		client.query(sql,function(err,data)
		{
			done();
			var alert_string;
			if(err)
			{
				console.log('Query error!',err);
				alert_string='您要修改的信息不正确！';
			}
			else
			{
				alert_string=data.rows[0].update_time;
			}
			console.log(alert_string);
			data_manage(response,pathname,alert_string);
		});
	});
}
function update_seat_remain(response,pathname,query)
{
	var sql="select * from update_seat_remain('"+querystring.parse(query)['train_no']+"','"+querystring.parse(query)['start_date']+"',"+querystring.parse(query)['station_no']+",'"+querystring.parse(query)['seat_type']+"',"+querystring.parse(query)['remain']+")";
	console.log("SQL: "+sql);
	admin_pool.connect(function(err,client,done)
	{
		if(err)
		{
			return console.log('Database connection error!',err);
		}
		client.query(sql,function(err,data)
		{
			done();
			var alert_string;
			if(err)
			{
				console.log('Query error!',err);
				alert_string='您要修改的信息不正确！';
			}
			else
			{
				alert_string=data.rows[0].update_seat_remain;
			}
			console.log(alert_string);
			data_manage(response,pathname,alert_string);
		});
	});
}
function update_train_entrance(response,pathname,query)
{
	var sql="select * from update_train_entrance('"+querystring.parse(query)['train_no']+"','"+querystring.parse(query)['start_date']+"',"+querystring.parse(query)['station_no']+",'"+querystring.parse(query)['entrance']+"')";
	console.log("SQL: "+sql);
	admin_pool.connect(function(err,client,done)
	{
		if(err)
		{
			return console.log('Database connection error!',err);
		}
		client.query(sql,function(err,data)
		{
			done();
			var alert_string;
			if(err)
			{
				console.log('Query error!',err);
				alert_string='您要修改的信息不正确！';
			}
			else
			{
				alert_string=data.rows[0].update_train_entrance;
			}
			console.log(alert_string);
			data_manage(response,pathname,alert_string);
		});
	});
}
function del_log(response,pathname)
{
	var sql="delete from edit_log where edit_time::date<=current_timestamp::date";
	console.log("SQL: "+sql);
	admin_pool.connect(function(err,client,done)
	{
		if(err)
		{
			return console.log('Database connection error!',err);
		}
		client.query(sql,function(err,data)
		{
			done();
			var alert_string;
			if(err)
			{
				console.log('Query error!',err);
				alert_string='删除失败！';
			}
			else
			{
				alert_string='删除日志成功！';
			}
			console.log(alert_string);
			data_manage(response,pathname,alert_string);
		});
	});
}
function write_static_html(response,path)
{
	fs.readFile(path,function(err,data)
	{
		if(err)
		{
			console.log(err);
			response.writeHead(404,{'Content-Type':'text/html'});
		}
		else
		{
			response.writeHead(200,{'Content-Type':'text/html'});
			response.write(data.toString());
		}
		response.end();
	});
}
function is_add_train(query)
{
	return querystring.parse(query)['train_no']!=null
		&&querystring.parse(query)['start_date']!=null
		&&querystring.parse(query)['station_name']!=null
		&&querystring.parse(query)['arr_time']!=null
		&&querystring.parse(query)['start_time']!=null
		&&querystring.parse(query)['arr_day']!=null
		&&querystring.parse(query)['entrance']!=null
		&&querystring.parse(query)['interval_mile']!=null
		&&querystring.parse(query)['first_price']!=null
		&&querystring.parse(query)['first_remain']!=null
		&&querystring.parse(query)['second_price']!=null
		&&querystring.parse(query)['second_remain']!=null
	;
}
function is_update_add_station(query)
{
	return querystring.parse(query)['train_no']!=null
		&&querystring.parse(query)['start_date']!=null
		&&querystring.parse(query)['station_name']!=null
		&&querystring.parse(query)['station_no']!=null
		&&querystring.parse(query)['arr_time']!=null
		&&querystring.parse(query)['start_time']!=null
		&&querystring.parse(query)['arr_day']!=null
		&&querystring.parse(query)['entrance']!=null
		&&querystring.parse(query)['interval_mile']!=null
		&&querystring.parse(query)['first_price']!=null
		&&querystring.parse(query)['first_remain']!=null
		&&querystring.parse(query)['second_price']!=null
		&&querystring.parse(query)['second_remain']!=null
	;
}
function start(route)
{
	function onRequest(request,response)
	{
		var pathname=url.parse(request.url).pathname;
		var query=url.parse(request.url).query;
		console.log("Request for "+pathname+" received.");
		if(pathname=='/')
		{
			write_static_html(response,'Login.html');
		}
		else if(pathname=='/html/UserQuery.html'||pathname=='/html/UserTrainQuery.html'||pathname=='/html/AdminQuery.html'||pathname=='/html/AdminTrainQuery.html')
		{
			if(pathname=='/html/UserQuery.html'||pathname=='/html/AdminQuery.html')
			{
				if(query==null)
				{
					write_static_html(response,pathname.substr(1));
				}
				else
				{
					if(pathname=='/html/UserQuery.html')
					{
						query_data(pool,response,pathname,query);
					}
					else
					{
						query_data(admin_pool,response,pathname,query);
					}
				}
			}
			else if(pathname=='/html/UserTrainQuery.html'||pathname=='/html/AdminTrainQuery.html')
			{
				if(query==null)
				{
					write_static_html(response,pathname.substr(1));
				}
				else
				{
					if(pathname=='/html/UserTrainQuery.html')
					{
						train_query_data(pool,response,pathname,query);
					}
					else
					{
						train_query_data(admin_pool,response,pathname,query);
					}
				}
			}
		}
		else if(pathname=='/html/UserBuy.html')
		{
			if(query==null)
			{
				write_static_html(response,pathname.substr(1));
			}
			else
			{
				buy_ticket(response,pathname,query);
			}
		}
		else if(pathname=='/html/UserOrderQuery.html')
		{
			response.writeHead(200,{"Content-Type":"text/html"});
			if(query==null)
			{
				query_order(response,pathname);
			}
			else
			{
				refund(response,pathname,query);
			}
		}
		else if(pathname=='/html/AdminOrderManage.html')
		{
			if(querystring.parse(query)['delete_ticket_id']==null)
			{
				query_order_by_id(query,response,pathname);
			}
			else
			{
				delete_ticket(response,pathname,query);
			}
		}
		else if(pathname=='/html/AdminDataManage.html')
		{
			if(query==null)
			{
				data_manage(response,pathname);
			}
			else if(querystring.parse(query)['userid']!=null&&querystring.parse(query)['username']!=null)
			{
				edit_user_name(response,pathname,query);
			}
			else if(querystring.parse(query)['userid']!=null&&querystring.parse(query)['user_id_card_no']!=null)
			{
				edit_user_id_card(response,pathname,query);
			}
			else if(querystring.parse(query)['userid']!=null&&querystring.parse(query)['phone_number']!=null)
			{
				edit_user_phone_no(response,pathname,query);
			}
			else if(querystring.parse(query)['userid']!=null)
			{
				del_user(response,pathname,query);
			}
			else if(querystring.parse(query)['add_station_name']!=null)
			{
				add_station(response,pathname,query);
			}
			else if(querystring.parse(query)['del_station_name']!=null)
			{
				del_station(response,pathname,query);
			}
			else if(querystring.parse(query)['train_no']!=null&&querystring.parse(query)['start_date']!=null&&querystring.parse(query)['station_no']!=null&&querystring.parse(query)['seat_type']!=null&&querystring.parse(query)['price']!=null)
			{
				update_seat_price(response,pathname,query);
			}
			else if(querystring.parse(query)['train_no']!=null&&querystring.parse(query)['start_date']!=null&&querystring.parse(query)['station_no']!=null&&querystring.parse(query)['seat_type']!=null&&querystring.parse(query)['remain']!=null)
			{
				update_seat_remain(response,pathname,query);
			}
			else if(is_update_add_station(query))
			{
				update_add_station(response,pathname,query);
			}
			else if(is_add_train(query))
			{
				add_train(response,pathname,query);
			}
			else if(querystring.parse(query)['train_no']!=null&&querystring.parse(query)['start_date']!=null&&querystring.parse(query)['station_no']!=null&&querystring.parse(query)['entrance']!=null)
			{
				update_train_entrance(response,pathname,query);
			}
			else if(querystring.parse(query)['train_no']!=null&&querystring.parse(query)['start_date']&&querystring.parse(query)['arr_station_no']!=null&&querystring.parse(query)['arr_day']!=null&&querystring.parse(query)['arr_time']!=null&&querystring.parse(query)['dpt_time']!=null)
			{
				update_time(response,pathname,query);
			}
			else if(querystring.parse(query)['train_no']!=null&&querystring.parse(query)['start_date']!=null&&querystring.parse(query)['del_station_no']!=null)
			{
				update_del_station(response,pathname,query);
			}
			else if(querystring.parse(query)['train_no']!=null&&querystring.parse(query)['start_date']!=null)
			{
				del_train(response,pathname,query);
			}
			else if(querystring.parse(query)['del_log']!=null)
			{
				del_log(response,pathname);
			}
			else
			{
				data_manage(response,pathname);
			}
		}
		else
		{
			fs.readFile(pathname.substr(1),function(err,data)
			{
				if(err)
				{
					console.log(err);
					response.writeHead(404,{'Content-Type':'text/html'});
					response.end();
				}
				else
				{
					response.writeHead(200);
					fs.createReadStream(pathname.substr(1)).pipe(response);
				}
			});
		}
	}
	http.createServer(onRequest).listen(8888);
	console.log("Server has started.");
}
exports.start=start;
