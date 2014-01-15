class Servey < ActiveRecord::Base
 belongs_to :customer
 belongs_to :tab
 belongs_to :user
 has_many :document_photos
 accepts_nested_attributes_for :document_photos#, reject_if: proc { |attributes| attributes['servey_id'].blank? }
end
