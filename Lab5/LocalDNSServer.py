import dnslib, time,random
from socket import *

SERVER_ADDR = '127.0.0.1'
SERVER_PORT = 12000
cache = {}
root = [('a.root-servers.net', '198.41.0.4'),
        ('b.root-servers.net', '199.9.14.201'),
        ('c.root-servers.net', '192.33.4.12'),
        ('d.root-servers.net', '199.7.91.13'),
        ('e.root-servers.net', '192.203.230.10'),
        ('f.root-servers.net', '192.5.5.241'),
        ('g.root-servers.net', '192.112.36.4'),
        ('h.root-servers.net', '198.97.190.53'),
        ('i.root-servers.net', '192.36.148.17'),
        ('j.root-servers.net', '192.58.128.30'),
        ('k.root-servers.net', '193.0.14.129'),
        ('l.root-servers.net', '199.7.83.42'),
        ('m.root-servers.net', '202.12.27.33')]

# define a class to initiate record
class Record():
    def __init__(self,curTime,ttl,header,rr,auth,ar):
        self.curTime = curTime
        self.ttl = ttl
        self.header = header
        self.rr = rr
        self.auth = auth
        self.ar = ar

# check whether the record is in cache
def CheckInCache(qname, qtype):
    if qname not in cache:
        cache[qname] = {}
        return False
    if qtype not in cache[qname]:
        return False
    # if the record in cache is out of date
    curTime = time.time()
    if curTime - cache[qname][qtype].curTime >= cache[qname][qtype].ttl:
        return False
    return True

# to get the record from our cache
# and update the ttl of the record in cache
def GetFromCache(qname, qtype, header):
    record:Record = cache[qname][qtype]
    curTime = int(time.time())
    deltaTime = curTime - record.curTime
    for rr in record.rr:
        rr.ttl -= deltaTime
    record.curTime = curTime
    record.ttl -= deltaTime
    result = dnslib.DNSRecord(dnslib.DNSHeader(id=header.id,qr=header.qr,aa=0,ra=0),q=dnslib.DNSQuestion(qname,qtype),rr=record.rr)
    result.header.qr = 1
    return bytes(result.pack())

# write the record into the cache
def WriteToCache(qname,qtype,msg):
    dnsMsg = dnslib.DNSRecord.parse(msg)
    ttl = 1<< 32
    for rr in dnsMsg.rr:
        ttl = min(ttl,rr.ttl)
    record:Record = Record(int(time.time()),ttl,dnsMsg.header,dnsMsg.rr,dnsMsg.a,dnsMsg.ar)
    cache[qname][qtype] = record

if __name__ == '__main__':
    server = socket(AF_INET, SOCK_DGRAM)
    server.bind((SERVER_ADDR,SERVER_PORT))
    client = socket(AF_INET, SOCK_DGRAM)

    while True:
        msg, client_addr = server.recvfrom(2048)
        req = dnslib.DNSRecord.parse(msg)
        qname, qtype, header = req.q.qname, req.q.qtype, req.header
        print('Query Message [%s, %s, %s]'%(client_addr, qname, qtype))

        if(CheckInCache(qname,qtype)):
            print('Get from cache')
            dnsMsg = GetFromCache(qname,qtype,header)
        else:
            if header.rd==0:
                print("Get from query")
                client.sendto(msg,('114.114.114.114',53))
                dnsMsg = client.recv(2048)
                WriteToCache(qname,qtype,dnsMsg)
            else:
                # let the client handle the query
                print("Get from Client query")

                # select a root server
                nextAddr = root[random.randint(0,12)][0]
                # record the rr
                recordList = []
                # set rd = 1
                req.header.rd = 1
                msg = bytes(req.pack())

                while True:
                    print("Address [%s]"%(nextAddr))
                    client.sendto(msg,(nextAddr,53))
                    resMsg = client.recv(2048)
                    tempReq = dnslib.DNSRecord.parse(resMsg)
                    recordList.extend(tempReq.rr)

                    if tempReq.header.a != 0:
                        # if the record is CNAME Type, then add an additional query to get canonical name
                        if tempReq.header.a == 1 and tempReq.q.qtype==1 and tempReq.rr[0].rtype == 5:
                            cur_req = dnslib.DNSRecord.parse(msg)
                            cur_req.q.qname = dnslib.DNSLabel(str(tempReq.rr[0].rdata))
                            cur_msg = bytes(cur_req.pack())
                            client.sendto(cur_msg,(str(tempReq.ar[0].rdata),53))
                            cur_rec = client.recv(2048)
                            cur_response = dnslib.DNSRecord.parse(cur_rec)
                            # add the query result
                            recordList.extend(cur_response.rr)
                        tempReq.rr = recordList
                        tempReq.header.a += 1
                        resMsg = bytes(tempReq.pack())
                        WriteToCache(tempReq.q.qname,tempReq.q.qtype,resMsg)
                        dnsMsg = GetFromCache(tempReq.q.qname,tempReq.q.qtype,tempReq.header)
                        break
                    nextAddr = str(tempReq.auth[0].rdata)
        server.sendto(dnsMsg,client_addr)

