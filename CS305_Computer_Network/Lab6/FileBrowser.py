import asyncio
import urllib.parse
import os
import argparse
import time

LISTEN_ADDR = '127.0.0.1'
LISTEN_PORT = 8080
ROOT_PATH = '../../../../PyCharm Community Edition 2020.2.3/WorkSpace/venv'
mime_types = {'html': 'text/html', 'htm': 'text/html', 'shtml': 'text/html', 'css': 'text/css', 'xml': 'text/xml', 'gif': 'image/gif', 'jpeg': 'image/jpeg', 'jpg': 'image/jpeg', 'js': 'application/javascript', 'atom': 'application/atom+xml', 'rss': 'application/rss+xml', 'mml': 'text/mathml', 'txt': 'text/plain', 'jad': 'text/vnd.sun.j2me.app-descriptor', 'wml': 'text/vnd.wap.wml', 'htc': 'text/x-component', 'png': 'image/png', 'svg': 'image/svg+xml', 'svgz': 'image/svg+xml', 'tif': 'image/tiff', 'tiff': 'image/tiff', 'wbmp': 'image/vnd.wap.wbmp', 'webp': 'image/webp', 'ico': 'image/x-icon', 'jng': 'image/x-jng', 'bmp': 'image/x-ms-bmp', 'woff': 'font/woff', 'woff2': 'font/woff2', 'jar': 'application/java-archive', 'war': 'application/java-archive', 'ear': 'application/java-archive', 'json': 'application/json', 'hqx': 'application/mac-binhex40', 'doc': 'application/msword', 'pdf': 'application/pdf', 'ps': 'application/postscript', 'eps': 'application/postscript', 'ai': 'application/postscript', 'rtf': 'application/rtf', 'm3u8': 'application/vnd.apple.mpegurl', 'kml': 'application/vnd.google-earth.kml+xml', 'kmz': 'application/vnd.google-earth.kmz', 'xls': 'application/vnd.ms-excel', 'eot': 'application/vnd.ms-fontobject', 'ppt': 'application/vnd.ms-powerpoint', 'odg': 'application/vnd.oasis.opendocument.graphics', 'odp': 'application/vnd.oasis.opendocument.presentation', 'ods': 'application/vnd.oasis.opendocument.spreadsheet', 'odt': 'application/vnd.oasis.opendocument.text', 'wmlc': 'application/vnd.wap.wmlc', '7z': 'application/x-7z-compressed', 'cco': 'application/x-cocoa', 'jardiff': 'application/x-java-archive-diff', 'jnlp': 'application/x-java-jnlp-file', 'run': 'application/x-makeself', 'pl': 'application/x-perl', 'pm': 'application/x-perl', 'prc': 'application/x-pilot', 'pdb': 'application/x-pilot', 'rar': 'application/x-rar-compressed', 'rpm': 'application/x-redhat-package-manager', 'sea': 'application/x-sea', 'swf': 'application/x-shockwave-flash', 'sit': 'application/x-stuffit', 'tcl': 'application/x-tcl', 'tk': 'application/x-tcl', 'der': 'application/x-x509-ca-cert', 'pem': 'application/x-x509-ca-cert', 'crt': 'application/x-x509-ca-cert', 'xpi': 'application/x-xpinstall', 'xhtml': 'application/xhtml+xml', 'xspf': 'application/xspf+xml', 'zip': 'application/zip', 'bin': 'application/octet-stream', 'exe': 'application/octet-stream', 'dll': 'application/octet-stream', 'deb': 'application/octet-stream', 'dmg': 'application/octet-stream', 'iso': 'application/octet-stream', 'img': 'application/octet-stream', 'msi': 'application/octet-stream', 'msp': 'application/octet-stream', 'msm': 'application/octet-stream', 'mid': 'audio/midi', 'midi': 'audio/midi', 'kar': 'audio/midi', 'mp3': 'audio/mpeg', 'ogg': 'audio/ogg', 'm4a': 'audio/x-m4a', 'ra': 'audio/x-realaudio', '3gpp': 'video/3gpp', '3gp': 'video/3gpp', 'ts': 'video/mp2t', 'mp4': 'video/mp4', 'mpeg': 'video/mpeg', 'mpg': 'video/mpeg', 'mov': 'video/quicktime', 'webm': 'video/webm', 'flv': 'video/x-flv', 'm4v': 'video/x-m4v', 'mng': 'video/x-mng', 'asx': 'video/x-ms-asf', 'asf': 'video/x-ms-asf', 'wmv': 'video/x-ms-wmv', 'avi': 'video/x-msvideo'}

