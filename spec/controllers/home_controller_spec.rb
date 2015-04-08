require 'rails_helper'

describe HomeController do

  describe "GET #index" do
    it "returns a list of categories" do
      birds = create(:category, name: 'birds')
      dogs = create(:category, name: 'dogs')
      reptiles = create(:category, name: 'reptiles')
      cats = create(:category, name: 'cats')
      fish = create(:category, name: 'fish')
      get :index
      expect(assigns(:categories)).to match_array([birds, dogs, reptiles, cats, fish])
    end

    it "renders the index template" do
        get :index
        expect(response).to render_template :index
    end
  end

end
