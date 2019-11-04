class CreateResidences < ActiveRecord::Migration[6.0]
  def change
    create_table :residences do |t|
      t.string :title
      t.text :description
      t.boolean :available
      t.integer :unit
      t.float :rent

      t.timestamps
    end
  end
end
