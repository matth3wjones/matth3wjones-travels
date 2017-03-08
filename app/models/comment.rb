class Comment < ActiveRecord::Base
  belongs_to  :user

  validates  :trip_id, :user_id, :text, presence: true

  def author
    self.user.username
  end
end
