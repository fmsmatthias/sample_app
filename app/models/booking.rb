class Booking < ActiveRecord::Base

attr_accessible :adate, :ddate, :nights, :people, :cleaning, :price, :downp

belongs_to :user


end
