class CreateAmenities < ActiveRecord::Migration[6.0]
  def change
    create_table :amenities do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
