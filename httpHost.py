# Host HTTP Python
import SimpleHTTPServer
import SocketServer

HOST = '0.0.0.0'
PORT = 8000

Handler = SimpleHTTPServer.SimpleHTTPRequestHandler

httpd = SocketServer.TCPServer((HOST, PORT), Handler)

print "View log at http://%s:%d" % (HOST, PORT)
httpd.serve_forever()
