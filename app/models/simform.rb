class Simform < ApplicationRecord
    validates :name, :email, :password, presence: true
    validates :email, uniqueness: true
    # validates :password, length: {minimum: 6}
end