class Header():
    def __init__(self):
        self.method = None
        self.path = None
        self.range = None

    def parse_header(self,line):
        strs = line.split(' ')
        if strs[0] == 'GET' or strs[0] == 'POST' or strs[0] == 'HEAD':
            self.method = strs[0]
            self.path = strs[1]
        if strs[0] == 'Range:':
            self.range = strs[1]

class DirResponse():
    def __init__(self,temp_path,path):
        self.headerStart = ('HTTP/1.0 200 OK\r\n'
                            'Content-Type:text/html; charset=utf-8\r\n'
                            'Server: GH-AutoIndex\r\n'
                            'Connection: close\r\n')
        self.headerEnd = '\r\n'
        self.contentStart = ('<html><head><title>Index of %s</title></head>\r\n'
                             '<body bgcolor="white">\r\n'
                             '<h1>Index of %s</h1><hr>\r\n'
                             '<pre>\r\n' % (temp_path,temp_path))
        self.contentEnd = ('</pre>\r\n'
                           '<hr>\r\n'
                           '</body></html>\r\n')
        self.path = path
        self.temp_path = temp_path
        self.files = []
        self.directory = []

    def add_folder(self,name):
        if os.path.isfile(self.path + name):
            link = urllib.parse.quote(name)
            self.files.append('<a href="%s">%s</a>\r\n' % (link, name))
        else:
            name += '/'
            link = urllib.parse.quote(name)
            self.directory.append('<a href="%s">%s</a>\r\n' % (link, name))

    def get_content(self):
        content = self.contentStart
        for dir in self.directory:
            content += dir
        for file in self.files:
            content += file
        content += self.contentEnd
        return content.encode()

    def get_header(self):
        header = self.headerStart
        header += 'Content-Length: %d\r\n' % (len(self.get_content()))
        header += self.headerEnd
        return header.encode()

    def get_response(self):
        return self.get_header() + self.get_content()

class FileResponse():
    def __init__(self,path,range):
        self.path = path
        self.size = os.path.getsize(path)
        self.header = None
        self.begin = None
        self.end = None
        if range is None:
            self.header = ('HTTP/1.0 200 OK\r\n'
                           'Server: GH-AutoIndex\r\n'
                           'Content-Type: %s\r\n'
                           'Connection: close\r\n'
                           'Content-Length: %s\r\n'
                           'Accept-Ranges: bytes\r\n\r\n'%(self.get_type(),str(self.size)))
        else:
            self.begin, self.end = range[0], range[1]
            if self.end == -1:
                self.end += self.size
            self.header = ('HTTP/1.0 206 Partial Content\r\n'
                           'Server: GH-AutoIndex\r\n'
                           'Content-Type: %s\r\n'
                           'Content-Range: bytes %d-%d/%d\r\n'
                           'Connection: close\r\n'
                           'Content-Length: %s\r\n\r\n'%(self.get_type(),self.begin,self.end,self.size,str(self.end-self.begin+1)))

    def get_type(self):
        if self.path.split('.')[-1] in mime_types.keys():
            return mime_types[self.path.split('.')[-1]]
        else:
            return 'Application/octet-stream'

    def get_header(self):
        return self.header.encode()

    def get_content(self):
        file = open(self.path,'rb')
        if self.begin is None:
            content = file.read()
        else:
            file.seek(self.begin,0)
            content = file.read(self.end-self.begin+1)
        file.close()
        return content

    def get_response(self):
        return self.get_header() + self.get_content()

