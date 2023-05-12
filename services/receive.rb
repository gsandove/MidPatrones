require "bunny"

connection = Bunny.new()
connection.start

channel = connection.create_channel
queue = channel.queue("Cola.Prueba")
#queue = channel.fanout("blog.post")

begin
    puts "[*] Esperando mensajes. Para salir presione CTRL+C"
    queue.subscribe(block: true) do |_delivery_info, _properties, body|
        puts "[x] Recibido #{body}"
    end
rescue Interrupt => _
    connection.close

    exit(0)
end