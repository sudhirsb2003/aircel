class Servey < ActiveRecord::Base
 belongs_to :customer
 belongs_to :tab
 belongs_to :user
 has_many :document_photos
 accepts_nested_attributes_for :document_photos#, reject_if: proc { |attributes| attributes['servey_id'].blank? }

 before_save :set_image

  def set_image
    if self.signature_image.present?
      require "base64"
			encoded_image = signature_image.split(",")[1]
			decoded_image = Base64.decode64(encoded_image)
			File.open(Rails.root.to_s + "/public/#{self.customer.applicant_name}_signature.png", "wb") { |f| f.write(decoded_image) }
			self.signature_image = "#{self.customer.applicant_name}_signature.png"
    end
  end
end
