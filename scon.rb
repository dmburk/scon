require './server.rb'

# Display the server list
@server = Server.new
@server.list

# Get user selection
print "Make a selection: "
id = gets.chomp.to_i
server = @server.select id

# Build ssh connection string
scon = "ssh "
scon << "-i #{server['identity_file_path']} " if server['identity_file_path']
scon << "#{server['user']}@" if server['user']
scon << server['address']
scon << ":#{server['port']}" if server['port']

# TODO replace with connection command
puts "Connecting to " + scon
