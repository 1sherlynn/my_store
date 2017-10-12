require 'rails_helper'

RSpec.describe Product, type: :model do

  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:description) }
  it { is_expected.to validate_numericality_of(:price) }
  it { is_expected.to validate_uniqueness_of(:title) }

  it { is_expected.to have_many(:product_items) }

end

