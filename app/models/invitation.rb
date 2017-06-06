class Invitation < ApplicationRecord
belongs_to :invitee, class_name: "User"
belongs_to :event, foreign_key: "invited_to_id"

end
