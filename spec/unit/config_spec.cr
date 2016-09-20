require "../spec_helper"

Spec2.describe Neo4j::Config do
  describe "default initialize value:" do
    it "protocol" do
      conf = Neo4j::Config.new
      expect(conf.protocol).to eq("http")
    end
  end

  it "has a hash representation" do
    config = Neo4j::Config.new
    expected_hash = {
      :protocol             => "http",
      :server               => "localhost",
      :port                 => 7474,
      :directory            => "",
      :cypher_path          => "/cypher",
      :gremlin_path         => "/ext/GremlinPlugin/graphdb/execute_script",
      :log_file             => "neo4j.log",
      :log_enabled          => false,
      :logger               => nil,
      :slow_log_threshold   => 0,
      :max_threads          => 20,
      :authentication       => nil,
      :username             => nil,
      :password             => nil,
      :parser               => JsonParser,
      :max_execution_time   => 6000,
      :proxy                => nil,
      :http_send_timeout    => 1200,
      :http_receive_timeout => 1200,
      :persistent           => true,
    }
    expect(config.to_hash).to eq(expected_hash)
  end
end
