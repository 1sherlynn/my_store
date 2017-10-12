
require 'rails_helper'

RSpec.describe PagesController, type: :controller do

    describe "GET index" do 
    it do 
      products = create_list(:product, 3) 

      get :index
      expect(assigns(:products)).to eq(products)
      expect(response).to render_template(:index)
    end
  end


    describe "GET shop" do 
    it do 
      products = create_list(:product, 3) 

      get :shop
      expect(assigns(:products)).to eq(products)
      expect(response).to render_template(:shop)
    end
  end
    

end


