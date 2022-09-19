class Location < ActiveRecord::Base
    has_many :parcels
    has_many :users, through: :parcels
end