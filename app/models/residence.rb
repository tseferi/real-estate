class Residence < ApplicationRecord
    belongs_to :category, touch: true
  after_touch do
    puts 'A residence was touched'
  end
  
  validate :word_count_is_more_than_25

  validates :title, length: {is: 20}
  validates :available, inclusion: [true, false]
  validates :unit, length: {is: 4}
  validates :rent, length: {is: 6 }

  before_save :capitalize_title
  def capitalize_title 
    self.title.capitalize!
  end

  def word_count_is_more_than_25
    errors.add(:residence, "Error") if description.split(" ").size < 25
  end

end
