require './server.rb'

# Display the server list
@server = Server.new
@server.list

# Get user selection
print "Make a selection: "
id = gets.chomp.to_i

server = @server.select id
# Display the selected server information
puts "Connecting to #{server['name']}..."
