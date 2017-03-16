class Build < ApplicationRecord
	validates :name, presence: true, length: { minimum: 3 }
	validates :country, presence: true, length: { minimum: 2 }
	validates :style, presence: true, length: { minimum: 2 }
	validates :photo, presence: true, length: { minimum: 3 }
end
