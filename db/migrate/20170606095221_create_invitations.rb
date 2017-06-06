class CreateInvitations < ActiveRecord::Migration[5.0]
  def change
    create_table :invitations do |t|
    t.integer "invited_to_id", foreign_key: true
    t.integer "invitee_id", foreign_key: true	
    end
  end
end
