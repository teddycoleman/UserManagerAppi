class User < ApplicationRecord
	validates :first_name, :last_name, :username, :email, presence: true
end
