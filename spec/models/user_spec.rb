require 'rails_helper'

RSpec.describe User, type: :model do
  context "new user" do
    describe "#new" do
      x = User.new
      it "should be valid if the name is valid" do
        x.name = 'Bob'
        expect(x.valid?).to be_truthy
      end
      it "should be invalid if name is invalid" do
        x.name = nil
        expect(x.valid?).to be_falsy
      end
    end
  end
  # pending "add some examples to (or delete) #{__FILE__}"
end

RSpec.describe "the truth" do
  context "true" do
    it "should be true" do
      expect(true).to be_truthy
    end
  end
end