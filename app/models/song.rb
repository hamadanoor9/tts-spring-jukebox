class Song < ApplicationRecord
    validates :name, presence: true
    validates :duration, presence: true
    
    validates :name, uniqueness: true
end