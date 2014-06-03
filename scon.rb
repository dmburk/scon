require 'yaml'

# Load server list
servers = begin
    YAML.load(File.open("./servers.yml"))
rescue ArgumentError => e
    puts "Could not parse YAML: #{e.message}"
end

# Display all servers
servers.each { |server| puts "#{server['id']}. #{server['name']}" }

# Get user selection
print "Make a selection: "
selection = gets.chomp.to_i

# Extract the selected server from the array
server = servers.find { |server| server['id'] == selection }

# Display the server information
puts "Connecting to #{server['name']}..."
