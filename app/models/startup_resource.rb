class StartupResource < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :name, :url
  
  def self.category_list
    all.group(:category).select(:category).collect{ |sr| sr.category }.sort
  end
end
