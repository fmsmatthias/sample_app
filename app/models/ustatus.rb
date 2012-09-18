class Ustatus < ActiveRecord::Base

attr_accessible :user_id, :status, :sdate

belongs_to :user

end
