require 'socket'
server = UDPSocket.open # Using UDP here…
server.bind nil, 12321
loop do
    text, sender = server.recvfrom(1)
    server.send("#{Time.now}\n", 0, sender[3], sender[1])
end