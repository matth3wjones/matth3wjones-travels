class Trip < ActiveRecord::Base
  belongs_to  :host, class_name: 'User'
  has_many   :comments


  validates :destination, :destination, :host_id, :guest_id, null: false
end
