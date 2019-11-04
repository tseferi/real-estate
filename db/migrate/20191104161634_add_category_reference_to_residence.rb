class AddCategoryReferenceToResidence < ActiveRecord::Migration[6.0]
  def change
    add_reference :residences, :category, foreign_key: true
  end
end
