class Villageworker < ActiveRecord::Base
validate :my_validation
def my_validation
if self.firstname == nil
errors.add(:support_type, "First Name must be there")
return false
end
end 
has_many :patients
belongs_to :location, :foreign_key => :location_id
end
