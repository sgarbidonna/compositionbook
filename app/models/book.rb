class Book < ApplicationRecord
    validates_length_of :title, :within => 1..20
    belongs_to :user
    has_many :notes, dependent: :destroy


end
