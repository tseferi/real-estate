require 'rails_helper'
require 'rspec/rails'

RSpec.describe Residence, :type => :model do
  it 'should require a title' do
      category = Category.create(:title => " ")
      category.valid?
      category.errors.should have_key(:title)
  end
end  