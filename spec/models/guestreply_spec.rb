require 'rails_helper'

RSpec.describe Guestreply, :type => :model do
	context "validation" do
		subject{build(:guestreply)}
		it{should be_valid}
		#test drive, do each test and make sure it passes
		it "should require a user" do
			expect(build(:guestreply, user: nil).not_to be_valid)
		end
		it "should require an event" do

		end

		it "should require the event to be in the future" do
			e = create(:event, starts_at: 2.weeks.ago)
			expect(build(:guestyreply, event: e)).not_to be_valid
		end

		let(:event){create(:event)}
		let(:user){create(:user)}
		before(:each) do
			event
		end

		describe "for an event" do
			login(user)
			click_link "Events"
			click_link event.title
			save_and_open_page
		end

		it "should accept a guestreply"
	end
end
