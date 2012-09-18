class Address < ActiveRecord::Base
  attr_accessible :streetno, :zip, :city, :country, :user_id, :phone1, :phonem,
                  :fname, :lname

  belongs_to :user

end
