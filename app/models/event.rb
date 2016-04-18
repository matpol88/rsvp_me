class Event < ActiveRecord::Base

	belongs_to :user
	has_many :guests, dependent: :destroy
	validates_presence_of :location
	validates_presence_of :name
	validates_presence_of :event_time
	validates_presence_of :to_event_time
end
