require 'rails_helper'

RSpec.describe Event, :type => :model do
  context "time determinations" do
  	it "should identify a past event" do
  		expect(build(:event, starts_at: 2.weeks.from_now)).not_to be_in_past
  	end

  	it "should not identify a current event as being in the past" do
  		expect(build(:event, starts_at: 2.weeks.ago)).to be_in_past
  	end
  end
end
