class User < ActiveRecord::Base
    has_many :parcels
    has_many :locations, through: :parcels
end