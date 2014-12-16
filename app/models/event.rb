class Event < ActiveRecord::Base
	def in_past?
		starts_at < Time.now
	end
end
