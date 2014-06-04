require './server.rb'

# Display the server list
@server = Server.new
@server.list

# Get user selection
print "Make a selection: "
id = gets.chomp.to_i

# Display the selected server information
server = @server.select id
puts "Connecting to #{server['name']}..."
