class MailchimpInterface

	def self.all_lists
		client.lists.list["data"]
	end

	def self.list_named(name)
		all_lists.select{ |l| l["name"] == name }.first
	end

	def self.members(list)
		client.lists.members(id: list["id"])["data"]
	end

	def self.client
		Gibbon::API.new
	end

	def self.subscribe(list, user)
		client.lists.subscribe({:id => list["id"], 
			:email => {:email => user.email}, 
			:merge_vars => {:FNAME => user.first_name, :LNAME => user.last_name}, 
			:double_optin => false})
	end
end