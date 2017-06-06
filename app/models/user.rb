class User < ApplicationRecord
has_secure_password

has_many :events, foreign_key: 'creator_id'
has_many :attendance, foreign_key: 'attendee_id'
has_many :attended_events, through: :attendance
has_many :invitations, foreign_key: 'invitee_id'
has_many :parties, through: :invitations, source: :event

def upcoming_events 
attended_events.where("date > ?", Time.now)

end

def previous_events
attended_events.where("date < ?",  Time.now)
end	

end
