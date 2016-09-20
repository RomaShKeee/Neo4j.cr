require "./spec_helper"
# include Spec2::GlobalDSL

describe Neo4j do
  # TODO: Write tests
  # subject { Neo4j::Connection.new }
  let :connection { Neo4j.new }
  describe "::configure" do
    it "returns the same configuration" do
      expect(Neo4j.configuration).to eq(Neo4j.configuration)
    end

    it "returns the Config" do
      expect(Neo4j.configuration).to be_a Neo4j::Config
    end

    it "yields the configuration" do
      Neo4j.configure do |config|
        expect(config).to eq(Neo4j.configuration)
      end
    end
  end
end
