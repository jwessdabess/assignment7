class Account < ApplicationRecord
  belongs_to :user

  validates :age, :inclusion => 21..99
  validates :gender, format: { with: /male|female|N\/A/}

end
