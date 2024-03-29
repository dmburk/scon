require 'yaml'

class Server
  def initialize
    # Load server list
    @server_list = begin
      YAML.load(File.open('server_list.yml'))
    rescue ArgumentError => e
      puts "Could not parse YAML: #{e.message}"
    end
  end

  def list
    # Prints the list of stored servers
    @server_list.each { |server| puts "#{server['id']}. #{server['name']}" }
  end

  def select id
    # Extract the selected server from the array
    @server = @server_list.find { |server| server['id'] == id }
  end
end
