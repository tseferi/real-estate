class Residence < ApplicationRecord
    belongs_to :category, touch: true
    after_touch do
      puts 'A residence was touched'
    end
     validate :word_count_is_more_than_25
  
    validates :title, length: {is: 5}
    # validates :description, length: {maximum: 25}
    validates :available, inclusion: [true, false]
    validates :unit, length: {is: 4}
    validates :rent, length: {is: 6 }
  

    #  validates :description, length: {
    #    :minimum => 25,
    #    :tokenizer => lambda { |str| str.scan(/\w+/) },  
    #    :too_short => "Description must be at least %{count} words"}
  
    validates_each :title, :description do |category, attr, value|
      category.errors.add(attr, 'must start with upper case')if
          value =~ /\ A [[:lower:]]/
    end
    
      def word_count_is_more_than_25
         errors.add(:residence, "Error") if description.split(" ").size < 25
     end

  #    validates :description, :length => {
  #    :minimum   => 25,
  #    :tokenizer => lambda { |str| str.split },
  #    :too_short => "must have at least %{count} words"
  #  }
  end

