class Car < ActiveRecord::Base
	belongs_to :user
	has_one :charge
	attachment :car_image
 	scope :sort_by_make, -> (make) { where('make = ?', make) }
 	scope :sort_by_kind, -> (kind) { where('kind = ?', kind) }
 	scope :sort_by_year, -> (year) { where('year = ?', year) }
 	scope :availabe_for_purchase, -> { where('arrived IS NULL OR arrived = (?)', false) }
    validates :price,       presence: true, numericality: { only_integer: true}
    validates :make,        presence: true
    validates :kind,        presence: true
    validates :description, presence: true
    validates :year,        presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1950, less_than_or_equal_to: Time.now.year }
    validates :car_image_id,   presence: true, allow_blank: true
end