class NotExistResponse():
    def __init__(self):
        self.header = ('HTTP/1.0 404 Not Found\r\n'
                        'Content-Type:text/html; charset=utf-8\r\n'
                        'Server: GH-AutoIndex\r\n'
                        'Connection: close\r\n\r\n')
        self.content = ('<html>\r\n'
                        '<head><title>404 Not Found</title></head>\r\n'
                        '<body bgcolor="white">\r\n'
                        '<center><h1>404 Not Found</h1></center>\r\n'
                        '<hr><center>GH-AutoIndex/0.1.2</center>\r\n'
                        '</body>\r\n'
                        '</html>\r\n')

    def get_header(self):
        return self.header.encode()

    def get_content(self):
        return self.content.encode()

    def get_response(self):
        return self.get_header() + self.get_content()

class InvalidResponse():
    def __init__(self):
        self.header = ('HTTP/1.0 405 Method Not Allowed\r\n'
                        'Content-Type:text/html; charset=utf-8\r\n'
                        'Server: GH-AutoIndex\r\n'
                        'Connection: close\r\n\r\n')
        self.content = ('<html>\r\n'
                        '<head><title>405 Method Not Allowed</title></head>\r\n'
                        '<body bgcolor="white">\r\n'
                        '<center><h1>405 Method Not Allowed</h1></center>\r\n'
                        '<hr><center>GH-AutoIndex/0.1.2</center>\r\n'
                        '</body>\r\n'
                        '</html>\r\n')

    def get_header(self):
        return self.header.encode()

    def get_content(self):
        return self.content.encode()

    def get_response(self):
        time.sleep(2)
        return self.get_header() + self.get_content()

def parse_range(range):
    if range is not None:
        strs = range.split('=')
        if strs[0] == 'bytes':
            range_info = strs[1].split('-')
            if range_info[0] == '':
                begin = 0
            else:
                begin = int(range_info[0])
            if range_info[1] == '\r\n':
                end = -1
            else:
                end = int(range_info[1])
            return begin, end
        return None


async def dispatch(reader,writer):
    header_data = list()
    # receive header info
    while True:
        data = await reader.readline()
        header_data.append(data.decode())
        if data == b'\r\n':
            break
    # parse header info
    client_header = Header()
    for line in header_data:
        client_header.parse_header(line)
    # if method is neither GET or HEAD
    if client_header.method != 'GET' and client_header.method != 'HEAD':
        print('Invalid Method')
        response = InvalidResponse()
        writer.write(response.get_response())
    # if method is either GET or HEAD
    else:
        temp_path = urllib.parse.unquote(client_header.path)
        range = parse_range(client_header.range)
        path = ROOT_PATH + temp_path
        if os.path.isfile(path):            # if it is a file
            print("It is a file")
            response = FileResponse(path,range)
        elif os.path.isdir(path):           # if it is a dir
            print("It is a dir")
            response = DirResponse(temp_path,path)
            response.add_folder('..')
            for file in os.listdir(path):
                if file[0] != '.':
                    response.add_folder(file)
        else:                               # if it does not exist
            print("It does not exist")
            response = NotExistResponse()

        if client_header.method == 'GET':
            print("Using GET")
            writer.write(response.get_response())
        elif client_header.method == 'HEAD':
            print("Using Head")
            writer.write(response.get_header())


    await writer.drain()
    writer.close()





if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Simple Web File Browser')
    parser.add_argument('--port', type=int, default=8080,
                        help='an integer for the port of the simple web file browser')
    parser.add_argument('--dir', type=str, default="./",
                        help='The Directory that the browser should display for home page')
    args = parser.parse_args()
    LISTEN_PORT = args.port
    ROOT_PATH = args.dir
    loop = asyncio.get_event_loop()
    coro = asyncio.start_server(dispatch,LISTEN_ADDR,LISTEN_PORT,loop=loop)
    server = loop.run_until_complete(coro)

    # Serve requests until Ctrl+C is pressed
    print('Serving on {}'.format(server.sockets[0].getsockname()))
    try:
        loop.run_forever()
    except KeyboardInterrupt:
        pass

    # Close the server
    server.close()
    loop.run_until_complete(server.wait_closed())
    loop.close()