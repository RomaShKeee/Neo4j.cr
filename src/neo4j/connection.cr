module Neo4j
  module WasCreated; end

  class Connection
    USER_AGENT = "Neo4j/#{Neo4j::VERSION}"
    ACTIONS    = ["get", "post", "put", "delete"]

    property :protocol, :server, :port, :directory,
      :cypher_path, :gremlin_path,
      :log_file, :log_enabled, :logger, :slow_log_threshold,
      :max_threads,
      :authentication, :username, :password,
      :parser, :client,
      :proxy, :http_send_timeout, :http_receive_timeout

    def initialize(options = {} of Symbol | String => Number | String)
      config = merge_configuration(options)
    end

    private def merge_configuration(options)
      # options = parse_string_options(options) unless options.is_a? Hash
      # config = Neography.configuration.to_hash
      # config.merge(options)
    end
  end
end
