class User < ActiveRecord::Base
  has_many  :trips_hosted, class_name: 'Trip', foreign_key: :host_id
  has_many  :expenses,  foreign_key: :guest_id
  has_many  :comments, through: :expenses, source: :comment

  validates :name, :email, :password, { presence: true }
  validates :email, uniqueness: true, format: {with: /\w+@\w+\.\w+/  }
end
