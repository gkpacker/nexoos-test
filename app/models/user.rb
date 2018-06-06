class User < ApplicationRecord
  validates :name, :phone_number, presence: true
  validates :phone_number, format: { with: /\d{4}-\d{4}/,
    message: "Phone number doesn't match valid format (XXXX-XXXX)" }
end
