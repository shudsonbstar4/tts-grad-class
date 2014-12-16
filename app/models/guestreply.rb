class Guestreply < ActiveRecord::Base
	belongs_to :user
	belongs_to :event
	validates :user, presence: true
	validates :event, presence: true
	validates :guest_count, inclusion: {in: 0..9}
	validate :only_future_events
end
