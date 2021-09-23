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

  describe "#my_transpose" do 
    it "represents a matrix" do
      rows = [
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8]
      ]
      cols = cols = [
        [0, 3, 6],
        [1, 4, 7],
        [2, 5, 8]
      ]
      expect(rows.my_transpose).to eq(cols)
    end
  end

  describe "stock_picker" do 
    it "chooses the most profitable pair" do 
      stock_prices = [2, 7, 3, 1, 6]
      expect(stock_price.stock_picker).to eq([3, 4])
    end
  end
  
end