class Work < ActiveRecord::Base

has_many :comments
belongs_to :artist
belongs_to :location

end
