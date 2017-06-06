class Event < ApplicationRecord

belongs_to :creator, class_name: 'User'  
has_many :attendance, foreign_key: 'attended_event_id'
has_many :attendees, through: :attendance
has_many :invitations, foreign_key: 'invited_to_id'
has_many :invitees, through: :invitations

scope :upcoming, -> {where("date > ? ", Time.now)} 
scope	:past, -> {where("date < ? ", Time.now)}
	



end
