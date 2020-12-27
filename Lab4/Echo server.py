import socket,threading
import asyncio

hello = [b'HTTP/1.0 200 OK\r\n',
b'Connection: close'
b'Content-Type:text/html; charset=utf-8\r\n',
b'\r\n',
b'<html><body>Hello World!<body></html>\r\n',
b'\r\n']

err404 = [b'HTTP/1.0 404 Not Found\r\n',
b'Connection: close'
b'Content-Type:text/html; charset=utf-8\r\n',
b'\r\n',
b'<html><body>404 Not Found<body></html>\r\n',
b'\r\n']

class Echo(threading.Thread):
    def __init__(self, conn, address):
        threading.Thread.__init__(self)
        self.conn = conn
        self.address = address

    def run(self):
        while True:
            data = self.conn.recv(2048)




async def dispatch(reader, writer):
    print(888)
    while True:
        data = await reader.readline()
        if data and data != b'exit':
            writer.write(data)
            print(data)
        else:
            break
    await writer.drain()
    writer.close()


if __name__ == '__main__':
    loop = asyncio.get_event_loop()
    coro = asyncio.start_server(dispatch, '127.0.0.1', 5555, loop=loop)
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