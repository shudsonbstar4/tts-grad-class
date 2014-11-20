require 'rails_helper'

RSpec.describe StartupResource, :type => :model do
  context "validation" do
    subject{ build(:startup_resource) }
    it {should be_valid}
    it "should require a url" do
      expect(
      build(:startup_resource, url: nil)
      ).not_to be_valid
    end
    it "should require a name" do
      expect(
      build(:startup_resource, name: nil)
      ).not_to be_valid
    end    
  end
end
