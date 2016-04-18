class Guest < ActiveRecord::Base
	belongs_to :event

	validates_presence_of :name
	validates_presence_of :email
	validates_presence_of :event_id
	validates_presence_of :comingwith
end
