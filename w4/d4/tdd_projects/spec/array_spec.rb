require 'array'

describe Array do

  describe "#my_uniq" do
    it "returns the unique elements" do
      expect([1, 2, 1, 3, 3].my_uniq).to eq ([1, 2, 3])
    end
  end

  it "finds all pairs that sum to zero" do 

  end
  
end