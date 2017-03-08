class Comment < ActiveRecord::Base
  belongs_to  :user

  validates  :trip_id, :guest_id, :text, presence: true
end
