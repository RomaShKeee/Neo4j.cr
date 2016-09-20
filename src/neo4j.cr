require "json"
require "./neo4j/*"

module Neo4j
  def self.configure
    yield configuration
  end

  def self.configuration
    @@configuration ||= Config.new
  end
end
