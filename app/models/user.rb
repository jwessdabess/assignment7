class User < ApplicationRecord
	has_one :account
	has_many :todo_lists
	has_many :todo_items, through: :todo_lists, source: :todo_items
	has_secure_password
end
