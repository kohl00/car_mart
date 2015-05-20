class Car < ActiveRecord::Base
	belongs_to :user
	has_one :charge
 	scope :sort_by_make, -> (make) { where('make = ?', make) }
 	scope :sort_by_kind, -> (kind) { where('kind = ?', kind) }
 	scope :sort_by_year, -> (year) { where('year = ?', year) }
 	
    
end
