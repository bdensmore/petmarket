require 'rails_helper'

describe Category do

    it "is valid with a name" do
        expect(build(:category)).to be_valid
    end

    it "is invalid without a name" do
        category = build(:category, name: nil)
        expect(category).to_not be_valid

    end

end
