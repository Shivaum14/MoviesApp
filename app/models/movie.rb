class Movie < ApplicationRecord
    has_many :reviews
    has_many :reviews, dependent: :destroy
    validates :title, presence: true
    validates :title, uniqueness: true
end
