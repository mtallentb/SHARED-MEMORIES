require "yaml"

convo = YAML::load_file('messages.yaml')

class Mary

    def initialize(convo)
       @convo = convo
    end

    def add_message(message)
        @convo["Mary"] << message
        update_yaml = File.open('messages.yaml', 'r+')
        update_yaml.puts YAML::dump(@convo)
        update_yaml.close
    end

end

argv = ARGV[0]
new_message = Mary.new(convo)
puts new_message.add_message(argv)