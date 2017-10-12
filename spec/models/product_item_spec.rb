require 'rails_helper'

RSpec.describe ProductItem, type: :model do

  it { is_expected.to belong_to(:product) }
  it { is_expected.to belong_to(:cart) }
  it { is_expected.to belong_to(:order) }

end


