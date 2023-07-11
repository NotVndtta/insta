class User < ApplicationRecord
  def self.ransackable_attributes(auth_object = nil)
    %w[email] 
  end
devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :posts, through: :likes
         has_many :likes
end
