require "../spec_helper"

Spec2.describe Neo4j::Connection do
  let :connection { Neo4j::Connection.new }
  context "defaults" do
    it "intializes with defaults" do
      expect(connection.configuration).to eq("http://localhost:7474")
    end
  end
end
