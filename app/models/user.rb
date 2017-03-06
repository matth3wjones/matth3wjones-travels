require 'bcrypt'

class User < ActiveRecord::Base
  has_many  :trips_hosted, class_name: 'Trip', foreign_key: :host_id
  has_many  :expenses,  foreign_key: :guest_id
  has_many  :comments, foreign_key: :guest_id

  validates :username, :email, :hashword, { presence: true }
  validates :email, uniqueness: true, format: { with: /\w+@\w+\.\w+/  }

  def authenticate(password)
    return false if self == nil
    self.password == password
  end

  def password
    @password ||= BCrypt::Password.new(hashword)
  end

  def password=(password)
    @password = BCrypt::Password.create(password)
    self.hashword = @password
  end

end
