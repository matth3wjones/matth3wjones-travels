class Expense < ActiveRecord::Base
  belongs_to  :guest, class_name: 'User'
  belongs_to  :trip
  has_many   :comments

  validates :trip_id, :guest_id, :cost, presence: true
end
