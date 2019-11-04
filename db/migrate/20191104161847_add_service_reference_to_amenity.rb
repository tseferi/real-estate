class AddServiceReferenceToAmenity < ActiveRecord::Migration[6.0]
  def change
    add_reference :amenities, :service, foreign_key: true
  end
end
