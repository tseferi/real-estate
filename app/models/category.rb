class Category < ApplicationRecord
    has_many :residences

    after_touch :log_when_residences_touched
  
    validates :title, :presence => true
  
    after_initialize do |category|
      puts 'You have initialized a new category'
    end
    
    after_find do |category|
      puts 'You have found a category'
    end
  
    private
      def log_when_residences_touched
        puts 'Residence was touched'
      end

end    
