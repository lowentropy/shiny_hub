host = 'localhost'
port = Mongo::Connection::DEFAULT_PORT
base = "mongodb://#{host}:#{port}"

uri  = ENV['MONGOHQ_URL'] || "#{base}/shiny_hub_#{Padrino.env}"

conn =  Mongo::Connection.from_uri(uri)
Mongoid.database = conn.db(URI.parse(uri).path.gsub(/^\//, ''))
