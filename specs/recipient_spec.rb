require_relative "test_helper.rb"

describe "Recipient class" do
  let(:r) {
    Slack::Recipient.new(name: "test", id: "abc")
  }
  describe "initialize" do
    it "must be a kind of Recipient" do
      expect(r).must_be_instance_of Slack::Recipient
    end

    it "will respond to instance variable, and equal correct value" do
      expect(r).must_respond_to :name
      expect(r).must_respond_to :id
      expect(r.name).must_equal "test"
      expect(r.id).must_equal "abc"
    end
  end

  # Check details raising NotImplemented Error when being called

  describe "details method" do
    it "raises an error when being invoked by an instance of Recipient" do
      expect {
        r.details 
      }.must_raise NotImplementedError
    end
  end
end
