class Book < ApplicationRecord
    validates_length_of :title, :within => 1..40
    belongs_to :user
    has_many :notes
end
