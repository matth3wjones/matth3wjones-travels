class Comment < ActiveRecord::Base
  belongs_to  :user

  validates  :trip_id, :guest_id, :expense_id, presence: true
end
