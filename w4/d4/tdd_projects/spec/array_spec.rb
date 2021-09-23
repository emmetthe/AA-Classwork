require 'array'

describe Array do

  describe "#my_uniq" do
    it "returns the unique elements" do
      expect([1, 2, 1, 3, 3].my_uniq).to eq ([1, 2, 3])
    end
  end

  describe "#two_sum" do
      # let(:array) {[-1, 0, 2, -2, 1]}
      # let(:array2) {[-1, 0, 2, -2, 1, 0]}
    it "finds all pairs that sum to zero" do 
      expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
    end

    it "does not count two zeros" do 
      expect([-1, 0, 2, -2, 1, 0].two_sum).to eq([[0, 4], [2, 3]])
    end
  end


  
end